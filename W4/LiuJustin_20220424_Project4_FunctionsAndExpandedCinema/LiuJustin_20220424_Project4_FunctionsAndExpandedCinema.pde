/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Expanded Cinema Part 1
 *
 * by Justin Liu
 *
 * Initiated: 4/23/22
 * Last updated: 4/24/22
 *
 * PHOTO CREDITS (permission to modify images was granted under license, changes to these images have been made in this assignment):
 * 1. Sun (for TITLE scene, https://commons.wikimedia.org/wiki/File:Draw_sunny.png)
 * 2. Blinds (for AWAKE scene, https://www.creativity103.com/collections/Details/slides/closed_blind.html)
 * 3. Café (for OUTSIDE scene, https://www.flickr.com/photos/matt_gibson/22620309837/in/photolist-AsT132-5g4DDN-tqqpV-eeXVTW-vE1SDf-iyxY8-pv4u3N-nwWby-ez4VEi-6cA3Yq-4aiTx3-nA5Zp3-5nD1N4-o2grQT-PM1VDk-4ha1St-iNMHm-swak6-6jn6St-5LrdSu-FqUc1H-8aXiAf-qfQnST-khtV1-oux1PJ-E2zEq-KPDNiT-97wfye-6cjbPN-aTZ1Rc-9sX9ku-8XFQL-aqxrXU-aujDba-6cKUtM-2KEh47-hNkMV8-8HLdXL-3ZYHw-khp1E-4eqiYF-xQRh9F-cgQhkN-jEV7T6-m9BaLt-8BssB9-kNUg-buveJc-ocYJ3q-b3aewB)
 * 4. Living Room (for INSIDE scene, https://www.flickr.com/photos/thegoodwinfamily/2352716848/in/photolist-4zUhKA-4zQ3ED-4x2ndm-4x2oHA-ymT7q-4wXd6Z-4zUi6U-4zUiJS-8kMff5-qb57j-4zQ3ag-9vUWFx-yZPEu-CcrQo-4rLexS-6VBvX9-bCWtr-6VxrNP-249dRzK-8YWwK-23zN1Dt-b6nbSx-4zQ2Hc-7uQct4-EVzBLS-976KV8-bCNXCe-z1qkW-ynhtd-54YpBz-4a9rnQ-5DcTSi-86uMED-5oeNPU-8qqkD1-4acdfz-8qqkG9-nTajq-411wx3-4Wro5-2kGR5uM-oTeozu-9wh6g7-2m4ZiA8-2kx3eNX-2imSksp-2m99PTB-2mKP8p7-8YWwJ-2kYBDSD)
 * 5. Coffee (for GREET scene, https://www.flickr.com/photos/kendrak/19985797010/in/photolist-ws5ra5-dEK8v5-ak3bTV-5GEGNZ-pYjwFL-9ftSCr-2cszjb-vMEFLj-aFjRGG-wJG4Sc-YvFraW-vMEGtw-wJGcRt-wKbQ6T-8FiYe-4xwtoi-9aPSv-9DGNDx-poDmxP-boNWVz-ojtKQ-4BN1Db-6jQmFn-21V7iJV-gzmzvn-4GHoeH-5GK3tN-8VbCCx-4DcfQJ-9a4PqA-49dB3K-dRUGpz-a36PuP-vMPtdz-vMPmFX-4Szzoy-7sMynd-7Jge3Z-55qGxf-4MmhD6-ary9W6-7muoMV-5f2rJy-5uZ6s8-dS1imb-8XpvRt-a94qfZ-mRqii-nSfe14-j5WeEo)
 * 6. Front Door (for IGNORE scene, https://www.flickr.com/photos/171174909@N03/48980989866/in/photolist-2hChnPh-2iRvzDK-zicaWU-2mucQfk-zzVP7D-yHUGX8-2ncWtNh-HSU5N3-2dZ6hEM-2245GyY-2icQ7Vh-PrkDSY-2kvLbPz-XkGz7N-2mCEZ4F-2iF2aqV-2k8tWkx-L7Me5s-2jXLax9-Jqo6kT-2keriVb-2mbR6vB-2iwRzxM-2iEWWkW-2hUFLUq-2kNtrP1-2mjTZBJ-Jot3ud-24N2zke-2i1NP25-2kCVrqn-2kKxHQ3-G8tLBX-GM3uE-8ss1x-2ndWD3j-Y8F2f7-2mBQpJP-7jNQ6s-3esD4K-bA9UWe-2gyLwmV-7k9FG7-2jRunBk-2kMFZaK-2jg37zu-RZV4ik-2mtxFU3-SzURqs-GkvYsD)
 * 7. Jewelry (for MEMORIES scene, https://www.flickr.com/photos/photovolt/6247664916/in/photolist-aw5V7C-5HtMmf-5HpsY2-8miQcs-8mfFWZ-E7U7H-8mfFJZ-8j4Zht-8miQnf-8mfFPc-7zbZUV-8j8euJ-8mfFmc-4C3cJE-8mfFCF-8mfFjc-8mfFAT-9rX1WV-8auT88-9q4cbY-8j4ZL6-8ayaxA-8ayaA9-8ayaCh-8auT9M-8auT5X-8auVtZ-8aWPM7-8mfFzv-9rX25H-8ayaqh-9q4c6s-fS33nW-8auThr-ayqQYf-8j4Zg6-8miQ9S-7ra1w7-EdbQ9f-8ayaFu-E7U6a-mbTpps-CuqA9-8j8eAm-8auVhc-soLJUW-g3NUxA-ayqQML-9hVhXh-ayqPA9)
 * 8. Piano (for PIANO scene, https://www.flickr.com/photos/akeu/6186144485/in/photolist-aqDBex-5CP4dD-7tYiZd-5hRbt-brTNZ-5cxndY-26LMed-8sg9p4-bSD14-84gabx-cJu1Wj-8YGfWH-7Nmyw-4pEA1x-XkFS-CbZyd-oTCFoM-mTpp-azSRLt-26LJjw-EGBVc-81HUwx-CbZFa-bW4e5-MEkBUW-bjg1Lz-5LeFj-2KJPHj-2auu3F-kxqd-4YSr9N-698mXq-fpQv-6Yos4E-aKZMMV-c3RyjN-84g4zg-adfs7K-8g9Yw1-9YQ5M3-8CsWnC-6n54NJ-f54M4V-84gcpT-GE3vC-mBYFS-2DyH4a-7jaXWw-BFgJyV-q11p)
 * 9. Sunset (for HOME scene, https://www.flickr.com/photos/labbradolci/4107469238/in/photolist-7fXRv9-9GfRgA-pv1S39-iRtCkq-pe1awD-fKkmjD-iJMUSj-8GkvHw-222mNUq-FK8pT2-naVZbH-8WPhEa-Csg76J-asKesD-pkRAdJ-dXk1GM-rypHLX-pNCxRy-pkSqUt-numFWP-pkQHED-eiNwJV-tLb9Qu-bfnuBz-2b96KGC-SH1uwp-RcGRNG-bmNh2y-dKFEES-wkBvby-nzCPJw-egXnz6-prcoQG-efXFVn-aqmunq-26cjVxB-bhcy6T-g4coPF-JhggWz-dXfJrV-8ZCZD4-iJKY94-YVdLkL-rL5wwR-NCxPnd-oi6usw-Ee2HVF-s1riqr-98RPaX-aVpLSH)
 * 10. Knife (for SAD scene, https://www.flickr.com/photos/cguy/4129869832/in/photolist-7hWEqh-NuXRdh-NuXSp5-rBX9G7-aMTXjn-rUq3bW-8z8FAV-3WndV-8Z8J4x-rUq5NE-rHzJqb-9tUUsU-5bUPaa-922bV8-925jdd-922bQv-8z6W2r-925jfs-j9pM5A-j9rTjC-LpcuEK-6dLNJt-7icNzb-w8vhSE-j9s2SE-kCr6fL-6MqfJN-wA2tBi-dKKP9-scqoG2-p7v8Cu-8GmkUK-nGm2fG-4sYKMe-eXDGtA-8MviF6-dKKbn-dGFnJF-mztkFe-Ed1BwC-8CWH1J-qAQ9so-8GmmV2-8zbHkG-b5RGWk-CVXtKe-RbUxYD-8za4h7-8z8BXP-86nvys)
 * 11. Sheet Music (for CALM scene, https://www.flickr.com/photos/rakel78/3469175275/in/photolist-6hyqWP-2mug57f-i9aks-2dzTyPS-2jd2VZZ-aKZLK8-2iTr9VS-GrbzRT-2jo3Hph-5G3Sdz-PSVaTo-5znSy-2mu7dWK-GrbzTg-2kL7sus-2mZijZ4-2mQ211L-2aXE1Zi-86y1PG-2dzTyKd-8RDMRL-oNooq9-2kwKNPL-2kSkJ6H-55pafs-QCi9b-2m75J4-f21eQL-9wZxXk-2mwzqoq-3ZMi1-GF788k-87BKSz-2m7f9-HquL8k-2k9hCo6-D84za-3ammYY-3TtRM-4FD3HE-9xVScC-2m75Hv-EeCXew-2mwzqnJ-8DQFNK-3SetZq-dzaXxq-dQy7Hw-6D8Kz1-2jZsDQq)
 * 12. Bed (for BED scene, https://www.flickr.com/photos/samueledangelo/29875849842/in/photolist-Mw2xim-s7JNCS-CZeJvD-uBkjzd-uRAS23-XgpyMG-uRAyF1-vu7kCX-rsvfZP-rsiWoo-vu7kEv-tX5hR4-uTVaFT-AALk6N-tWTjBS-uTqBmA-uUatFP-G6A1em-vtV2gN-YF9TbE-vYqUE8-A8H9Kt-spjaRB-22NP4rH-rsiVt7-vu7kDt-HfXGz2-uTUpxT-vu7kEk-vBRYCS-ZtacZr-vBRYFh-vtgdf9-AHaY3s-NwxWto-vtgdg1-NV84P4-vESrpD-KdEPVB-vESrrT-vESrrn-XT5C3x-YkcoiP-vESrse-vFgQkQ-vGvBpi-uX5vET-vGvBqk-uX5vFK-vvPgdV)
 * 13. Scribble (for DEATH scene, https://pixabay.com/illustrations/scribble-scribbles-drawing-doodle-4682995/)
 *
 * STORY:
 * The title of this story is "Days".
 * The character has lost their partner.
 * The user determines the choices the character makes to get through the day.
 *
 * */

// contains all of the scenes
enum Scene {
  TITLE, AWAKE, OUTSIDE, INSIDE, // 1st set of choices
    GREET, IGNORE, MEMORIES, PIANO, // 2nd set of choices
    HOME, SAD, CALM, // 3rd set of choices
    BED, DEATH // possible endings
}

Scene scene = Scene.TITLE; // start at title screen

void setup() {
  size(600, 600);            // 600 by 600 pixels
  textAlign(CENTER, CENTER); // center text
  textSize(24);              // set text size
  background(0);             // black background
}

void draw() {
  switch(scene) {
  case TITLE: // title screen
    background(0);
    text("DAYS", 0, 0, width, height);
    text("Start", 0, 150, width, height);
    break;
  case AWAKE: // character wakes up
    background(0);
    text("You wake up sometime in the afternoon. Your partner has been dead for a while now, and your day starts off empty.", 0, 0, width, height);
    text("Go outside", -100, 150, width, height);
    text("Stay inside", 100, 150, width, height);
    break;
  case OUTSIDE: // character goes to a café
    background(0);
    text("You decide to head to a café nearby. After getting your order, you notice a friend of yours sitting at a table.", 0, 0, width, height);
    text("Greet your friend", -125, 150, width, height);
    text("Ignore your friend", 125, 150, width, height);
    break;
  case INSIDE: // character stays in the house
    background(0);
    text("You look around for something to do, but you keep getting reminded of your partner.", 0, 0, width, height);
    text("Look through their things", -125, 150, width, height);
    text("Play on their piano", 125, 150, width, height);
    break;
  case GREET: // character greets friend at café
    background(0);
    text("You strike up a conversation. You release some of your pent-up grief.", 0, 0, width, height);
    text("Next", 0, 100, width, height);
    break;
  case IGNORE: // character ignores friend at café and heads home, feeling lonely
    background(0);
    text("You head home. You feel that no one would be able to understand what you’re going through.", 0, 0, width, height);
    text("Next", 0, 100, width, height);
    break;
  case MEMORIES: // character looks through partner's things
    background(0);
    text("Every item of theirs makes you miss them even more.", 0, 0, width, height);
    text("Next", 0, 100, width, height);
    break;
  case PIANO: // character plays piano for the whole day
    background(0);
    text("You spend the whole day plinking away on the piano.", 0, 0, width, height);
    text("Next", 0, 100, width, height);
    break;
  case HOME: // character returns home from the café, feeling better
    background(0);
    text("You head home, feeling better.", 0, 0, width, height);
    text("Next", 0, 100, width, height);
    break;
  case SAD: // character becomes sad and sees knife
    background(0);
    text("You begin to feel even sadder. You think about preparing something to eat to get rid of that feeling, but the knife catches your eye.", 0, 0, width, height);
    text("Return to your senses", -150, 150, width, height);
    text("Point the knife at yourself", 150, 150, width, height);
    break;
  case CALM: // character calms down from playing piano
    background(0);
    text("Playing the piano calms you down.", 0, 0, width, height);
    text("Next", 0, 100, width, height);
    break;
  case BED: // character sleeps
    background(0);
    text("You've managed to get through another day. You can get through this. Time for bed.", 0, 0, width, height);
    text("Return", 0, 100, width, height);
    break;
  case DEATH: // character dies
    background(0);
    text("You died. You're in a better place now.", 0, 0, width, height);
    text("Return", 0, 100, width, height);
    break;
  }
}

// changes scenes when mouse is clicked
void mouseClicked() {
  switch(scene) {
  case TITLE: // leads to AWAKE
    scene = Scene.AWAKE;
    break;
  case AWAKE: // leads to OUTSIDE (left) or INSIDE (right)
    if (mouseX < width/2) {
      scene = Scene.OUTSIDE;
    } else {
      scene = Scene.INSIDE;
    }
    break;
  case OUTSIDE: // leads to GREET (left) or IGNORE (right)
    if (mouseX < width/2) {
      scene = Scene.GREET;
    } else {
      scene = Scene.IGNORE;
    }
    break;
  case INSIDE: // leads to MEMORIES (left) or PIANO (right)
    if (mouseX < width/2) {
      scene = Scene.MEMORIES;
    } else {
      scene = Scene.PIANO;
    }
    break;
  case GREET: // leads to HOME
    scene = scene.HOME;
    break;
  case IGNORE: // leads to SAD
    scene = scene.SAD;
    break;
  case MEMORIES: // leads to SAD
    scene = scene.SAD;
    break;
  case PIANO: // leads to CALM
    scene = scene.CALM;
    break;
  case HOME: // leads to BED
    scene = scene.BED;
    break;
  case SAD: // leads to BED (left) or DEATH (right)
    if (mouseX < width/2) {
      scene = scene.BED;
    } else {
      scene = scene.DEATH;
    }
    break;
  case CALM: // leads to BED
    scene = scene.BED;
    break;
  case BED: // leads back to TITLE
    scene = scene.TITLE;
    break;
  case DEATH: // leads back to TITLE
    scene = scene.TITLE;
    break;
  }
}
