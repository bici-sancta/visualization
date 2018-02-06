
/* -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- */
/* global variables
/* -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- */

float rtt=0;
float rss=0;

/* ...    control time cycle displayed             */
int base_year = 2017;
int day_interval = 1;

/* ...    employee info variables            */
Table emp_hist;
int n_emp_max = 20000;
int n_rows, n_cols;

int[] days_since_hire = new int[n_emp_max];
int[] days_since_term = new int[n_emp_max];

float[] leaf_x = new float[n_emp_max];
float[] leaf_y = new float[n_emp_max];
color[] leaf_color = new color[n_emp_max];
float[] leaf_vel_x = new float[n_emp_max];
float[] leaf_vel_y = new float[n_emp_max];
float[] leaf_x_rip = new float[n_emp_max];
float[] leaf_y_rip = new float[n_emp_max];
int[] leaf_hire = new int[n_emp_max];
int[] leaf_term = new int[n_emp_max];
float[] gravity = new float[n_emp_max];
float begin_gravity = 0.1;
float wind = 0.0;
int red, grn, blu;

/* ...    use for creating employee hire/term timeline            */

int[] days_in_month = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
int iday = 0;
int total_cycle = 0;
int tenure;
//int tenure_array[] = new int[n_emp_max];
int[] date_hire = {0, 0, 0};
int[] date_term = {0, 0, 0};

/* ...    define zone in which to create leaves on tree        */

float x_lf_min = 370;
float x_lf_max = 1850;
float y_lf_min = 62;
float y_lf_max = 806;
float r_min, r_max, theta_min, theta_max;
float rrr, ttt, xxx, yyy;
color base_color = color(20, 80, 30);
color term_color = color(255, 207, 64);

/* ...    xc = 1250, x_rad = 1250, yc = 1420, y_rad = 175                */

float earth_ellipse_x_center = 1250;
float earth_ellipse_y_center = 1420;
float earth_ellipse_x_radius = 1250;
float earth_ellipse_y_radius = 175;


float global_scale_factor = 0.5;
 

// clock in corner
// everyday do accounting of how many leaves exist between date range, 42736 = jan 1

//particle stuff to make leaves

void setup()
{
    size(1250, 800);
    
//    noLoop();

/* -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- */
/* Load table -- file with time based employee history
/* -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- */

    emp_hist = loadTable("emp.csv", "header");
    
    println(emp_hist.getRowCount());   
    
    n_rows = emp_hist.getRowCount();
    n_cols = emp_hist.getColumnCount();
    
    for (int ir = 0; ir < n_rows; ir++)
    {
        for (int ic = 0; ic < n_cols; ic++)
        {
            println(ir, ic, emp_hist.getString(ir, ic));
        }
        
        rrr = sqrt(random(0,1));
        ttt = random(0, TWO_PI);
        
        xxx = rrr * cos(ttt);
        yyy = rrr * sin(ttt);
  
        leaf_x[ir] = 1100 + xxx * 750;
        leaf_y[ir] = 450 + yyy * 375;
        
        leaf_color[ir] = base_color;
        leaf_vel_x[ir] = 0;
        leaf_vel_y[ir] = 0;
        gravity[ir] = 0;
        leaf_hire[ir] = 0;
        leaf_term[ir] = 0;
    }
       
/* ... -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-    */
/* ...    parse dates, resolve into days_since_hire .. or _term
/* ... -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-    */

    for (int irr = 0; irr < n_rows; irr++)
    {        
 
/* ...    hire dates parsing - 2nd column in data table is hire dates     */

        date_hire = int(split(emp_hist.getString(irr, 1), "/"));
        
        if(date_hire.length > 2)
        {
            if(date_hire[2] >= base_year)
            {
                days_since_hire[irr] = (date_hire[2] - base_year) * 365;
                for (int im = 0; im < date_hire[0]; im++)
                {
                   days_since_hire[irr] += days_in_month[im];
                }
                days_since_hire[irr] += date_hire[1];
                
                tenure = int(((date_hire[2] - base_year) / 3) + 1);
                red =  50 + tenure * 20;
                grn = 250 - tenure * 20;
                blu = 100 + tenure * 20;  
                
                println(tenure, red, grn, blu);
                
                //tenure_array[irr] = tenure;
                
                leaf_color[irr] = color(red, grn, blu);

            } else {
                days_since_hire[irr] = 0;
                leaf_color[irr] = base_color;
            }
            leaf_hire[irr] = 1;
            if(days_since_hire[irr] > total_cycle){total_cycle = days_since_hire[irr];}
        }
        
/* ...    termination dates parsing ... 3rd column in data table is term dates  */  

        date_term = int(split(emp_hist.getString(irr, 2), "/"));
        
        if(date_term.length > 2)
        {
            leaf_color[irr] = term_color;
            
            if(date_term[2] >= base_year)
            {
                days_since_term[irr] = (date_term[2] - base_year) * 365;
                println(days_since_term[irr]);
                for (int im = 0; im < date_term[0]; im++)
                {
                   days_since_term[irr] += days_in_month[im];
                }
                println(days_since_term[irr]);
                days_since_term[irr] += date_term[1];
            }
            
            println(emp_hist.getString(irr, 2), days_since_term[irr], date_term[0], date_term[1], date_term[2]);
            
            gravity[irr] = begin_gravity;
            leaf_term[irr] = 1;
            
/* ...        determine final resting place ... random spot on ground        */

            rrr = sqrt(random(0,1));
            ttt = random(0, TWO_PI);
            xxx = rrr * cos(ttt);
            yyy = rrr * sin(ttt);
            
            leaf_x_rip[irr] = 1250 + xxx * 1250;
            leaf_y_rip[irr] = 1420 + yyy * 175;
        }
    }
    
    background(0);
}

int week, month, qtr, year;

void draw()
{
    scale(global_scale_factor);
    
    iday++;
    week = int(iday / 7);
    month = int(week * 4.333);
    qtr = 3 * month;
    year = 4 * qtr;
    
    println(iday, week, month, qtr, year);
    
    draw_background();
    draw_streak();
    draw_earth();
    draw_tree();
    draw_underleaf();    
    add_leaves();
    drop_leaves();
    draw_pond();
    draw_sun();
    
}