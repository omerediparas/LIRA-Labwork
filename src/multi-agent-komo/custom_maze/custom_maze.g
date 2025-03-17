# WALLS
frame floorwalls: {}

egoJoint(floorwalls){ Q:[0.0 0.0 0.1] } # works
ego(egoJoint) {
    shape:ssCylinder, size:[0.1 0.5 .02], color:[0.96875 0.7421875 0.30859375], logical:{gripper}, limits: [-4 4 -4 4], sampleUniform:1,
    Q:[3 -3 0.2],
    joint:transXY, contact: 1
}


egoJoint2(floorwalls){ Q:[0.0 0.0 0.1] } # works
ego2(egoJoint2) {
    shape:ssCylinder, size:[0.1 0.5 .02], color:[0 0 1], logical:{gripper}, limits: [-4 4 -4 4], sampleUniform:1,
    Q:[3 3 0.2],
    joint:transXY, contact: 1
}

# ground
passage_line(floorwalls): {shape: box, size : [1,0.02, 0.02], color: [0, 0, 0], Q:[0, 0, 0, 1, 0, 0, 0], contact: -1}

outer_wall1(floorwalls): {shape: box, size : [10,0.02, 1.2], color: [0.82, 0.7, 0.55], Q:[0, -4.98, 0.62, 1, 0, 0, 0], contact: True}

outer_wall2(floorwalls): {shape: box, size : [10,0.02, 1.2], color: [0.82, 0.7, 0.55], Q:[4.99, 0, 0.62, 90, 0, 0, 90], contact: True}

outer_wall3(floorwalls): {shape: box, size : [10,0.02, 1.2], color: [0.82, 0.7, 0.55], Q:[0, 4.98, 0.62, 1, 0, 0, 0], contact: True}

outer_wall4(floorwalls): {shape: box, size : [10,0.02, 1.2], color: [0.82, 0.7, 0.55], Q:[-4.99, 0, 0.62, 90, 0, 0, 90], contact: True}

inner_wall1(floorwalls): {shape: box, size : [4.5,0.02, 1.2], color: [0.82, 0.7, 0.55], Q:[2.75, 0, 0.62, 1, 0, 0, 0], contact: True}

inner_wall2(floorwalls): {shape: box, size : [4.5,0.02, 1.2], color: [0.82, 0.7, 0.55], Q:[-2.75, 0, 0.62, 1, 0, 0, 0], contact: True}

# PASSAGE POINT
passage(floorwalls): {shape: box, size: [1, 0.02, 1.2], color: [0,0,1,0.2], Q:[0, 0, 0.62, 1, 0, 0, 0], contact: -2}


# GOAL AREA

goal_area(floorwalls): {shape: box, size : [0.8,0.02, 0.8], color: [0.8, 0.8, 0], Q:[-2.75, 3, 0.0, 90, 90, 0, 0], contact: -2}

# CARGO

cargo: { X: "t(.0 -3. 0.23) d(0 0 0 1)", shape: ssBox, size: [.4 .4 .4,.05], color: [1 .5 0], mass: .1, contact: 1 }

cargo_handle_l(cargo): { Q: "t(0.1 0 0.225) d(0 0 0 1)", shape: capsule, size: [.05 .012], color: [1 0 0], mass: .1, contact: 1 }
cargo_handle_r(cargo): { Q: "t(-0.1 0 0.225) d(0 0 0 1)", shape: capsule, size: [.05 .012], color: [1 0 0], mass: .1, contact: 1 }
cargo_handle(cargo): { Q: "t(0.0 0 0.25) d(-90 0 1 0)", shape: capsule, size: [.2 .012], color: [1 0 0], mass: .1, contact: 1 }




