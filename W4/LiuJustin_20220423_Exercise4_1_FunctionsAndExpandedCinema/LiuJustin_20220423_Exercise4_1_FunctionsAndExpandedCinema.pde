/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Collage (Animated)
 *
 * by Justin Liu
 *
 * Initiated: 4/19/22
 * Last updated: 4/23/22
 *
 * PHOTO CREDITS (permission to modify images was granted under license, changes to these images have been made in this assignment):
 * 1. Begonia (by Lex McKee, https://www.flickr.com/photos/lex-photographic/48378709931/in/photolist-2gH4wYt-2mfCxCd-2kQpBee-2jP7MS7-8drLu7-2mcESof-2jLtuJA-2jj7g46-2jj648U-2jj63Fr-2jj35AG-a4NUrX-n5JhES-2isJst3-2jeeEWb-2jd4s6z-2iW2i8u-27XS1V6-ABKxhf-2hfbGEK-2gBHerL-8kt5j4-vJfw4q-3tqdL-YhFxxj-xNXRLA-onX2Gm-5pXGxt-2mwJK-4vZYKd-6csEBz-iE5pq-28qtLvr-osFKqE-3bxj9G-6iehNQ-f9Sp6-a9Pm29-hHqux-f9Sp8-J4hC9-g9SKH-ehqK59-fjasqN-BExJta-4Wpcka-56nRT-6aYSjh-kgeqV-5Tw8qa)
 * 2. Chrysanthemum (by Dendroica cerulea, https://www.flickr.com/photos/dendroica/5094998129/in/photolist-8Lecrk-283oTkk-4bPLg9-jNrJ8n-AG3tpj-ZBPftR-aZDJsp-q5shJK-qoM2p-bwEnYg-4d28eW-citXNQ-aETu1o-As27iZ-8VbPJW-ft2Y2x-CfXrSH-pDqyX8-jC1dN1-jC15yA-oZ7R5g-jBYbwt-wVQfJE-FQ7AhF-7DbdBp-B2tauJ-Pv6qjQ-2cYMEHq-21Dkdj6-CitZVC-AAHTRE-GhEaRk-2ahDTRj-hy6U44-C1VxnA-TdNEZp-drzpJg-duFDKk-dxTxL4-aoww6B-2eU1ECT-TSoWhL-pDunih-jBwGK7-ont3ov-jBYVn9-onrMfV-pDrppD-pFA1Ao-oDXN26)
 * 3. Dahlia (by Pauline Rosenberg, https://www.flickr.com/photos/29467326@N06/4006182394/in/photolist-771Jsf-771XCU-76XKav-WTW4jp-MoAKFp-MoANme-L94Juf-771L77-XHCisd-74JZ58-v1cxAB-EwJzFD-29LbUtk-MoAJgR-oynTVD-6LNKzj-MoAJUK-39VyXY-cWFBn-cV14Ff-ai7ufk-8PKPC7-5eR4WR-76WNJr-g7diME-ekMTEj-2dNg7jc-YtZXWZ-9WQqmU-9DgaXP-XMJW42-cV14QU-cV14vN-2QVrH7-259yoUV-dpPS3f-cckgWh-cV14nA-8J1Awu-cWFCz-771JUU-2124ARP-8MEsYf-8J1AG5-6wU1T6-TpZS7W-ReeNU-ai7unz-YDMppE-dWDuK)
 * 4. Daisy (by Christina, https://www.flickr.com/photos/christinamatheson/175753611/in/photolist-gwMqF-uX6B62-86jn3e-bDKxS7-4XjAJX-eeakeN-6yHNHh-Ld5Xt-a4DcSQ-evLgXe-4VZwdG-54Fgoq-6oQY15-aryBDm-vFBU44-4RZWiG-6v2r4P-furf1-6oLXjD-VsKEgJ-FYgPu-7Pc9c-6oLMKP-axUw4V-6n6QnA-2vdmb-f4Tapd-f4EZck-7XtMoX-6oR1C1-nux613-5hTcSf-atzgS2-4W7JCr-2oPEk-HDvdje-22Lejob-2Ppkc-9X2oEx-aibZ7n-f4VcXA-fSQDe-9AYf26-Tzd6iZ-6CY8m3-f4Vb95-aYQ3DZ-2sTN6-3YqAhc-6v9QbF)
 * 5. Dandelion (by Nabil Molinari, https://www.flickr.com/photos/nabil_plane_spotter/18258291795/in/photolist-tPqw3p-fvs7M6-2Fbg8-6gdwrQ-MZxoxL-8XXDfB-qcuG6U-wNP6jc-Zt7Qyu-n57scZ-29D93cb-6vsU7X-26VUXto-n2PKcM-Riepph-5siPVi-dvnw8a-5ZVp2X-qeADN8-4nTntg-ShxR5-33UxtK-JL4GMZ-pXkqbT-e3QZc3-pXcWvq-8Y9BRz-5ZZBfJ-nAofJ8-Met7S-qcuAp3-6GBuR6-sjUCi6-8bP8ya-K4Z6eB-5789Q5-2hpgHb-296EL3E-AwbPh-p73KsJ-ypLtJP-6HuPyi-phMBNY-r24xaZ-aaHuDn-oiNkGj-9BrkUh-ou9qE9-pXkiFD-ehTCK8)
 * 6. Hibiscus (by Aldo Cavini Benedetti, https://www.flickr.com/photos/aldoaldoz/1092008989/in/photolist-2EuQec-3SKL3-8CcfJG-SQMC7w-LDauJs-dv9USE-23pSHr-Lr1Cc-9X9Cg2-6GfcX7-4KnzfP-oK9gDm-ejGQTN-rB2M5Q-fbgcVj-7165Nb-a8QKFT-4ChHMd-8K5bG1-4q2bd-8XxEoE-pPcby-wyMkS-2osRiU-2KqDBa-a9TxTv-cQchQm-6G7o7z-esVCL-bRreCr-daWu3u-7s7BE-7rJ43p-5B4gFi-T18UMJ-6mXEsY-HwP11-4vCnyL-5eMbTs-SCgPM-85CxMe-6GbseU-6hPYaj-4UArS-LRFkSY-5baduk-3XN2A-8XuBZH-6Gx3oG-6G7nER)
 * 7. Hydrangea (by Secretlondon, https://commons.wikimedia.org/wiki/File:Hydrangea_pink_flower_in_london.jpg)
 * 8. Lily (by Patrick Cleere, https://www.flickr.com/photos/patrickcleere/14481789624/in/photolist-o4GXw1-a2r37A-2Nuogh-3wmen-4sQAtf-Q4TMg-fJJAk-6qFKXk-6qFKQK-343W1H-9M2fEj-3exczr-cm8MUQ-daAbG-4sQAWY-VcaDaP-4NUNQ-6DNkwP-3QQe3G-6Wv4Z-LovtP-o4GWXf-nURPep-5idZ25-jEL-mxSt3V-8eh6Zy-4ERbS-NqjF6-svLJP-5gjLsW-4sLwcz-4XBxw8-fBZuJ-iHGQA-MEnQB-9u2cg-jmV8Fh-PQU6U-2vtu51-R6YWEU-pfU1Pd-Crdi9-px7KKz-2VvnV-JMN4mM-4Cn9q-FUx42m-nAACVa-XvjNzy)
 * 9. Rose (by Marcu Ioachim, https://www.flickr.com/photos/ioachimphotos/36253901421/in/photolist-XeCHPT-nHAS23-7hTQSg-4oqqBd-6YELgp-Pew3NC-69e2bZ-Jn2oKB-4v7q5r-UnRhs4-6x5DR7-bCQhNm-s9Z4rK-7bLgJm-eN9oiG-4W4bJx-tbgdgm-3zzvLB-4v7q4g-4W8sgs-4W8qfs-6mvGBJ-4v7q7H-6YJP5Q-4v7q1F-4vbuME-8nThNE-3U8q4-4vbuWE-4W4cc2-4v7q8z-4vbuKd-2W16cm-839Hdz-h6qs-NVskzN-hn2tR-o1Qh57-4vbuSU-4vbuJY-6Ab46J-32zXSu-4vbuVJ-J2D9RL-utrTcQ-4vbuHY-mxWpTc-4vbuNA-ngNzhp-4vbuR5)
 * 10. Sunflower (by Henry Elliss, https://www.flickr.com/photos/henweb/232007370/in/photolist-mv6H5-2dwXkgN-aazMM7-2Nt1WD-6YKuZf-8kJUY6-oxvAsm-PRh8HR-XScWXN-a6KzKX-VH7Nfe-arieLS-75Gvy1-6Sdw9F-ZNPDdC-focADH-qVVDe4-8x42YK-cq2k9y-8HWG6d-6auxaM-fVwjQj-5jqnqW-MsApo4-72uzCk-bmGydx-QKLiH9-aFqfax-9BhG35-cG3STj-aqG3mG-cUNU3h-e6bnUa-a7Ewx6-ijvbi-5jRc4J-dpeZjp-d9yNpb-MwLmvh-Vjpiwq-eSnn9Q-VDS7sA-K3cZNS-fKSVE4-fLauCC-a4AiJ8-9phpga-a3xSGN-MstrCz-nsZZE)
 *
 * PROCESSING REFERENCES:
 * 1. Arrays (https://processing.org/tutorials/arrays)
 * 2. beginContour() (https://processing.org/reference/PShape_beginContour_.html)
 * 3. Timer (http://learningprocessing.com/examples/chp10/example-10-04-timer)
 * 4. Generating Non-Repeating Numbers (https://forum.processing.org/two/discussion/27692/non-repeating-numbers)
 * 5. Linear, Random, and Circular Motion (I built on the code on this assignment's webpage - https://github.com/masoodkamandy/Creative-Coding-Course-with-Processing/blob/main/4_Functions_and_Expanded_Cinema/2_EXERCISE.md)
 *
 * WHAT IT DOES:
 * I wanted to simulate a flower blooming using the flower images from last week's exercise
 * This exercise uses linear, random, and circular motion:
 *   Linear motion - the images used for "petals" expand from the center to the window's sides, following straight lines
 *   Random motion - the images used for the flower's "center" are randomly positioned
 *   Circular motion - the images used here orbit the flower's "center"
 *
 * */

// initialize variable for each flower image
PImage begonia, chrysanthemum, dahlia, daisy, dandelion, hibiscus, hydrangea, lily, rose, sunflower;

// create array to store flower images
PImage[] flowers = new PImage[10];

// initialize variables for timer (Credit: http://learningprocessing.com/examples/chp10/example-10-04-timer)
int savedTime;
float totalTime = 100;

// initialize hole shape (prevents the middle of the window from being cleared)
PShape hole;

// list of integers to generate random images each time the program is run
IntList randomNums = randomIntGen(0, 9, 4);

// variables for circular motion
int constant = 300;
float angle = 0.05;
int scalar = 100;
float speed = 0.075;

void setup() {
  size(600, 600, P2D); // 600 x 600 pixels, P2D allows hole shape to work
  imageMode(CENTER);   // reference images' position by their center coordinates

  // load flower images
  begonia = loadImage("flowers/begonia.png");
  chrysanthemum = loadImage("flowers/chrysanthemum.jpg");
  dahlia = loadImage("flowers/dahlia.jpg");
  daisy = loadImage("flowers/daisy.jpg");
  dandelion = loadImage("flowers/dandelion.jpg");
  hibiscus = loadImage("flowers/hibiscus.jpg");
  hydrangea = loadImage("flowers/hydrangea.jpeg");
  lily = loadImage("flowers/lily.jpg");
  rose = loadImage("flowers/rose.jpg");
  sunflower = loadImage("flowers/sunflower.jpg");

  // add images to the array flowers
  flowers[0] = begonia;
  flowers[1] = chrysanthemum;
  flowers[2] = dahlia;
  flowers[3] = daisy;
  flowers[4] = dandelion;
  flowers[5] = hibiscus;
  flowers[6] = hydrangea;
  flowers[7] = lily;
  flowers[8] = rose;
  flowers[9] = sunflower;

  // start timer
  savedTime = millis();

  // set background and fill (used for the hole shape) to black
  background(0);
  fill(0);

  // rectangle (that covers the whole screen) with the middle cut out
  createHole();
}

void draw() {
  shape(hole);                           // draw rectangle with hole in the middle

  int passedTime = millis() - savedTime; // calculate how much time has passed

  if (passedTime > totalTime) {          // every 100 ms (what totalTime is equal to)
    randomMotion(randomNums.get(0));     // an image is randomly positioned in the center
    savedTime = millis();                // reset timer
  }

  circularMotion(randomNums.get(1));                  // 2 same images orbit the center
  linearMotion(randomNums.get(2), randomNums.get(3)); // from the center - 4 same images move vertically/horizontally, 4 same images move diagonally
}

// from integers between start and end, return a list of non-repeating integers with length sampleSize
// Credit: https://forum.processing.org/two/discussion/27692/non-repeating-numbers
IntList randomIntGen(int start, int end, int sampleSize) {
  IntList randomNums = IntList.fromRange(start, end+1); // integers from start to end

  randomNums.shuffle(this);      // shuffle list
  randomNums.resize(sampleSize); // keep the specified number of elements

  return randomNums;             // return random numbers list
}

// create rectangle with hole in the middle
void createHole() {
  // begin shape
  hole = createShape();
  hole.beginShape();

  // exterior shape (the whole window)
  hole.vertex(0, height);
  hole.vertex(width, height);
  hole.vertex(width, 0);
  hole.vertex(0, 0);

  // interior shape (the hole in the middle)
  hole.beginContour();
  hole.vertex(250, 300, 10, 10);
  hole.vertex(300 - 25*sqrt(2), 300 - 25*sqrt(2), 10, 10);
  hole.vertex(300, 250, 10, 10);
  hole.vertex(300 + 25*sqrt(2), 300 - 25*sqrt(2), 10, 10);
  hole.vertex(350, 300, 10, 10);
  hole.vertex(300 + 25*sqrt(2), 300 + 25*sqrt(2), 10, 10);
  hole.vertex(300, 350, 10, 10);
  hole.vertex(300 - 25*sqrt(2), 300 + 25*sqrt(2), 10, 10);
  hole.endContour();

  // end shape
  hole.endShape(CLOSE);
}

// random motion around the middle of the flower
void randomMotion(int imageNum) {
  // initialize coordinates
  float randomX1 = width;  // x-coord for 1st image
  float randomY1 = height; // y-coord for 1st image

  // ensure that the generated coordinates are within a circle centered in the window
  while (sqrt(sq(randomX1 - width/2) + sq(randomY1 - height/2)) > 25) {
    randomX1 = random(275, 325);
    randomY1 = random(275, 325);
  }

  // load and resize image
  PImage img = flowers[imageNum];
  img.resize(30, 30);

  // randomly position image within the circle
  image(img, randomX1, randomY1);
}

// circular motion around the middle of the flower
void circularMotion(int imageNum) {
  // coordinates for circle movement
  float x = constant + sin(angle) * scalar;
  float y = constant + cos(angle) * scalar;

  // load and resize image
  PImage img = flowers[imageNum];
  img.resize(60, 60);

  // make images move in a circle
  image(img, x, y);
  image(img, 600-x, 600-y);

  // update angle
  angle = angle + speed;
}

// linear motion of the petals
void linearMotion(int imageNum1, int imageNum2) {
  // determines the speed of the linear motion
  float count = (1.5 * millis() / 12.5) % 150;

  // load and resize 1st image
  PImage img1 = flowers[imageNum1];
  img1.resize(65, 65);

  // vertical and horizontal lines that the 1st image follows
  image(img1, 300, 200-count); // up
  image(img1, 300, 400+count); // down
  image(img1, 200-count, 300); // left
  image(img1, 400+count, 300); // right

  // load and resize 2nd image
  PImage img2 = flowers[imageNum2];
  img2.resize(65, 65);

  // determine diagonal speed (calculated manually using geometry)
  // this makes it look like the petals are expanding along a circle
  float diagonalSpeed = (-50*sqrt(2) + 255*sqrt(2)/2) / 150;

  // diagonal lines that the 2nd image follows
  image(img2, 300 - 50*sqrt(2) - diagonalSpeed*count, 300 - 50*sqrt(2) - diagonalSpeed*count); // upper left
  image(img2, 300 - 50*sqrt(2) - diagonalSpeed*count, 300 + 50*sqrt(2) + diagonalSpeed*count); // lower left
  image(img2, 300 + 50*sqrt(2) + diagonalSpeed*count, 300 - 50*sqrt(2) - diagonalSpeed*count); // upper right
  image(img2, 300 + 50*sqrt(2) + diagonalSpeed*count, 300 + 50*sqrt(2) + diagonalSpeed*count); // lower right
}
