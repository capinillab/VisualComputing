PImage img;
PImage img_whiteBlack;
PImage img_invert;

void setup() {
  // Images must be in the "data" directory to load correctly
  img = loadImage("frutos-rojos.jpg");
  img_whiteBlack = createImage(img.width, img.height, RGB);
  size(480,320);
  frameRate(60);
}

void draw() {  
  image(img, 0, 0, width, height);
  int[] hist = new int[256];
  
  loadPixels();
  
  for (int i = 0; i < width*height; i++) {
    //Canales RGB de laimgen original
    float r = red(pixels[i]);
    float g = green(pixels[i]);
    float b = blue(pixels[i]);
    
    if (r > g || r > b)
    //Imagen a B/N promedia los 3 canales
    pixels[i] = color(r+g+b/3.0);
    else
    pixels[i] = color(r, g, b);

    int bright = int(brightness(int(r+g+b/3.0)));
    hist[bright]++;
  }
  
  updatePixels();
  
  // Find the largest value in the histogram
  int histMax = max(hist);

  stroke(#000080);
  // Draw half of the histogram (skip every second value)
  for (int i = 0; i < width; i += 2) {
    // Map i (from 0..img.width) to a location in the histogram (0..255)
    int which = int(map(i, 0, width, 0, 255));
    // Convert the histogram value to a location between the bottom and the top of the picture
    int y = int(map(hist[which], 0, histMax, height, 0));
    line(i, height, i, y);
  }
}
