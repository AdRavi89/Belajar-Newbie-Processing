import g4p_controls.*;
GCustomSlider sliderku;
 
void setup()
{
  size(600, 400);
  sliderku = new GCustomSlider(this, 100, 300, 400, 50, "red_yellow18px");
  sliderku.setShowDecor(false, true, true, true);
  sliderku.setNbrTicks(5);
  sliderku.setLimits(0, 0, 255);
  
}
 
void draw() {
  background(#E1F022);
  ellipse(300, 160, sliderku.getValueI(), sliderku.getValueI());
  
}
 
void handleSliderEvents(GSlider slider) {
  println("integer value:" + slider.getValueI() + " float value:" + slider.getValueF());
}
