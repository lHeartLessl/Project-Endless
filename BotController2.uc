Class BotController2 Extends UDKBot;

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
			MoveTo(vect(500,600,66));
	 		MoveTo(vect(150,600,66));
	 Goto('Begin'); 	
}

DefaultProperties{
}