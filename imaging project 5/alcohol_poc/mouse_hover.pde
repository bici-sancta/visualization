void mouse_hover()
{
  
  float one_scaled_w = one1.width*.4;
  float one_scaled_h = one1.height*.4;
  
  float two_scaled_w = two1.width*.4;
  float two_scaled_h = two1.height*.4;
  
  float nine_scaled_w = nine1.width*.4;
  float nine_scaled_h = nine1.height*.4;
  
  float ten_scaled_w = ten1.width*.4;
  float ten_scaled_h = ten1.height*.4;
  
  pushMatrix();
  //scale(.4);
  
  if((mouseX < (width/10) + one_scaled_w)&&(mouseX > width/10)&&(mouseY < (height/19) + one_scaled_h)&&(mouseY > height/19)){
    load_next_image1(img_count1);
            img_count1++;
    
  }
  else if((mouseX < (width*.48) + two_scaled_w)&&(mouseX > (width*.48))&&(mouseY < (height/19) + two_scaled_h)&&(mouseY > height/19)){
       load_next_image2(img_count2);
            img_count2++;
  }
  else if((mouseX < (width/10) + nine_scaled_w)&&(mouseX > width/10)&&(mouseY < (height*1/2) + nine_scaled_h)&&(mouseY > (height*1/2))){
         load_next_image(img_count);
            img_count++;
  }
  else if((mouseX < (width*.48) + ten_scaled_w)&&(mouseX > (width*.48))&&(mouseY < (height*1/2) + ten_scaled_h)&&(mouseY > (height*1/2))){
          load_next_image3(img_count3);
            img_count3++;
    
  }
  
  popMatrix();
  
}