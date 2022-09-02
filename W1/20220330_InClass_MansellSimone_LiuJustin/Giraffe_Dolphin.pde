/*
 * Course: ART 22  - Computer Programming for the Arts
 * Chimera/Hybrid
 *
 * by Simone Mansell & Justin Liu
 * 
 * Initiated: 3/30/22
 * Last updated: 3/30/22
 * 
 * CITATIONS: List all sources you used for this assignment.
 *
 * NOTE: This is where you write any notes you would like
 * to leave yourself or others using your code.
 * 
 * */

size(500, 500);

fill(#F8FF40);
// ears
rect(130, 10, 10, 50);
// head
ellipse(100, 70, 120, 70);
// neck
rect(120, 70, 40, 200);
// legs
rect(120, 300, 40, 180);
rect(350, 300, 40, 180);
// body
ellipse(220, 300, 250, 120);
arc(250, 300, 300, 120, 3*PI/2, 5*PI/2);
// tail
arc(425, 275, 100, 60, PI/2, 3*PI/2);
// fin
arc(300, 245, 125, 80, PI, 7*PI/4);
