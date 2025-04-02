
 
frame floorwalls: { }



# ego1
ego1Joint(floorwalls){ Q:[0.0 0.0 0.1] } # works
ego1(ego1Joint) {
    shape:ssCylinder, size:[0.1 0.2 .02], color:[0.96875 0.7421875 0.30859375], logical:{gripper}, limits: [-4 4 -4 4], sampleUniform:1,
    Q:[0.5 1 0.2],
    joint:transXY, contact: 1
}



# ego2
ego2Joint(floorwalls){ Q:[0.0 0.0 0.1] } # works
ego2(ego2Joint) {
    shape:ssCylinder, size:[0.1 0.2 .02], color:[0.96875 0.7421875 0.30859375], logical:{gripper}, limits: [-4 4 -4 4], sampleUniform:1,
    Q:[-0.5 1 0.2],
    joint:transXY, contact: 1
}

