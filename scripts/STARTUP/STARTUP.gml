gml_pragma("global","STARTUP()");

enum col_ {
	red,		
	neonGreen,
	blue,
	orange,
	magenta,
	yellow,
	lightBlue,
	pink,
	green,
	purple,
}

global.color_ = [];
global.color_[col_.red] = $0000ff;
global.color_[col_.neonGreen] = $00ff31;
global.color_[col_.blue] = $ff9a00;
global.color_[col_.orange] = $007cff;
global.color_[col_.magenta] = $ff00ff;
global.color_[col_.yellow] = $00f7ff;
global.color_[col_.lightBlue] = $ffc74b;
global.color_[col_.pink] = $8000ff;
global.color_[col_.green] = $399827;
global.color_[col_.purple] = $ff0074;

enum dir {
	right,
	up,
	left,
	down
}

global.components = [];
global.components[dir.right] = [1,0];
global.components[dir.up] = [0,-1];
global.components[dir.left] = [-1,0];
global.components[dir.down] = [0,1];
