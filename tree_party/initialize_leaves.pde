

void initialize_leaves()
{
    for (int ir = 0; ir < n_rows; ir++)
    {        
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
            if(date_hire[2] > base_year)
            {
                days_since_hire[irr] = (date_hire[2] - base_year) * 365;
                for (int im = 0; im < date_hire[0]; im++)
                {
                   days_since_hire[irr] += days_in_month[im];
                }
                days_since_hire[irr] += date_hire[0];
                
                tenure = int(((date_hire[2] - base_year) / 3) + 1);
                red =  50 + tenure * 20;
                grn = 250 - tenure * 20;
                blu = 100 + tenure * 20;  
                
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
            
            if(date_term[2] > base_year)
            {
                days_since_term[irr] = (date_term[2] - base_year) * 365;
                for (int im = 0; im < date_term[0]; im++)
                {
                   days_since_term[irr] += days_in_month[im];
                }
                days_since_term[irr] += date_term[0];
            }
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