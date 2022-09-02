/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Mask
 *
 * by Justin Liu
 *
 * Initiated: 4/16/22
 * Last updated: 4/17/22
 *
 * PROCESSING REFERENCES:
 * curveVertex() (https://processing.org/reference/curveVertex_.html)
 *
 * NOTE:
 * This project is interactive
 * To start, press the play button above and start speaking
 * The volume changes the vertical positions of the nose, mouth, and eyes
 *
 * */

boolean mic = true;

float easing = 0.4;      // The closer to 1 the less it eases. The closer to 0 the more it eases.
float volumeScalar = 50; // Use the UP and DOWN arrows to increase or decrease this while the
// program is running.

float reVolumeNose, eaVolumeNose;
float reVolumeMouth, eaVolumeMouth;
float reVolumeUpperMouth, eaVolumeUpperMouth;
float reVolumeEye, eaVolumeEye;

void testFace()
{
  // moves the nose
  reVolumeNose = map(v, 0, 1, 0, 2);
  eaVolumeNose += (reVolumeNose - eaVolumeNose) * easing;

  // moves the pink part of the mouth
  reVolumeMouth = map(v, 0, 1, 0, 35);
  eaVolumeMouth += (reVolumeMouth - eaVolumeMouth) * easing;

  // moves the upper part of the mouth
  reVolumeUpperMouth = map(v, 0, 1, 0, 2);
  eaVolumeUpperMouth += (reVolumeUpperMouth - eaVolumeUpperMouth) * easing;

  // moves the eyes
  reVolumeEye = map(v, 0, 1, 0, 1.5);
  eaVolumeEye += (reVolumeEye - eaVolumeEye) * easing;

  fill(80, 80, 80); // dark gray (fur color)
  stroke(0);        // black outline
  strokeWeight(3);  // thicker outlines

  // tail
  beginShape();
  curveVertex(280, 380);     // start top of tail
  curveVertex(310, 370);
  curveVertex(340, 350);
  curveVertex(350, 310);
  curveVertex(380, 290);
  curveVertex(390, 300);     // start bottom of tail
  curveVertex(362.5, 317.5);
  curveVertex(350, 360);
  curveVertex(320, 380);
  curveVertex(290, 390);
  curveVertex(270, 410);
  endShape(CLOSE);

  // left hind leg
  beginShape();
  curveVertex(190, 400);
  curveVertex(190, 400);
  curveVertex(180, 415);
  curveVertex(190, 430);
  curveVertex(210, 425);
  curveVertex(215, 410);
  curveVertex(205, 410);
  endShape();

  // right hind leg
  beginShape();
  curveVertex(310, 400);
  curveVertex(310, 400);
  curveVertex(320, 415);
  curveVertex(310, 430);
  curveVertex(290, 425);
  curveVertex(285, 410);
  curveVertex(295, 410);
  endShape();

  // body
  beginShape();
  curveVertex(250, 275);
  curveVertex(200, 285);
  curveVertex(185, 400);
  curveVertex(250, 420);
  curveVertex(315, 400);
  curveVertex(300, 285);
  curveVertex(250, 275);
  endShape(CLOSE);

  // left front leg
  beginShape();
  curveVertex(210, 350);
  curveVertex(210, 350);
  curveVertex(210, 430);
  curveVertex(240, 430);
  curveVertex(240, 350);
  curveVertex(240, 350);
  endShape();

  // right front leg
  beginShape();
  curveVertex(260, 350);
  curveVertex(260, 350);
  curveVertex(260, 430);
  curveVertex(290, 430);
  curveVertex(290, 350);
  curveVertex(290, 350);
  endShape();

  // outer left ear
  beginShape();
  curveVertex(230, 110);
  curveVertex(230, 110);
  curveVertex(155, 55);
  curveVertex(140, 150);
  curveVertex(140, 150);
  endShape();

  // outer right ear
  beginShape();
  curveVertex(270, 110);
  curveVertex(270, 110);
  curveVertex(345, 55);
  curveVertex(360, 150);
  curveVertex(360, 150);
  endShape();

  // inner left ear
  fill(255, 190, 255); // pink
  beginShape();
  curveVertex(145, 150);
  curveVertex(145, 150);
  curveVertex(155, 60);
  curveVertex(190, 130);
  curveVertex(190, 130);
  endShape();

  // inner right ear
  beginShape();
  curveVertex(355, 150);
  curveVertex(355, 150);
  curveVertex(345, 60);
  curveVertex(310, 130);
  curveVertex(310, 130);
  endShape();

  // face
  fill(80, 80, 80);
  ellipse(250, 200, 280, 200); // dark gray ellipse

  // mouth
  fill(255, 190, 255);
  arc(250, 245-eaVolumeUpperMouth, 20, eaVolumeMouth, 0, PI); // pink part of mouth
  fill(80, 80, 80);
  arc(225, 240-eaVolumeUpperMouth, 50, 25, 0, 3*PI/4);        // left upper mouth
  arc(275, 240-eaVolumeUpperMouth, 50, 25, PI/4, PI);         // right upper mouth

  // left eye
  fill(178, 249, 255);
  ellipse(190, 180-eaVolumeEye, 90, 75); // light blue iris
  fill(0);
  ellipse(190, 180-eaVolumeEye, 30, 65); // black pupil
  fill(255);
  circle(195, 160-eaVolumeEye, 10);      // small white circle

  // right eye
  fill(178, 249, 255);
  ellipse(310, 180-eaVolumeEye, 90, 75); // light blue iris
  fill(0);
  ellipse(310, 180-eaVolumeEye, 30, 65); // black pupil
  fill(255);
  circle(315, 160-eaVolumeEye, 10);      // small white circle

  // nose
  fill(255, 190, 255); // pink
  beginShape();
  curveVertex(250, 240-eaVolumeNose);
  curveVertex(250, 240-eaVolumeNose);
  curveVertex(240, 225-eaVolumeNose);
  curveVertex(260, 225-eaVolumeNose);
  curveVertex(250, 240-eaVolumeNose);
  curveVertex(250, 240-eaVolumeNose);
  endShape(CLOSE);

  // left whiskers
  strokeWeight(2); // thinner line
  line(150, 230, 95, 220);
  line(150, 240, 90, 240);
  line(150, 250, 95, 260);

  // right whiskers
  line(350, 230, 405, 220);
  line(350, 240, 410, 240);
  line(350, 250, 405, 260);
}
