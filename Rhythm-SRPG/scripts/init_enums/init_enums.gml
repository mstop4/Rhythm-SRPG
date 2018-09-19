enum unitState {
	ready,
	moved,
	attacked
}

enum battleState {
	waiting,
	battling,
	over
}

enum mapMode {
	pan,
	move,
	moveWait,
	action,
	chooseTarget,
	battleForecast,
	actionWait
}

enum team {
	player,
	enemy,
	ally
}