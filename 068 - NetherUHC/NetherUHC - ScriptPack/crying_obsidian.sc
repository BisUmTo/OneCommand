__config() -> m( l('stay_loaded', 'true'));

__on_player_clicks_block(player, block, face) -> (
	if (block != 'crying_obsidian', return());
	posizione = pos(block);
	//particle('minecraft:dripping_water', pos(block)+l(0.5,0,0.5), 1, 0.25);
	x = get(posizione,0);
	y = get(posizione,1)-1;
	z = get(posizione,2);
	while(y >= 0 && air(block(x,y,z)),5,
		y = y-1;
	);
	calderone = block(x,y,z);
	if (calderone != 'cauldron', return());
	livello = number(property(calderone,'level'));
	if (livello==3, return());
	particle('minecraft:dripping_water', pos(block)+l(0.5,0,0.5), 1, 0.25);
	if (
		!rand(25),
		set(pos(calderone),calderone,'level',livello+1);
		sound('minecraft:block.bubble_column.bubble_pop', pos(calderone))
	)
)