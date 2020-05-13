__config() -> m( l('stay_loaded', 'true'));

__on_player_interacts_with_entity(player, entity, hand) -> (
	if(player~'gamemode'!='spectator',return());
	if (entity~'type' == 'player',
		for(range(41),
			item_tuple = inventory_get(entity, _);
			if(item_tuple,
				item = get(item_tuple,0);
				count = get(item_tuple,1);
				nbts = get(item_tuple,2);
				if(!nbts,nbts='{}');
				inventory_set(player, _, count, item, nbts),
				inventory_set(player, _, 0)
			)
		)
	)
)