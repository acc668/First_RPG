// step event runs every frame of the game

// variables to store what key you are pressing
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
upKey = keyboard_check(vk_up);
downKey = keyboard_check(vk_down);

// this checks what direction the player is going
xSpeed = (rightKey - leftKey) * moveSpeed;
ySpeed = (downKey - upKey) * moveSpeed;

// collisions code
if place_meeting(x + xSpeed, y, obj_wall) == true
{
	xSpeed = 0;
}
if place_meeting(x, y + ySpeed, obj_wall) == true
{
	ySpeed = 0;
}


// sets player object x and y position to the speed for movement
x += xSpeed;
y += ySpeed;

// set sprite
// checks to see if you arent moving up or down
// to set animation properly
if ySpeed == 0
{
	if xSpeed > 0 {face = RIGHT};
	if xSpeed < 0 {face = LEFT};
}

if xSpeed > 0 && face == LEFT {face = RIGHT};
if xSpeed < 0 && face == RIGHT {face = LEFT};

if xSpeed == 0
{
	if ySpeed > 0 {face = DOWN};
	if ySpeed < 0 {face = UP};
}
if ySpeed > 0 && face == UP {face = DOWN};
if ySpeed < 0 && face == DOWN {face = UP};
sprite_index = sprite[face];


// animate
if xSpeed == 0 && ySpeed == 0
{
	image_index = 0;
}