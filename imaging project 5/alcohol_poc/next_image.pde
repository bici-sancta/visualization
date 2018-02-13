PImage srcN, srcNN;
PImage srcO, srcOO;
PImage srcT, srcTT;
PImage srcL, srcLL;


PImage[] dst = new PImage[200];
PImage dst9;

PImage[] ost = new PImage[200];
PImage ost9;

PImage[] tst = new PImage[200];
PImage tst9;

PImage[] lst = new PImage[200];
PImage lst9;

float halfW, halfH;

int img_count = 0;

int img_count1 = 0;

int img_count2 = 0;

int img_count3 = 0;

// NINE

void load_next_image(int img_count)
{
int imod = img_count % dst.length;

      image(dst[imod], 320, 150);
}

// ONE
void load_next_image1(int img_count1)
{
int imod = img_count1 % ost.length;

      image(ost[imod], 320, 150);
}

// TWO

void load_next_image2(int img_count2)
{
int imod = img_count2 % tst.length;

      image(tst[imod], 320, 150);
}

void load_next_image3(int img_count3)
{
int imod = img_count3 % lst.length;

      image(lst[imod], 320, 150);
}