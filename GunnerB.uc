Class GunnerB Extends UDKWeapon;

simulated function TimeWeaponEquipping(){
        Instigator.Mesh.AttachComponentToSocket(Mesh,'WeaponPoint');
}

DefaultProperties{
        Begin Object Class=SkeletalMeshComponent Name=Gunner_B
		            SkeletalMesh = SkeletalMesh'WP_ShockRifle.Mesh.SK_WP_ShockRifle_3P'
		End object
		Mesh=Gunner_B
		Components.Add(Gunner_B);
}