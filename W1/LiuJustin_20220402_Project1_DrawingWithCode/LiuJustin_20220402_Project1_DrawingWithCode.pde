/*
 * Course: ART 22  - Computer Programming for the Arts
 * Assignment: 1_DrawingWithCode_Project
 *
 * by Justin Liu
 *
 * Initiated: 3/30/22
 * Last updated: 4/2/22
 *
 * CITATIONS:
 * Planetarische Folklore by Victor Vasarely (https://www.mutualart.com/Artwork/4-Works--Planetarische-Folklore/FE143F7408A5B3AF)
 *
 * NOTE:
 * In the code, the shapes' vertices start from the left or upper left and go clockwise
 * Shapes used: rect(), triangle(), quad(), square(), circle()
 *
 * */

// initialize settings
size(477, 500);            // set image size
background(217, 219, 221); // white background
noStroke();                // turn off strokes

// gray background underneath the shapes helps mix colors better
fill(90);
rect(8, 7, 462, 485); // gray background

// 1st row
fill(33, 36, 39);
triangle(8, 7, 140, 7, 75, 77);    // black triangle
fill(64, 98, 154);
triangle(140, 7, 272, 7, 205, 77); // light blue triangle
fill(56, 88, 200);
triangle(272, 7, 402, 7, 338, 77); // blue triangle
fill(75, 73, 122);
triangle(402, 7, 470, 7, 470, 77); // purple triangle

// 2nd row
fill(106, 46, 48);
triangle(8, 7, 75, 77, 8, 147);            // red triangle
fill(51, 84, 196);
triangle(205, 77, 140, 7, 75, 77);         // blue top triangle
fill(136, 177, 213);
triangle(75, 77, 205, 77, 141, 146);       // baby blue bottom triangle
fill(36, 41, 44);
triangle(205, 77, 272, 7, 338, 77);        // black top triangle
fill(190, 81, 59);
triangle(205, 77, 338, 77, 272, 146);      // orange bottom triangle
fill(33, 31, 40);
quad(338, 77, 402, 7, 470, 77, 404, 146);  // black square
fill(115, 68, 128);
quad(363, 77, 404, 32, 445, 77, 404, 119); // purple square in black square

// 3rd row
fill(50, 82, 195);
quad(8, 147, 75, 77, 141, 146, 74, 214);     // blue square
fill(34, 37, 40);
quad(141, 146, 205, 77, 272, 146, 207, 215); // black square
fill(48, 49, 86);
square(173, 113, 67);                        // dark purple square in black square
fill(111, 162, 108);
quad(272, 146, 338, 77, 404, 146, 338, 215); // light green square
fill(131, 174, 209);
circle(338, 146, 64);                        // baby blue circle in light green square
fill(60, 92, 147);
triangle(404, 146, 470, 77, 470, 215);       // light blue triangle

// 4th row
fill(38, 39, 84);
triangle(8, 147, 74, 214, 8, 285);            // dark purple triangle
fill(58, 92, 148);
quad(74, 214, 141, 146, 207, 215, 142, 285);  // light blue square
fill(108, 159, 104);
quad(100, 215, 140, 175, 180, 215, 140, 257); // green square in light blue square
fill(109, 66, 127);
quad(207, 215, 272, 146, 338, 215, 272, 285); // purple square
fill(188, 78, 61);
quad(216, 223, 264, 172, 329, 208, 281, 260); // orange quadrilateral in purple square
fill(50, 83, 196);
triangle(338, 215, 404, 146, 404, 285);       // blue triangle
fill(23, 26, 30);
triangle(404, 146, 470, 215, 404, 285);       // black triangle

// 5th row
fill(101, 60, 122);
triangle(8, 285, 74, 214, 74, 353);           // purple triangle
fill(29, 32, 35);
triangle(74, 214, 142, 285, 74, 353);         // black triangle
fill(148, 49, 55);
quad(142, 285, 207, 215, 272, 285, 207, 353); // red square
fill(45, 44, 86);
quad(166, 293, 199, 224, 248, 277, 215, 343); // dark purple quadrilateral in red square
fill(128, 43, 53);
quad(272, 285, 338, 215, 404, 285, 338, 353); // dark red square
fill(62, 91, 149);
quad(297, 292, 331, 225, 378, 275, 345, 344); // light blue quadrilateral in dark red square
fill(140, 156, 187);
triangle(404, 285, 470, 215, 470, 353);       // gray triangle

// 6th row
fill(47, 80, 192);
triangle(8, 285, 74, 353, 8, 422);            // blue triangle
fill(146, 162, 189);
quad(74, 353, 142, 285, 207, 353, 140, 422);  // gray square
fill(222, 202, 90);
circle(141, 354, 64);                         // yellow circle in gray square
fill(50, 81, 195);
quad(207, 353, 272, 285, 338, 353, 272, 422); // blue square
fill(123, 49, 53);
quad(217, 360, 264, 311, 328, 345, 280, 397); // red quadrilateral in blue square
fill(66, 84, 66);
quad(338, 353, 404, 285, 470, 353, 404, 422); // green square
fill(50, 82, 195);
circle(404, 354, 94);                         // blue circle in green square

// 7th row
fill(61, 91, 145);
quad(8, 422, 74, 353, 140, 422, 74, 492);     // light blue square
fill(91, 135, 90);
rect(41, 388, 66, 69);                        // green square in blue square
fill(136, 177, 211);
quad(140, 422, 207, 353, 272, 422, 206, 492); // baby blue square
fill(63, 97, 153);
triangle(150, 430, 214, 363, 237, 455);       // light blue triangle in baby blue square
fill(30, 33, 37);
triangle(272, 422, 338, 353, 404, 422);       // black top triangle
fill(95, 139, 93);
triangle(272, 422, 404, 422, 338, 492);       // green triangle
fill(37, 38, 82);
triangle(404, 422, 470, 353, 470, 492);       // dark purple triangle

// 8th row
fill(50, 51, 90);
triangle(8, 422, 74, 492, 8, 492);      // dark purple triangle
fill(37, 40, 44);
triangle(74, 492, 140, 422, 206, 492);  // black triangle
fill(53, 85, 198);
triangle(206, 492, 272, 422, 338, 492); // blue triangle
fill(122, 54, 56);
triangle(338, 492, 404, 422, 470, 492); // red triangle

// save output image
save("project01.png");
