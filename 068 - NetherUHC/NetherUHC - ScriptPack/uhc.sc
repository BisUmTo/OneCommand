__config() -> m( l('stay_loaded', 'true'),l('scope', 'global'));

__command() -> __uhc();

start() -> (global_tick = 0; global_eventi_futuri = copy(global_eventi); print(global_eventi));
stop() -> (global_tick = null);
speed(v) -> (global_speed = number(v));

global_titolo = 'Live UHC 2 - Nether Edition';

global_eventi = m(
	l(0, l(
			'gamemode survival @a[gamemode=adventure]',
			'fill -512 68 -544 -516 72 -548 minecraft:air destroy', // teca rossa
			'fill -1090 74 -774 -1094 70 -770 minecraft:air destroy', // teca giallo
			'fill -1962 49 -783 -1958 45 -787 minecraft:air destroy', // teca blu
			'fill -2343 39 -1363 -2339 43 -1367 minecraft:air destroy', // teca lime
			'fill -1622 74 -2341 -1618 70 -2337 minecraft:air destroy', // teca rosa
			'fill -1022 41 -1736 -1018 37 -1732 minecraft:air destroy', // teca arancio
			'fill -165 89 -893 -169 93 -889 minecraft:air destroy', // teca azzurra
			'fill -1094 70 380 -1098 66 376 minecraft:air destroy', // teca viola
			'fill -1669 67 -500 -1665 71 -504 minecraft:air destroy', // teca grigia
			'execute in overworld run worldborder set 5000',
			'effect give @a[gamemode=survival] minecraft:saturation 10 9 true', // saturazione
			'effect give @a[gamemode=survival] minecraft:regeneration 10 9 true', // rigenerazione
			'effect give @a[gamemode=survival] minecraft:resistance 10 9 true', // resistance
			'effect give @a[gamemode=survival] minecraft:health_boost 1000000 4 true', // vita raddoppiata
			'scoreboard players reset * death', // resetta le morti
			'scoreboard objectives add death deathCount', // counter delle morti
			'execute as @e[type=minecraft:piglin] run tp @s ~ ~-1000 ~', // uccide i piglin
			'bossbar add netheruhc:bossbar ""', // crea bossbar
			'bossbar set netheruhc:bossbar color white', // colore bianco
			'bossbar set netheruhc:bossbar players @a', // la rende visibile a tutti
			'bossbar set netheruhc:bossbar max 5000', // la rende visibile a tutti
			'title @a title {"text":"Buona fortuna","color":"yellow"}', // titolo di inizio
			'gamerule naturalRegeneration false', // disabilita rigenerazione
			'gamerule doMobSpawning false', // disabilita spawn dei mob
			'difficulty peaceful')), // difficulty pacifica
			
	l(1,	'difficulty normal'), // difficulty normale
	
	l(9*60, 'tellraw @a ["",{"text":"["},{"text":"Server","color":"red"},{"text":"]"},{"text":" Fra ","color":"yellow"},{"text":"1 minuto","color":"aqua"},{"text":" inizieranno a ","color":"yellow"},{"text":"SPAWNARE I MOB","color":"aqua"},{"text":"!","color":"yellow"}]'), // 1 minuto allo spawn dei mob
	
	l(10*60, l( // 10 minuti
			'tellraw @a ["",{"text":"["},{"text":"Server","color":"red"},{"text":"]"},{"text":" I ","color":"yellow"},{"text":"MOB","color":"aqua"},{"text":" iniziano a ","color":"yellow"},{"text":"SPAWNARE","color":"aqua"},{"text":"!","color":"yellow"}]', // messaggio spawn dei mob
			'gamerule doMobSpawning true')), // abilitare spawn dei mob

	l(1*60*60 + 30*60, l( // 1 ora e 30 minuti
			'tellraw @a ["",{"text":"["},{"text":"Server","color":"red"},{"text":"]"},{"text":" Il ","color":"yellow"},{"text":"bordo","color":"aqua"},{"text":" inizia a ","color":"yellow"},{"text":"stringere","color":"aqua"},{"text":", dirigiti verso il centro (0,0)","color":"yellow"}]', // messaggio chiusura
			'bossbar set netheruhc:bossbar color yellow', // bossbar gialla
			'execute in overworld run worldborder set 700 2400')), // chiusura mondo
			
	l(2*60*60 + 10*60, l( // 2 ore e 10 minuti
			'tellraw @a ["",{"text":"["},{"text":"Server","color":"red"},{"text":"]"},{"text":" Il ","color":"yellow"},{"text":"bordo","color":"aqua"},{"text":" ha finito di ","color":"yellow"},{"text":"stringere","color":"aqua"},{"text":"! Buona fortuna ai superstiti!","color":"yellow"}]', // messaggio deathmatch
			'bossbar set netheruhc:bossbar color red',// bossbar rossa
			'gamerule doMobSpawning false', // disabilita spawn dei mob
			'execute as @e[type=minecraft:piglin] run tp @s ~ ~-1000 ~', // uccide i piglin
			'difficulty peaceful')), // difficulty pacifica
			
	l(2*60*60 + 10*60 + 1, 'difficulty normal') // difficulty normale 
);

global_tick = null; // tick dall'inizio della UHC, null se non è ancora iniziata
global_speed = 1; // velocità di gioco, 1 di default
global_eventi_futuri = null;

win() -> (
	run('fill -4 27 20 1 34 20 minecraft:nether_portal keep');
	run('fill 3 26 20 -3 31 20 minecraft:nether_portal keep');
	run('fill -1 35 20 0 37 20 minecraft:nether_portal keep');
);

__uhc() -> (
	print(global_titolo);
	print(floor(global_tick/20))
);

__on_tick_nether() -> (
	if(
		global_tick == null,
		return()
	);
	giocatori_vivi = 0;
	for(
		player('all'),
		if(
			_~'gamemode' == 'survival',
			giocatori_vivi = giocatori_vivi + 1
		)
	);
	if(
		giocatori_vivi > 2,
		__break_portals(),
		win()
	);
	if(
		floor(global_tick%20) == 0 || global_speed > 1,
		seconds = floor(global_tick/20);
		run(
			str(
				'bossbar set netheruhc:bossbar name "%01d:%02d:%02d"', // aggiorna timer bossbar
				floor(global_tick / (20 * 60 * 60)),
				floor(global_tick / (20 * 60)) % 60,
				seconds % 60
			)
		);
		run('execute store result bossbar netheruhc:bossbar value run worldborder get'); // aggiorna valore bossbar
		for(
			sort_key(pairs(global_eventi_futuri)),
			if(
				_:0 > seconds,
				break()
			);
			if(
				_:0 <= seconds,
				e = _:1;
				if (type(e) != 'list', e = l(e));
				for(e, if(_ != null, run(_)));
				delete(global_eventi_futuri:(_:0))
			);
		);
	);
	global_tick = global_tick + global_speed;

	for(entity_selector('@a[gamemode=survival,scores={death=1..}]'),run(str('ban %s',_~'name'));run(str('scoreboard players reset %s death',_~'name'))) // ban alla morte
);

__break_portals() -> (
	for(
		entity_list('players'),
		if(
			block(pos(_))!='nether_portal',
			break(),
			set(pos(_),'air')
		)
	)
)