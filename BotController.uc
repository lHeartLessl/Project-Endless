Class BotController Extends UDKBot;
Var Pawn MoveFollow;

event Possess(Pawn iP, bool bV){
          super.Possess(iP,bV);
          Pawn.setMovementPhysics();
}

function Seeplayer(Pawn PC){
    Enemy = PC;
	Focus = PC;
	MoveFollow = Enemy;
	Gotostate('Follow');
}
function EnemyNotVisible(){
    Focus = MyBot(Pawn);
}

State Follow{
begin:
 MoveToWard(MoveFollow,MoveFollow,100);
 goto('begin');
}


DefaultProperties{
}