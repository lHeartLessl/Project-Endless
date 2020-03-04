Class BotController3 Extends UDKBot;

event Possess(Pawn iP, bool bV){
          super.Possess(iP,bV);
          Pawn.setMovementPhysics();
		  gotostate('TestMove');
}

function Seeplayer(Pawn PC){
    enemy = PC;
	Focus = PC;
}
function EnemyNotVisible(){
    Focus = MyBot(Pawn);
}

state TestMove{
     Begin:
			MoveTo(vect(300,800,66));
	 		MoveTo(vect(900,130,66));
	 Goto('Begin'); 	
}

DefaultProperties{
}