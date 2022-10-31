//Written by Ciarán Nijman.

class Border
{
  void draw()
  {
    //Drawing borders.
    rectMode(CORNER);
    noFill();
    stroke(#b252a1);
    strokeWeight(borderStroke);
    rect(borderX, borderY, borderW, borderH);
  }
}
