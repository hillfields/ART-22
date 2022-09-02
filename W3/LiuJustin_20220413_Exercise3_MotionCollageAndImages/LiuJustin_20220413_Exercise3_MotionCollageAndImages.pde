/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Collage (Still)
 *
 * by Justin Liu
 *
 * Initiated: 4/13/22
 * Last updated: 4/13/22
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
 * 2. get() (https://processing.org/reference/get_.html)
 *
 * TASK:
 * Every second, a collage made up of a flower at each corner (i.e. 4 total flowers) is created
 * The same flower is not repeated in each frame
 *
 * */

// initialize variable for every flower image
PImage begonia, chrysanthemum, dahlia, daisy, dandelion, hibiscus, hydrangea, lily, rose, sunflower;

// create array to store flower images
PImage[] flowers = new PImage[10];

// stores images/cropped images
PImage img, crop;

// having these prevents repeated images in the same frame
int randomNum1, randomNum2, randomNum3, randomNum4;

void setup() {
  size(600, 600); // 600 x 600 pixels
  frameRate(1);   // 1 frame/sec

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
}

// for every frame, create a collage made up of 4 flowers
// the 4 flowers in each frame are different from each other
void draw() {
  drawTopLeft();
  drawTopRight();
  drawBottomLeft();
  drawBottomRight();
  resetRandomNums();
}

// chooses a random image and crops the top left
void drawTopLeft() {
  randomNum1 = int(random(0, 10));         // random integer between 0-9
  img = flowers[randomNum1];               // get image
  crop = img.get(0, 0, width/2, height/2); // gets top left section of image
  image(crop, 0, 0);                       // draws section in window
}

// chooses a random image and crops the top right
void drawTopRight() {
  randomNum2 = int(random(0, 10));               // random integer between 0-9

  // ensures that the 2nd image is not the same as the 1st image
  if (randomNum2 != randomNum1) {
    img = flowers[randomNum2];                   // get image
    crop = img.get(width/2, 0, width, height/2); // gets top right section of image
    image(crop, width/2, 0);                     // draws section in window
  } else {
    drawTopRight();
  }
}

// chooses a random image and crops the bottom left
void drawBottomLeft() {
  randomNum3 = int(random(0, 10)); // random integer between 0-9

  // ensures that the 3rd image is not the same as the first 2 images
  if (randomNum3 != randomNum1 & randomNum3 != randomNum2) {
    img = flowers[randomNum3];                    // gets image
    crop = img.get(0, height/2, width/2, height); // gets bottom left section of image
    image(crop, 0, height/2);                     // draws section in window
  } else {
    drawBottomLeft();
  }
}

// chooses a random image and crops the bottom left
void drawBottomRight() {
  randomNum4 = int(random(0, 10));

  // ensures that the 4th image is not the same as the first 3 images
  if (randomNum4 != randomNum1 & randomNum4 != randomNum2 & randomNum4 != randomNum3) {
    img = flowers[randomNum4];                        // gets image
    crop = img.get(width/2, height/2, width, height); // gets bottom right section of image
    image(crop, width/2, height/2);                   // draws section in window
  } else {
    drawBottomRight();
  }
}

// resets image numbers
void resetRandomNums() {
  randomNum1 = -1;
  randomNum2 = -1;
  randomNum3 = -1;
  randomNum4 = -1;
}
