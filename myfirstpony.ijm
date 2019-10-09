/**
 * reproducible bioimage analysis workflow
 * Scientific Integrity course 2019-10-09
 * Henning Mühlenbeck
 */

//load data
run("HeLa Cells (1.3M, 48-bit RGB)");

//split channels
run("Split Channels");

//duplicate blue channel
//run("Duplicate...", "title=C3-hela-cells-1blue.tif");

//thresholding
run("Auto Threshold", "method=MaxEntropy white");

//select nucleus with wand
//doWand(293, 177);

//Measuring area
//run("Measure");
