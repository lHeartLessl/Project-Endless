Class MainGameinfo Extends UDKGame;

event PostBeginPlay(){
     super.PostBeginPlay();
     addbot(); 
	 addbot(); 
	 addbot2(); 
	 addbot3(); 
	 addbot4();  
}
function addbot(){
Spawn(class'MyBot',,,vect(280,250,60),);
}
function addbot2(){
Spawn(class'MyBot2',,,vect(380,250,60),);
}
function addbot3(){
Spawn(class'MyBot3',,,vect(280,350,60),);
}
function addbot4(){
Spawn(class'FollowerPawn ',,,vect(300,450,60),);
}

DefaultProperties
{
    bRestartLevel = false;
    bDelayedStart=false;

    DefaultPawnClass=class'MyPawn' 
    PlayerControllerClass=class'MyController' 
}
