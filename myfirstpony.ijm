/**
 * reproducible bioimage analysis workflow
 * Scientific Integrity course 2019-10-09
 * Henning Mühlenbeck
 */
run("Close All")
//load data
run("HeLa Cells (1.3M, 48-bit RGB)");

//split channels
run("Split Channels");

//set background black
run("Options...", "iterations=1 count=1 black");

//threshold MayEntropy
run("Auto Threshold", "method=MaxEntropy white");

//measurement settings
run("Set Measurements...", "area mean standard min centroid center shape integrated redirect=None decimal=3");

//analyze particels
run("Analyze Particles...", "size=10-Infinity show=Outlines display exclude clear include");

//save data
saveAs("Results", "/Users/henningmuhlenbeck/Documents/GitHub/test-workflow/myfirstpony_results.csv");