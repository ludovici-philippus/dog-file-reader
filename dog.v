import os

fn main(){
	if os.args.len < 2{
		println("You need to specify the file name!")
		return
	}

	filename := os.args[1]
	data := os.read_file(filename) or {
		println("File can't be read!")
		return
	}
	println(data)
}
