/*
 * Course: ART 22  - Computer Programming for the Arts
 * Assignment: Week 4 In Class Activity
 *
 * by Yanwen Chen, Justin Liu
 *
 * Initiated: 2022/04/20
 * Last updated: 2022/04/20
 *
 * CITATIONS: List all sources you used for this assignment.
 * Pepper (https://www.flickr.com/photos/25802865@N08/39024089424/in/photolist-22sqEd1-KhR72H-xA98Wj-WRBJnV-Lp9Uv6-Kz4LD5-GVVUJN-25QxhyQ-23cVE5R-Wd8EoL-PX9ucu-LDfFT9-c4dj69-RmQ2dZ-HnpLK7-Lw4JVr-Q8ahDa-EnvFAE-WxoStW-RCHW22-RBRb3T-W92rrQ-QMtypw-t3K9WE-XRxLtN-RrV4vF-Mq1kdH-WrX7mY-Rimovo-zso4TL-VwfTYS-WrXAns-T8zKBg-R7g4J5-L3BARK-BrNNTu-UiyfWN-y23UQ4-QMtAxu-RTFhA9-QoZnJK-toza2Q-LnMtfE-Vv5m4K-KBqdh3-2cvQEgx-SHrPyB-SCr7cQ-2apExAQ-zmkBFL)
 * Carrot (https://www.flickr.com/photos/theselc/43198993791/in/photolist-28Pm8PM-28Poe9a-82cdWH-WRtE9u-2bVHfse-2f2mXVs-HygHht-27HUMdY-8LCPaD-28PoeiP-8LFTMo-28PodJT-RCEu89-tBpXsd-Sw2wL-S9HR8A-S9HRcd-8LFTU9-uRvpSu-WtHs88-JvNb7s-XbiBes-zjknAq-yEprJy-RADJHx-uykW2U-DWmTYf-LBWJeM-TFon9o-rXnxBR-Cad6Yk-28JZuao-SwAqv6-Cc2y8g-JvNbbW-23DSpL-Ji7Xwh-Yv5YHV-Qsnuog-Lnu3mL-rLYi4K-ZFC1uS-KeuV72-H1f2rJ-ukTmW3-VoK4yS-FFow3i-rhy5hW-xgtWEj-satgMX)
 * Portola (https://www.dining.ucsb.edu/dining-commons/portola-dining-commons)
 * 
 * NOTE: This is where you write any notes you would like
 * to leave yourself or others using your code.
 *
 * Try to make the food fall down randomly, and let the panda get the food
 *
 * */

enum Scene {
  BEACH, SURFING, EATING, FALLING, VOMITING
}

Scene scene = Scene.BEACH;
PImage beach, pepper, portola, carrot;

void setup() {
  size(500, 500);
  background(255);
  textSize(24);
  fill(0);
  
  beach = loadImage("../beach.jpeg");
  pepper = loadImage("../Pepper.jpg");
  portola = loadImage("../portola.jpeg");
  carrot = loadImage("../carrot.jpg");
}

void draw() {
  switch (scene) {
  case BEACH:
    image(beach, 0, 0);
    text("Babe, here is the beach.\n Look how beautiful it is <33! \n U wanna go surfing or eating?", 50, 50);

    text("Surfing", 150, 450);
    text("Eating", 300, 450);
    break;
    // image of beach
    // Two people on a date
    // Do you want to go surfing or eating?
  case SURFING:
    image(beach, 0, 0);
    text("Good choice, let's go surfing!", 50, 50);
    text("Next", 150, 450);
    drawSurfboard(255, 0, 78);
    fill(0);
    break;
    // Let's go surfing!
    // A big wave
    // Both of them fall
  case EATING:
    image(portola, -100, -100);
    fill(255);
    text("Good choice, let's go eating at Portola!", 50, 50);
    text("Next", 150, 450);
    break;
    // go to Portola dining hall
    // red pepper and carrots
  case FALLING:
    image(beach, 0, 0);
    text("Oh no, such a huge wave! we both fall...", 50, 50);
    text("Restart", 150, 450);
    break;
    // lose their teeth
    // that was cool
  case VOMITING:
    image(portola, -100, -100);
    fill(255);
    text("Oh man, the pepper and carrots \n are terrible as hell, that we both vomiting...", 50, 50);
    text("Restart", 150, 450);
    image(pepper, 100, 100);
    image(carrot, 300, 100);
    fill(0);
    break;
    // so disgusting, so bad that they threw up
  }
}

void drawSurfboard(float r, float g, float b) {
  fill(r, g, b);
  arc(width/2, height/2, 50, 200, 3*PI/4, 9*PI/4, CHORD);
}

void mouseClicked() {
  switch (scene) {
  case BEACH:
    if (mouseX < width/2) { // click left side of screen
      scene = Scene.SURFING;
    } else { // click right side of screen
      scene = Scene.EATING;
    }
    break;
  case SURFING:
    scene = scene.FALLING;
    break;
  case EATING:
    scene = scene.VOMITING;
    break;
  case FALLING:
    scene = scene.BEACH;
    break;
  case VOMITING:
    scene = scene.BEACH;
    break;
  }
}
