



void drop_leaves()
{
int wind_boolean = 0;
float wind_min = -1;
float wind_max = 2;
float wind_vel;
int v;

/* ...    to wind or not to wind ?             */

    v = int(random(0,9));
    if (v == 0) {v = 1;} else {v = 0;}
    wind_vel = v * random(wind_min, wind_max);
  
/* ...    cycle thru each leaf            */

    for (int ileaf = 0; ileaf < n_rows; ileaf++)
    {
        if(leaf_term[ileaf] == 1 && iday > days_since_term[ileaf])
        {
            fill(leaf_color[ileaf]);
            draw_leaf(leaf_color[ileaf]);
           
            leaf_vel_y[ileaf] += gravity[ileaf];
            leaf_y[ileaf] += leaf_vel_y[ileaf];
           
            leaf_vel_x[ileaf] += wind_vel;
            leaf_x[ileaf] += leaf_vel_x[ileaf];
           
            check_ground_contact(ileaf);
        }
    }
    
/* -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- */
/* ...    iday = day count
/* -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- */

//    iday += day_interval;

/*
    if (iday > total_cycle)
    {
        iday = 0;
//        background(100);
    }    // when cycle completed, restart

*/

}


void check_ground_contact(int i)
{
    
/* ...    check if current location is within ellipse that defines ground zone    */

float x_ratio, y_ratio, test_value;

    x_ratio = ((leaf_x[i] - earth_ellipse_x_center) * (leaf_x[i] - earth_ellipse_x_center))/(earth_ellipse_x_radius * earth_ellipse_x_radius);
    y_ratio = ((leaf_y[i] - earth_ellipse_y_center) * (leaf_y[i] - earth_ellipse_y_center))/(earth_ellipse_y_radius * earth_ellipse_y_radius);
    test_value = x_ratio + y_ratio;
    
    if (test_value <= 1 && leaf_y[i] > leaf_y_rip[i])
    {
        leaf_vel_y[i] = 0;
        gravity[i] = 0;
        leaf_vel_x[i] = 0;
    }
}