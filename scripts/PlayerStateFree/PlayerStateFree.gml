hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

PlayerCollision();

var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection
	sprite_index = spriterun;
}
else sprite_index = spriteidle;
if (_oldSprite != sprite_index) localFrame = 0;

PlayerAnimateSprite();

//change state
if (keyActivate)
{
	state = PlayerStateRoll;
	moveDistanceRemaining = distanceRoll
}	