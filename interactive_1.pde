PImage img; 

void setup() {
  size(530, 590);
  img = loadImage("image.10.jpg");
  img.resize(530, 590);
}

void draw() {
  background(#F7F2E7);
  fill(#3E3621);
  noStroke();
  float tiles = mouseX/3;
  float tileSize = width/tiles;
  translate(tileSize/2,tileSize/2);
  for (int x = 0; x < tiles; x++) {
    for (int y = 0; y < tiles; y++) {
      color c = img.get(int(x*tileSize),int(y*tileSize));
      float size = map(brightness(c),0,255,tileSize,0);    
      ellipse(x*tileSize, y*tileSize, size, size);
    }
  }
}
