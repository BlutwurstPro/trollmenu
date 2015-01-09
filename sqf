MeinStrike={meins=1;mein1={openMap[false,false];[_pos]spawn{for'_l39'from 0 to meins do{_l87="M_AT";_l88=[_this select 0 select 0,_this select 0 select 1,(_this select 0 select 2)+200];_l89=createVehicle[_l87,_l88,[],0,"CAN_COLLIDE"];_l89 setvelocity[0,0,0];[_l89,-90,0]call BIS_fnc_setPitchBank;hint format["%1 Missiles Launched",_l39];sleep(random 1.00);};};};titleText["Click on map drop missle's","PLAIN"];titlefadeout 7;onMapSingleClick"_pos call mein1;";openMap[true,false];};
Irecommend_sgsfgsdgsgsfgsdg={deleteVehicle cursorTarget;cutText[format["%1 DELETED",cursorTarget],"PLAIN DOWN"];};

removeallactions player;


player removeaction TrollBanner2;
TrollBanner2= player addAction ["<t color='#000000'>----------------------</t>", ""];

player removeaction delete;
delete= player addAction ["Delete","[]spawn Irecommend_sgsfgsdgsgsfgsdg"];

player removeaction attchsmke;
attchsmke= player addAction ["Attach Smoke", {_smoke = "SmokeShell" createVehicle position player;if (vehicle player != player) then {
_smoke attachTo [vehicle player, [-0.6,-1,0]];} else {
_smoke attachTo [player, [0,-0.1,1.5]];};}];

player removeaction mssles;
mssles= player addAction ["Missiles","[]spawn MeinStrike"];

player removeaction dplrjump;
dplrjump=player addAction ["Spring!",{vehicle player setVelocity[1,1,30]}];
