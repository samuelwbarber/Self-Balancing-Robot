% Simscape(TM) Multibody(TM) version: 23.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(22).translation = [0.0 0.0 0.0];
smiData.RigidTransform(22).angle = 0.0;
smiData.RigidTransform(22).axis = [0.0 0.0 0.0];
smiData.RigidTransform(22).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [105.02323856739997 6.5130570846542568 19.802510556738486];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962562];
smiData.RigidTransform(1).ID = "B[wheels_assem:1:-:rigid_body:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [59.600000000007846 8.0301062443431937e-14 -1.8415802838856319e-13];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931944;  % rad
smiData.RigidTransform(2).axis = [-0.57735026918962595 -0.57735026918962529 0.57735026918962606];
smiData.RigidTransform(2).ID = "F[wheels_assem:1:-:rigid_body:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [20.000000000008001 7.7715611723760958e-14 0];  % mm
smiData.RigidTransform(3).angle = 1.5707963267948972;  % rad
smiData.RigidTransform(3).axis = [-0 -0 -1];
smiData.RigidTransform(3).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:Stepper Motor v2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-19.999999999994799 -3.3306690738754696e-15 5.3290705182007514e-14];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(4).axis = [0.70710678118654735 -0.70710678118654779 -1.6682232373514998e-16];
smiData.RigidTransform(4).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:Stepper Motor v2:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [2.3314683517128287e-13 37.999999999999993 -39.999999999999986];  % mm
smiData.RigidTransform(5).angle = 2.0816681711721695e-16;  % rad
smiData.RigidTransform(5).axis = [1 0 0];
smiData.RigidTransform(5).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:Spacer:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [34.6410161513774 37.999999999999993 20.000000000000206];  % mm
smiData.RigidTransform(6).angle = 2.0816681711721695e-16;  % rad
smiData.RigidTransform(6).axis = [1 0 0];
smiData.RigidTransform(6).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:Spacer:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [-34.641016151377698 38 19.999999999999805];  % mm
smiData.RigidTransform(7).angle = 2.0816681711721695e-16;  % rad
smiData.RigidTransform(7).axis = [1 0 0];
smiData.RigidTransform(7).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:Spacer:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-2.2204460492503131e-15 -1.1102230246251565e-15 8.8817841970012523e-15];  % mm
smiData.RigidTransform(8).angle = 0;  % rad
smiData.RigidTransform(8).axis = [0 0 0];
smiData.RigidTransform(8).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:Tilt Chassis]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [-2.2204460492503131e-15 -1.1102230246251565e-15 8.8817841970012523e-15];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [2.4202861936828413e-13 74 8.8817841970012523e-15];  % mm
smiData.RigidTransform(10).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(10).axis = [-0 -1 -0];
smiData.RigidTransform(10).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Holder:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [2.4868995751603507e-13 80.999999999999972 16.000000000000007];  % mm
smiData.RigidTransform(11).angle = 0;  % rad
smiData.RigidTransform(11).axis = [0 0 0];
smiData.RigidTransform(11).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:NiMH Battery v2:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [-0.99999999999974998 80.999999999999972 -15.999999999999988];  % mm
smiData.RigidTransform(12).angle = 0;  % rad
smiData.RigidTransform(12).axis = [0 0 0];
smiData.RigidTransform(12).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:NiMH Battery v2:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [2.3980817331903381e-13 73.999999999999986 -39.999999999999986];  % mm
smiData.RigidTransform(13).angle = 1.570796326794897;  % rad
smiData.RigidTransform(13).axis = [1.1102230246251562e-16 1 -1.110223024625154e-16];
smiData.RigidTransform(13).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Strut:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [34.641016151377798 73.999999999999986 20.000000000000018];  % mm
smiData.RigidTransform(14).angle = 1.570796326794897;  % rad
smiData.RigidTransform(14).axis = [1.1102230246251562e-16 1 -1.110223024625154e-16];
smiData.RigidTransform(14).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Strut:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [-34.641016151377301 74 20.000000000000007];  % mm
smiData.RigidTransform(15).angle = 1.570796326794897;  % rad
smiData.RigidTransform(15).axis = [1.1102230246251562e-16 1 -1.110223024625154e-16];
smiData.RigidTransform(15).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Strut:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [2.4868995751603507e-13 239.09143953999998 8.8817841970012523e-15];  % mm
smiData.RigidTransform(16).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(16).axis = [0.96592582628906831 0 -0.25881904510252063];
smiData.RigidTransform(16).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Holder Top:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [-2.2204460492503131e-15 -1.1102230246251565e-15 8.8817841970012523e-15];  % mm
smiData.RigidTransform(17).angle = 0;  % rad
smiData.RigidTransform(17).axis = [0 0 0];
smiData.RigidTransform(17).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [2.7533531010703882e-13 -72.000000000000099 -4.4408920985006262e-14];  % mm
smiData.RigidTransform(18).angle = 4.4408920985006321e-16;  % rad
smiData.RigidTransform(18).axis = [0 1 0];
smiData.RigidTransform(18).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:Chassis:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [-2.2204460492503131e-15 284.99999999999994 8.8817841970012523e-15];  % mm
smiData.RigidTransform(19).angle = 0;  % rad
smiData.RigidTransform(19).axis = [0 0 0];
smiData.RigidTransform(19).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [132.82323856740004 6.5130570846542479 19.802510556738497];  % mm
smiData.RigidTransform(20).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(20).axis = [-0.70710678118654757 1.8154194053531084e-16 0.70710678118654746];
smiData.RigidTransform(20).ID = "AssemblyGround[wheels_assem:1:wheel v1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [-41.976761432602778 6.5130570846542923 19.802510556738557];  % mm
smiData.RigidTransform(21).angle = 1.7391544425216392;  % rad
smiData.RigidTransform(21).axis = [0.37883483505899218 0.84437452323696549 0.3788348350589914];
smiData.RigidTransform(21).ID = "AssemblyGround[wheels_assem:1:wheel v1:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [15.879896908308007 11.848975377420212 44.009933923057652];  % mm
smiData.RigidTransform(22).angle = 0.17637710114566599;  % rad
smiData.RigidTransform(22).axis = [-1 1.1334440308453089e-14 -9.0729313352868529e-15];
smiData.RigidTransform(22).ID = "RootGround[rigid_body:1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(9).mass = 0.0;
smiData.Solid(9).CoM = [0.0 0.0 0.0];
smiData.Solid(9).MoI = [0.0 0.0 0.0];
smiData.Solid(9).PoI = [0.0 0.0 0.0];
smiData.Solid(9).color = [0.0 0.0 0.0];
smiData.Solid(9).opacity = 0.0;
smiData.Solid(9).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.6180141772024772;  % lbm
smiData.Solid(1).CoM = [-0.0014174031385892276 10.401305347758987 -2.8851186910532892e-14];  % mm
smiData.Solid(1).MoI = [110.00250505222128 172.13875268308519 110.00083936011347];  % lbm*mm^2
smiData.Solid(1).PoI = [0 0 0.017824952288800874];  % lbm*mm^2
smiData.Solid(1).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Stepper Motor v2.ipt_{4DD1FF9E-40DE-585F-2D5B-6CB72D9554BC}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.016637007613660611;  % lbm
smiData.Solid(2).CoM = [7.0873937594695004e-10 17.000000000000014 -5.1969847736329784e-15];  % mm
smiData.Solid(2).MoI = [1.7732276950029464 0.34105863393870556 1.7732277391677096];  % lbm*mm^2
smiData.Solid(2).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(2).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Spacer.ipt_{BFA5B6C8-4DF9-28CB-8FC5-21984738333F}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.17972631228764294;  % lbm
smiData.Solid(3).CoM = [0.00024737056595729048 17.086193702836979 0.0044715970687496023];  % mm
smiData.Solid(3).MoI = [254.20930151431114 372.03079422453538 234.04751803715263];  % lbm*mm^2
smiData.Solid(3).PoI = [-0.077123537336815498 -0.00031147762051955002 0.0008186940212619795];  % lbm*mm^2
smiData.Solid(3).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Tilt Chassis.ipt_{20BF773B-4E1F-BB7B-1F5D-3791EC6936E3}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.72243745407104487;  % lbm
smiData.Solid(4).CoM = [3.3630840927463275e-09 2.3188717246064763 -0.00099618161936741874];  % mm
smiData.Solid(4).MoI = [416.98671950582167 769.07194115466382 406.74450766149414];  % lbm*mm^2
smiData.Solid(4).PoI = [-0.00057522481646602591 7.4278873028040009e-07 6.6122555793855044e-08];  % lbm*mm^2
smiData.Solid(4).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Battery Holder.ipt_{1E1A0695-4DE5-0B07-2336-14A8E1E2211E}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 2.1778401759148394;  % lbm
smiData.Solid(5).CoM = [0 63.500000000000007 0];  % mm
smiData.Solid(5).MoI = [3026.579800157363 400.51990828867002 3228.3374743530485];  % lbm*mm^2
smiData.Solid(5).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(5).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "NiMH Battery v2.ipt_{FB10F661-4CD2-A405-7886-65B42254AA38}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.066058706701299458;  % lbm
smiData.Solid(6).CoM = [7.0873985501056728e-10 67.500000000000028 -1.5124722765075075e-14];  % mm
smiData.Solid(6).MoI = [101.00376241464987 1.3542033994625036 101.00376259000996];  % lbm*mm^2
smiData.Solid(6).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(6).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "Battery Strut.ipt_{3409DB74-4276-781E-CB12-B6955F938C36}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.46239601939452912;  % lbm
smiData.Solid(7).CoM = [0.031558945385952261 28.875812927725811 -0.054661652869995567];  % mm
smiData.Solid(7).MoI = [303.15365261012948 607.30944313635337 307.42412312901314];  % lbm*mm^2
smiData.Solid(7).PoI = [0.0054500053684667076 4.70782519172813 -0.0031465802766783451];  % lbm*mm^2
smiData.Solid(7).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = "Battery Holder Top.ipt_{FABF4E8F-4AEF-7CDC-E0EA-E9B3F35AFD97}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 0.68228159101559527;  % lbm
smiData.Solid(8).CoM = [9.2531639213805029e-07 43.307536287977591 0.00012119287106218965];  % mm
smiData.Solid(8).MoI = [1364.2992413603683 993.51106545533162 1364.2992704927285];  % lbm*mm^2
smiData.Solid(8).PoI = [-0.0041945668705003509 -1.1112140959149038e-05 -3.1982923312313582e-05];  % lbm*mm^2
smiData.Solid(8).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = "Chassis.ipt_{CB255870-4C81-5A40-A6C4-F1949B79EC0E}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 0.95213479421546354;  % lbm
smiData.Solid(9).CoM = [7.7904761186597191e-09 0 12.184241199097489];  % mm
smiData.Solid(9).MoI = [389.81038817055315 389.81044331175957 688.97598761438371];  % lbm*mm^2
smiData.Solid(9).PoI = [-1.6254507016353482e-13 -5.2824249649237308e-10 -3.9349942157819479e-13];  % lbm*mm^2
smiData.Solid(9).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = "wheel v1.ipt_{679CE2D4-4A5E-C441-0C58-B08E168C3868}";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(1).Rz.Pos = 0.0;
smiData.RevoluteJoint(1).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 112.51341846949263;  % deg
smiData.RevoluteJoint(1).ID = "[wheels_assem:1:-:rigid_body:1]";

