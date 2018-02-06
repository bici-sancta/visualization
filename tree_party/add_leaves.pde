


void add_leaves()
{
     
/* ... -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-    */
/* ...    start with day 0 ... one by one add appearing leaves
/* ... -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-    */
       
       for (int ileaf = 0; ileaf < n_rows; ileaf++)
       {
           if(leaf_hire[ileaf] == 1 && iday > days_since_hire[ileaf])
           {
               pushMatrix();
               translate(leaf_x[ileaf], leaf_y[ileaf]);
               fill(leaf_color[ileaf]);
               draw_leaf(leaf_color[ileaf]);
               popMatrix();
           }
       }
    
    
    if (iday > total_cycle)
    {
        iday = 0;
        initialize_leaves();
        background(100);
    }    // when cycle completed, restart

}