void draw_grass()
{
 fill(146, 90, 61);
 
 /* -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- */
/* cedre */
/* -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- */

  int n_feuille = 400;
  float x_cdr_min = 0.001;
  float x_cdr_max = 10;
  float y_cdr_min = -0.1;
  float y_cdr_max = 0.19;
  float len_cdr_base = 0.5 * 2500;

  int rge_cdr = 30;
  int vrt_cdr = 25;
  int ble_cdr = 10;
  
  float x_cdr[] = {0,0,0,0};
  float y_cdr[] = {0,0,0,0};
  float x_cdr_now[] = {0,0,0,0};
  float y_cdr_now[] = {0,0,0,0};

  for (int i_cdr = 0; i_cdr < n_feuille; i_cdr++)
  {
      y_cdr[1] = random(y_cdr_min, y_cdr_max);
      
      x_cdr_max = (0.45 * (1 - y_cdr[1]) * (1 - y_cdr[1])) - 0.25 * (1 - y_cdr[1]) + 0.2;
      x_cdr[1] = random(x_cdr_min, x_cdr_max);
      
      x_cdr[2] = x_cdr[1] + random(-0.03, 0.06);
      y_cdr[2] = y_cdr[1] + random(0, 0.3);
      
      x_cdr[0] = x_cdr[1] + random(-0.2, 0.2);
      y_cdr[0] = y_cdr[1] + random(-0.05, 0.05);

      x_cdr[3] = x_cdr[2] + random(-0.2, 0.2);
      y_cdr[3] = y_cdr[2] + random(-0.05, 0.05);
      
      for (int j_cdr = 0; j_cdr < 4; j_cdr++)
      {
        x_cdr_now[j_cdr] = x_cdr[j_cdr] * 2500;
        y_cdr_now[j_cdr] = (1 - y_cdr[j_cdr]) * 1600;
      }

      stroke(0);
      strokeWeight(int(random(1,3)));
      int r_cdr = int(random(rge_cdr - 0.30 * rge_cdr, rge_cdr + 0.30 * rge_cdr));
      int v_cdr = int(random(vrt_cdr - 0.30 * vrt_cdr, vrt_cdr + 0.30 * vrt_cdr));
      int b_cdr = int(random(ble_cdr - 0.30 * ble_cdr, ble_cdr + 0.30 * ble_cdr));

      fill(r_cdr, v_cdr, b_cdr);
    
      curve(x_cdr_now[0], y_cdr_now[0],
      x_cdr_now[1], y_cdr_now[1],
      x_cdr_now[2], y_cdr_now[2],
      x_cdr_now[3], y_cdr_now[3]); 
  }

}