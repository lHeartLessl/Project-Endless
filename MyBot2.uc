Class MyBot2 Extends GamePawn;

DefaultProperties
{
    ControllerClass=class'BotController2'
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
           LightEnvironment=env
           AnimSets(0)=AnimSet'CH_AnimHuman.Anims.K_AnimHuman_BaseMale'
           AnimTreeTemplate=AnimTree'CH_AnimHuman_Tree.AT_CH_Human'
           SkeletalMesh=SkeletalMesh'CH_LIAM_Cathode.Mesh.SK_CH_LIAM_Cathode'
           PhysicsAsset=PhysicsAsset'CH_AnimCorrupt.Mesh.SK_CH_Corrupt_Male_Physics'
    End Object
	
    Mesh=Robot
    Components.Add(Robot)
    bBlockActors=false
}
