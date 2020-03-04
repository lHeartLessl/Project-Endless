Class MyPawn Extends GamePawn;

var float pival,offset;

simulated function bool CalcCamera(float Time, out Vector out_CamLoc, out Rotator out_CamRot, out float Fov ){
	local vector hitloc,hitnormal,end,start,loc;
	local rotator rot;
	Loc = location;
	Loc.Z += 50;
	start = location;
	offset = 80;
 	rot = controller.rotation;
	end=Loc - vector(rot)*30;
	end.X += offset * sin(-rot.Yaw*pival*2/65536);
	end.Y += offset * sin(-rot.Yaw*pival*2/65536);

	out_CamLoc=end;
	if(trace(hitloc,hitnormal,end,start,false,vect(12,12,12))!=none)
	{
		out_CamLoc  = hitloc;
	}
	out_CamRot=rot;

              	return true;
}
event Touch(Actor Other, PrimitiveComponent OtherComp, Vector HitLocation, Vector HitNormal){
      Other.TakeDamage( 1, None, Other.location,vect(0,0,0),class'DeathString');
      Worldinfo.game.Broadcast(self,string(MyBot(Other).health));
}

event bump(Actor Other, PrimitiveComponent OtherComp, Vector HitLocation){
         `log("test");
}

function addDefaultInventory(){
    InvManager.CreateInventory(class'Gunner_B');
}   

DefaultProperties
{
	pival = 3.14159;
                   bBlockActors=false 	
	    InventoryManagerClass = class'MyInventory'
	    Begin Object Name=CollisionCylinder
           CollisionRadius=+0070.000000
           CollisionHeight=+0045.000000
           BlockZeroExtent=false
        End Object
       	Begin Object Class=DynamicLightEnvironmentComponent Name=env
        		bIsCharacterLightEnvironment=TRUE
     	End Object
     	Components.Add(env)
     	LightEnvironment=env

     	Begin Object Class=SkeletalMeshComponent Name=Robot
         		SkeletalMesh=SkeletalMesh'CH_LIAM_Cathode.Mesh.SK_CH_LIAM_Cathode'
         		AnimTreeTemplate=AnimTree'CH_AnimHuman_Tree.AT_CH_Human'
         		AnimSets(0)=AnimSet'CH_AnimHuman.Anims.K_AnimHuman_BaseMale'
         		PhysicAsset=PhysicsAsset'CH_AnimCorrupt.Mesh.SK_CH_Corrupt_Male_Physics'
         		LightEnvironment=env
     	End Object
     	Mesh=Robot;
     	Components.Add(Robot);
}