// Binarize all images with a given algorithm and save

// User inputs
///////////////////////////////////

input_path = "/Users/johngodlee/Desktop/input/";

output_path = "/Users/johngodlee/Desktop/output/";

///////////////////////////////////
// END user inputs

list = getFileList(input_path);

for (i=0; i<(list.length); i++) {

	open(""+input_path+list[i]+"");

	file_name = getInfo("image.filename");

	run("8-bit");

	setAutoThreshold("Default");
	setOption("BlackBackground", false);
	run("Convert to Mask");

	saveAs("Jpeg", ""+output_path+file_name+"");

	image_id = getImageID();
	selectImage(image_id);
	close();
}