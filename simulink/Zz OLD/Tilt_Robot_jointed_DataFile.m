% Simscape(TM) Multibody(TM) version: 23.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(245).translation = [0.0 0.0 0.0];
smiData.RigidTransform(245).angle = 0.0;
smiData.RigidTransform(245).axis = [0.0 0.0 0.0];
smiData.RigidTransform(245).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [2.2204460492503131e-15 -2.3314683517128287e-14 27.800000000000029];  % mm
smiData.RigidTransform(1).angle = 8.3266726846887096e-16;  % rad
smiData.RigidTransform(1).axis = [1 0 0];
smiData.RigidTransform(1).ID = "B[wheel v1:1:-:rigid_body:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [59.600000000007988 2.2039922969947604e-14 1.6848567578150021e-14];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931948;  % rad
smiData.RigidTransform(2).axis = [-0.5773502691896264 -0.57735026918962562 0.5773502691896254];
smiData.RigidTransform(2).ID = "F[wheel v1:1:-:rigid_body:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-2.2204460492503131e-15 2.2204460492503131e-15 27.800000000000004];  % mm
smiData.RigidTransform(3).angle = 0;  % rad
smiData.RigidTransform(3).axis = [0 0 0];
smiData.RigidTransform(3).ID = "B[wheel v1:2:-:rigid_body:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-59.599999999994793 7.5973229346919849e-15 1.2157473664493518e-14];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931962;  % rad
smiData.RigidTransform(4).axis = [0.57735026918962618 0.57735026918962595 0.57735026918962518];
smiData.RigidTransform(4).ID = "F[wheel v1:2:-:rigid_body:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [20.000000000008001 8.1046280797636427e-14 -4.4408920985006262e-15];  % mm
smiData.RigidTransform(5).angle = 1.570796326794897;  % rad
smiData.RigidTransform(5).axis = [-0 -0 -1];
smiData.RigidTransform(5).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:Stepper Motor v2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-19.999999999994795 1.1102230246251565e-15 4.4408920985006262e-14];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(6).axis = [0.70710678118654735 -0.70710678118654768 -1.6682232373514976e-16];
smiData.RigidTransform(6).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:Stepper Motor v2:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [2.4868995751603507e-13 37.999999999999986 -40];  % mm
smiData.RigidTransform(7).angle = 2.2204460492503131e-16;  % rad
smiData.RigidTransform(7).axis = [1 0 0];
smiData.RigidTransform(7).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:Spacer:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [34.641016151377414 38.000000000000007 20.000000000000195];  % mm
smiData.RigidTransform(8).angle = 2.2204460492503131e-16;  % rad
smiData.RigidTransform(8).axis = [1 0 0];
smiData.RigidTransform(8).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:Spacer:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [-34.641016151377698 38 19.999999999999805];  % mm
smiData.RigidTransform(9).angle = 2.2204460492503131e-16;  % rad
smiData.RigidTransform(9).axis = [1 0 0];
smiData.RigidTransform(9).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:Spacer:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [-0.1712499999999828 41.1045057360516 28.261249999999905];  % mm
smiData.RigidTransform(10).angle = 5.6655388976479786e-16;  % rad
smiData.RigidTransform(10).axis = [0 -1 0];
smiData.RigidTransform(10).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Base:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [8.6044500000000177 40.533005736051578 21.530249999999896];  % mm
smiData.RigidTransform(11).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(11).axis = [-4.8907024970768001e-15 0 1];
smiData.RigidTransform(11).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:pin header:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [6.0644500000000168 40.533005736051578 21.530249999999903];  % mm
smiData.RigidTransform(12).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(12).axis = [-4.8907024970768001e-15 0 1];
smiData.RigidTransform(12).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:pin header:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [3.5244500000000212 40.533005736051578 21.530249999999903];  % mm
smiData.RigidTransform(13).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(13).axis = [-4.8907024970768001e-15 0 1];
smiData.RigidTransform(13).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:pin header:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [0.9844500000000167 40.533005736051578 21.530249999999903];  % mm
smiData.RigidTransform(14).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(14).axis = [-4.8907024970768001e-15 0 1];
smiData.RigidTransform(14).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:pin header:4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [-1.5555499999999789 40.533005736051599 21.530249999999903];  % mm
smiData.RigidTransform(15).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(15).axis = [-4.8907024970768001e-15 0 1];
smiData.RigidTransform(15).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:pin header:5]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [-4.0955499999999834 40.533005736051599 21.530249999999903];  % mm
smiData.RigidTransform(16).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(16).axis = [-4.8907024970768001e-15 0 1];
smiData.RigidTransform(16).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:pin header:6]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [-6.6355499999999878 40.533005736051599 21.530249999999896];  % mm
smiData.RigidTransform(17).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(17).axis = [-4.8907024970768001e-15 0 1];
smiData.RigidTransform(17).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:pin header:7]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [-9.1755499999999834 40.533005736051599 21.530249999999903];  % mm
smiData.RigidTransform(18).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(18).axis = [-4.8907024970768001e-15 0 1];
smiData.RigidTransform(18).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:pin header:8]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [-0.1712499999999828 41.696005736051696 29.1352499999999];  % mm
smiData.RigidTransform(19).angle = 5.6655388976479786e-16;  % rad
smiData.RigidTransform(19).axis = [0 -1 0];
smiData.RigidTransform(19).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:sensor chip:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [8.6824500000000313 42.526005736051701 28.261249999999901];  % mm
smiData.RigidTransform(20).angle = 5.6655388976479786e-16;  % rad
smiData.RigidTransform(20).axis = [0 -1 0];
smiData.RigidTransform(20).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:S2NH chip:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [8.682450000000026 41.677562745961382 31.061249999999898];  % mm
smiData.RigidTransform(21).angle = 5.6655388976479786e-16;  % rad
smiData.RigidTransform(21).axis = [0 -1 0];
smiData.RigidTransform(21).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Resistor small:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [6.557450000000018 41.677562745961403 27.386249999999897];  % mm
smiData.RigidTransform(22).angle = 1.5707963267948959;  % rad
smiData.RigidTransform(22).axis = [0 1 0];
smiData.RigidTransform(22).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Resistor small:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [5.2074500000000334 41.676005736051579 27.386249999999897];  % mm
smiData.RigidTransform(23).angle = 1.570796326794897;  % rad
smiData.RigidTransform(23).axis = [-0 -1 -0];
smiData.RigidTransform(23).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Resistor small black:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [3.707450000000021 41.6760057360516 27.386249999999897];  % mm
smiData.RigidTransform(24).angle = 1.570796326794897;  % rad
smiData.RigidTransform(24).axis = [-0 -1 -0];
smiData.RigidTransform(24).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Resistor small black:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [5.2074500000000334 41.677562745961382 31.010249999999896];  % mm
smiData.RigidTransform(25).angle = 1.5707963267948961;  % rad
smiData.RigidTransform(25).axis = [0 1 0];
smiData.RigidTransform(25).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Resistor small:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [3.7074500000000299 41.677562745961382 31.0102499999999];  % mm
smiData.RigidTransform(26).angle = 1.5707963267948961;  % rad
smiData.RigidTransform(26).axis = [0 1 0];
smiData.RigidTransform(26).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Resistor small:4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [-4.0499499999999955 41.677562745961403 31.0102499999999];  % mm
smiData.RigidTransform(27).angle = 1.5707963267948961;  % rad
smiData.RigidTransform(27).axis = [0 1 0];
smiData.RigidTransform(27).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Resistor small:5]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [-5.5499499999999902 41.6760057360516 27.385493445511599];  % mm
smiData.RigidTransform(28).angle = 1.5707963267948961;  % rad
smiData.RigidTransform(28).axis = [0 1 0];
smiData.RigidTransform(28).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Resistor small black:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [-4.0499499999999955 41.677562745961403 27.386249999999901];  % mm
smiData.RigidTransform(29).angle = 1.570796326794897;  % rad
smiData.RigidTransform(29).axis = [-0 -1 -0];
smiData.RigidTransform(29).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Resistor small:6]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [-7.054949999999991 41.6760057360516 27.386249999999897];  % mm
smiData.RigidTransform(30).angle = 5.6655388976479786e-16;  % rad
smiData.RigidTransform(30).axis = [0 -1 0];
smiData.RigidTransform(30).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Small LED:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(31).translation = [-5.5499499999999902 41.676005736051579 31.0102499999999];  % mm
smiData.RigidTransform(31).angle = 1.570796326794897;  % rad
smiData.RigidTransform(31).axis = [-0 -1 -0];
smiData.RigidTransform(31).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Resistor small black:4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(32).translation = [-0.1712499999999828 42.526005736051701 33.335249999999895];  % mm
smiData.RigidTransform(32).angle = 5.6655388976479786e-16;  % rad
smiData.RigidTransform(32).axis = [0 -1 0];
smiData.RigidTransform(32).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1:Resistor black:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(33).translation = [0 1.1102230246251565e-15 0];  % mm
smiData.RigidTransform(33).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(33).axis = [7.8504622934188635e-17 -0.70710678118654746 -0.70710678118654768];
smiData.RigidTransform(33).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:MPU 6050 IMU v2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(34).translation = [-7.6075000000000292 33.5 40.533005736051706];  % mm
smiData.RigidTransform(34).angle = 2.4492935982947099e-16;  % rad
smiData.RigidTransform(34).axis = [0 0 -1];
smiData.RigidTransform(34).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:90751A110_18-8 Stainless Steel Socket Head Screws:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(35).translation = [7.9499999999999815 33.500000000000007 40.533005736051692];  % mm
smiData.RigidTransform(35).angle = 2.4492935982947099e-16;  % rad
smiData.RigidTransform(35).axis = [0 0 -1];
smiData.RigidTransform(35).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:90751A110_18-8 Stainless Steel Socket Head Screws:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(36).translation = [8.8817841970012523e-15 10.000000312924399 50];  % mm
smiData.RigidTransform(36).angle = 1.570796326794897;  % rad
smiData.RigidTransform(36).axis = [1 0 0];
smiData.RigidTransform(36).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:94510A030_Brass Screw-to-Expand Inserts:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(37).translation = [8.8817841970012523e-15 20.000000312924399 50];  % mm
smiData.RigidTransform(37).angle = 1.570796326794897;  % rad
smiData.RigidTransform(37).axis = [1 0 0];
smiData.RigidTransform(37).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:94510A030_Brass Screw-to-Expand Inserts:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(38).translation = [8.8817841970012523e-15 10.000000312924399 -50];  % mm
smiData.RigidTransform(38).angle = 1.570796326794897;  % rad
smiData.RigidTransform(38).axis = [-1 -6.1088826713824488e-17 -6.1088826713824488e-17];
smiData.RigidTransform(38).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:94510A030_Brass Screw-to-Expand Inserts:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(39).translation = [1.7763568394002505e-14 20.000000312924399 -50];  % mm
smiData.RigidTransform(39).angle = 1.570796326794897;  % rad
smiData.RigidTransform(39).axis = [-1 -6.1088826713824488e-17 -6.1088826713824488e-17];
smiData.RigidTransform(39).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:94510A030_Brass Screw-to-Expand Inserts:4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(40).translation = [0 1.1102230246251565e-15 0];  % mm
smiData.RigidTransform(40).angle = 0;  % rad
smiData.RigidTransform(40).axis = [0 0 0];
smiData.RigidTransform(40).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1:Tilt Chassis]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(41).translation = [0 1.1102230246251565e-15 0];  % mm
smiData.RigidTransform(41).angle = 0;  % rad
smiData.RigidTransform(41).axis = [0 0 0];
smiData.RigidTransform(41).ID = "AssemblyGround[rigid_body:1:Tilt Chassis:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(42).translation = [2.4868995751603507e-13 27.549999999999997 -39.999999999999993];  % mm
smiData.RigidTransform(42).angle = 1.570796326794897;  % rad
smiData.RigidTransform(42).axis = [1 0 0];
smiData.RigidTransform(42).ID = "AssemblyGround[rigid_body:1:98687A134_General Purpose Steel Washer:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(43).translation = [2.3980817331903381e-13 45.099999999999994 -40];  % mm
smiData.RigidTransform(43).angle = 1.570796326794897;  % rad
smiData.RigidTransform(43).axis = [1 0 0];
smiData.RigidTransform(43).ID = "AssemblyGround[rigid_body:1:91292A132_18-8 Stainless Steel Socket Head Screw:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(44).translation = [2.3980817331903381e-13 73.999999999999972 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(44).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(44).axis = [-0 -1 -0];
smiData.RigidTransform(44).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Holder:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(45).translation = [11.000000000000201 72.499999999999986 -15.999999999999998];  % mm
smiData.RigidTransform(45).angle = 1.5707963267948966;  % rad
smiData.RigidTransform(45).axis = [0 -1 0];
smiData.RigidTransform(45).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Spring:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(46).translation = [11.000000000000298 73.999999999999986 16];  % mm
smiData.RigidTransform(46).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(46).axis = [-0 -1 -0];
smiData.RigidTransform(46).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Spring:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(47).translation = [-10.999999999999698 73.999999999999986 16];  % mm
smiData.RigidTransform(47).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(47).axis = [-0 -1 -0];
smiData.RigidTransform(47).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Spring:4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(48).translation = [-10.999999999999797 73.999999999999986 -15.999999999999996];  % mm
smiData.RigidTransform(48).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(48).axis = [-0 -1 -0];
smiData.RigidTransform(48).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Spring:5]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(49).translation = [2.5757174171303632e-13 81 15.999999999999996];  % mm
smiData.RigidTransform(49).angle = 0;  % rad
smiData.RigidTransform(49).axis = [0 0 0];
smiData.RigidTransform(49).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:NiMH Battery v2:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(50).translation = [-0.99999999999974776 80.999999999999972 -16];  % mm
smiData.RigidTransform(50).angle = 0;  % rad
smiData.RigidTransform(50).axis = [0 0 0];
smiData.RigidTransform(50).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:NiMH Battery v2:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(51).translation = [2.4868995751603507e-13 73.999999999999986 -40];  % mm
smiData.RigidTransform(51).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(51).axis = [1.1102230246251549e-16 1 -1.1102230246251548e-16];
smiData.RigidTransform(51).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Strut:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(52).translation = [34.641016151377798 73.999999999999972 19.999999999999996];  % mm
smiData.RigidTransform(52).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(52).axis = [1.1102230246251549e-16 1 -1.1102230246251548e-16];
smiData.RigidTransform(52).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Strut:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(53).translation = [-34.641016151377301 73.999999999999972 19.999999999999993];  % mm
smiData.RigidTransform(53).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(53).axis = [1.1102230246251549e-16 1 -1.1102230246251548e-16];
smiData.RigidTransform(53).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Strut:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(54).translation = [2.5757174171303632e-13 239.09143953999998 -2.2204460492503131e-15];  % mm
smiData.RigidTransform(54).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(54).axis = [0.96592582628906831 0 -0.25881904510252063];
smiData.RigidTransform(54).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:Battery Holder Top:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(55).translation = [25.980762113533409 70 14.999999999999996];  % mm
smiData.RigidTransform(55).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(55).axis = [3.9252311467094502e-17 -0.70710678118654746 0.70710678118654768];
smiData.RigidTransform(55).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:93655A095_Male-Female Threaded Hex Standoff:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(56).translation = [2.4868995751603507e-13 69.999999999999986 -29.999999999999996];  % mm
smiData.RigidTransform(56).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(56).axis = [3.9252311467094502e-17 -0.70710678118654746 0.70710678118654768];
smiData.RigidTransform(56).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:93655A095_Male-Female Threaded Hex Standoff:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(57).translation = [-25.980762113532904 69.999999999999986 14.999999999999996];  % mm
smiData.RigidTransform(57).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(57).axis = [3.9252311467094502e-17 -0.70710678118654746 0.70710678118654768];
smiData.RigidTransform(57).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:93655A095_Male-Female Threaded Hex Standoff:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(58).translation = [0 0 -1.5914395400000014];  % mm
smiData.RigidTransform(58).angle = 0;  % rad
smiData.RigidTransform(58).axis = [0 0 0];
smiData.RigidTransform(58).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:Board:1:Open CASCADE STEP translator 6.8 11.1.1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(59).translation = [0 0 0];  % mm
smiData.RigidTransform(59).angle = 0;  % rad
smiData.RigidTransform(59).axis = [0 0 0];
smiData.RigidTransform(59).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:Board:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(60).translation = [0 8.8817841970012523e-15 0];  % mm
smiData.RigidTransform(60).angle = 0;  % rad
smiData.RigidTransform(60).axis = [0 0 0];
smiData.RigidTransform(60).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J1:1:CUI_DEVICES_TB010-508-04BE:1:TB010-508-02P_Blue_-_S:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(61).translation = [0 0 -10.159999999999998];  % mm
smiData.RigidTransform(61).angle = 0;  % rad
smiData.RigidTransform(61).axis = [0 0 0];
smiData.RigidTransform(61).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J1:1:CUI_DEVICES_TB010-508-04BE:1:TB010-508-02P_Blue_-_S:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(62).translation = [122.00000000000003 89.860115051270029 -1.7541382312770093];  % mm
smiData.RigidTransform(62).angle = 1.5707961956606764;  % rad
smiData.RigidTransform(62).axis = [-1 0 0];
smiData.RigidTransform(62).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J1:1:CUI_DEVICES_TB010-508-04BE:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(63).translation = [0 0 0];  % mm
smiData.RigidTransform(63).angle = 0;  % rad
smiData.RigidTransform(63).axis = [0 0 0];
smiData.RigidTransform(63).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(64).translation = [117.03348541259003 139.66294860839 -1.5914387702940136];  % mm
smiData.RigidTransform(64).angle = 1.637833704321854;  % rad
smiData.RigidTransform(64).axis = [-0.93511311700730027 0.25056283033345844 -0.25056281938104386];
smiData.RigidTransform(64).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J14:1:961104-5804-XX_RGB16777215:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(65).translation = [0 0 0];  % mm
smiData.RigidTransform(65).angle = 0;  % rad
smiData.RigidTransform(65).axis = [0 0 0];
smiData.RigidTransform(65).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J14:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(66).translation = [57.134136199951016 94.919960021972983 -1.5914387702940047];  % mm
smiData.RigidTransform(66).angle = 2.0943950197980308;  % rad
smiData.RigidTransform(66).axis = [-0.5773502485427352 -0.57735029213144351 0.57735026689469782];
smiData.RigidTransform(66).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J13:1:961104-5804-XX_RGB16777215:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(67).translation = [0 0 0];  % mm
smiData.RigidTransform(67).angle = 0;  % rad
smiData.RigidTransform(67).axis = [0 0 0];
smiData.RigidTransform(67).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J13:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(68).translation = [124.60971832275001 64.536628723144986 -1.5914387702940136];  % mm
smiData.RigidTransform(68).angle = 2.7977723981146889;  % rad
smiData.RigidTransform(68).axis = [-0.17362385845134934 0.69636728748921572 -0.69636725705002656];
smiData.RigidTransform(68).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J8:1:961104-5804-XX_RGB16777215:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(69).translation = [0 0 0];  % mm
smiData.RigidTransform(69).angle = 0;  % rad
smiData.RigidTransform(69).axis = [0 0 0];
smiData.RigidTransform(69).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J8:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(70).translation = [67.999916076660014 87.000122070312997 -1.5914387702940136];  % mm
smiData.RigidTransform(70).angle = 3.1415925917725511;  % rad
smiData.RigidTransform(70).axis = [-3.0908617046045488e-08 -0.70710679664086395 0.70710676573223008];
smiData.RigidTransform(70).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:R3:1:User_Library-OAR5R005FLF:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(71).translation = [0 0 0];  % mm
smiData.RigidTransform(71).angle = 0;  % rad
smiData.RigidTransform(71).axis = [0 0 0];
smiData.RigidTransform(71).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:R3:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(72).translation = [134.99987792968003 97.499916076660014 -1.5914387702940136];  % mm
smiData.RigidTransform(72).angle = 2.0943950519196486;  % rad
smiData.RigidTransform(72).axis = [-0.57735022712832529 0.57735030283864774 -0.57735027760190161];
smiData.RigidTransform(72).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:R1:1:User_Library-OAR5R005FLF:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(73).translation = [0 0 0];  % mm
smiData.RigidTransform(73).angle = 0;  % rad
smiData.RigidTransform(73).axis = [0 0 0];
smiData.RigidTransform(73).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:R1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(74).translation = [84.262519836426009 60.474964141846002 -2.7979381084439936];  % mm
smiData.RigidTransform(74).angle = 2.8953956816355739;  % rad
smiData.RigidTransform(74).axis = [-0.70167382583163407 0.1237239914659722 0.70167386731908832];
smiData.RigidTransform(74).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J2:1:SSW-106-02-X-S-RA:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(75).translation = [0 0 0];  % mm
smiData.RigidTransform(75).angle = 0;  % rad
smiData.RigidTransform(75).axis = [0 0 0];
smiData.RigidTransform(75).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(76).translation = [79.500122070313012 119.00012207031 -1.5914387702940047];  % mm
smiData.RigidTransform(76).angle = 3.1415925917725849;  % rad
smiData.RigidTransform(76).axis = [-0.70710678540262928 -0.7071067769704652 -3.0908603815452354e-08];
smiData.RigidTransform(76).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:C1:1:PNSC-ECA-1VM101:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(77).translation = [0 0 0];  % mm
smiData.RigidTransform(77).angle = 0;  % rad
smiData.RigidTransform(77).axis = [0 0 0];
smiData.RigidTransform(77).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:C1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(78).translation = [80.452011108398011 105.92799377440998 -6.3445434570310066];  % mm
smiData.RigidTransform(78).angle = 2.0943950519196486;  % rad
smiData.RigidTransform(78).axis = [-0.57735022712832529 0.57735030283864774 -0.57735027760190161];
smiData.RigidTransform(78).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:U1:1:CUI_P783F-Q24-S5-S:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(79).translation = [0 0 0];  % mm
smiData.RigidTransform(79).angle = 0;  % rad
smiData.RigidTransform(79).axis = [0 0 0];
smiData.RigidTransform(79).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:U1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(80).translation = [138.61482238769 78.626419067383011 -1.5914387702940047];  % mm
smiData.RigidTransform(80).angle = 2.4074490136142064;  % rad
smiData.RigidTransform(80).axis = [-0.3844982341549556 0.65274847574729944 -0.65274844721477365];
smiData.RigidTransform(80).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S1:1:l202021ma04_RGB3158064:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(81).translation = [0 0 0];  % mm
smiData.RigidTransform(81).angle = 0;  % rad
smiData.RigidTransform(81).axis = [0 0 0];
smiData.RigidTransform(81).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(82).translation = [118.99999237060001 125.50016021728001 -1.5914387702940047];  % mm
smiData.RigidTransform(82).angle = 3.1415926309631255;  % rad
smiData.RigidTransform(82).axis = [-0.2588190363910956 -0.9659258286232868 -4.2221936645587077e-08];
smiData.RigidTransform(82).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:R4:1:User_Library-Res40-Axial_Short_0_25W-5_6K:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(83).translation = [0 0 0];  % mm
smiData.RigidTransform(83).angle = 0;  % rad
smiData.RigidTransform(83).axis = [0 0 0];
smiData.RigidTransform(83).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:R4:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(84).translation = [120.49987792968 71.500076293945 -1.5914387702940047];  % mm
smiData.RigidTransform(84).angle = 3.1415926324403185;  % rad
smiData.RigidTransform(84).axis = [-0.24192190687477205 0.97029572346479631 4.2412948451613973e-08];
smiData.RigidTransform(84).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:R2:1:User_Library-Res40-Axial_Short_0_25W-5_6K:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(85).translation = [0 0 0];  % mm
smiData.RigidTransform(85).angle = 0;  % rad
smiData.RigidTransform(85).axis = [0 0 0];
smiData.RigidTransform(85).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:R2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(86).translation = [70.313171386719034 139.52870178222 -7.1914348602290001];  % mm
smiData.RigidTransform(86).angle = 1.6716493200687956;  % rad
smiData.RigidTransform(86).axis = [-0.90391086098561502 -0.30244434478843041 0.30244433156820999];
smiData.RigidTransform(86).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J5:1:USB_Connector_Type_A_TH_female:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(87).translation = [0 0 0];  % mm
smiData.RigidTransform(87).angle = 0;  % rad
smiData.RigidTransform(87).axis = [0 0 0];
smiData.RigidTransform(87).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J5:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(88).translation = [0 0 0];  % mm
smiData.RigidTransform(88).angle = 0;  % rad
smiData.RigidTransform(88).axis = [0 0 0];
smiData.RigidTransform(88).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:D3:1:WP7113GD (1):1:WP7113GD:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(89).translation = [143.902053833 116.85011291503 -8.5002355575559996];  % mm
smiData.RigidTransform(89).angle = 1.8973871420577011;  % rad
smiData.RigidTransform(89).axis = [-0.71708814893742079 0.49284105342786561 -0.49284103188514572];
smiData.RigidTransform(89).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:D3:1:WP7113GD (1):1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(90).translation = [0 0 0];  % mm
smiData.RigidTransform(90).angle = 0;  % rad
smiData.RigidTransform(90).axis = [0 0 0];
smiData.RigidTransform(90).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:D3:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(91).translation = [0 8.8817841970012523e-15 0];  % mm
smiData.RigidTransform(91).angle = 0;  % rad
smiData.RigidTransform(91).axis = [0 0 0];
smiData.RigidTransform(91).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:D2:1:WP7113GD (1):2:WP7113GD:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(92).translation = [132.03553771972003 65.642929077147997 -8.5002355575560173];  % mm
smiData.RigidTransform(92).angle = 1.705526547603776;  % rad
smiData.RigidTransform(92).axis = [-0.87359375678643147 -0.3441176822368181 0.34411766719500114];
smiData.RigidTransform(92).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:D2:1:WP7113GD (1):2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(93).translation = [0 0 0];  % mm
smiData.RigidTransform(93).angle = 0;  % rad
smiData.RigidTransform(93).axis = [0 0 0];
smiData.RigidTransform(93).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:D2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(94).translation = [0 0 -8.8817841970012523e-15];  % mm
smiData.RigidTransform(94).angle = 0;  % rad
smiData.RigidTransform(94).axis = [0 0 0];
smiData.RigidTransform(94).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814025624:1:Extruded:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(95).translation = [97.520057678222997 135.74990844726 -8.8914365768430059];  % mm
smiData.RigidTransform(95).angle = 0;  % rad
smiData.RigidTransform(95).axis = [0 0 0];
smiData.RigidTransform(95).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814025624:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(96).translation = [0 0 -8.8817841970012523e-15];  % mm
smiData.RigidTransform(96).angle = 0;  % rad
smiData.RigidTransform(96).axis = [0 0 0];
smiData.RigidTransform(96).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814025624:2:Extruded:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(97).translation = [95.020095825195028 135.74990844726 -8.8914365768430059];  % mm
smiData.RigidTransform(97).angle = 0;  % rad
smiData.RigidTransform(97).axis = [0 0 0];
smiData.RigidTransform(97).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814025624:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(98).translation = [0 0 -8.8817841970012523e-15];  % mm
smiData.RigidTransform(98).angle = 0;  % rad
smiData.RigidTransform(98).axis = [0 0 0];
smiData.RigidTransform(98).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814025624:3:Extruded:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(99).translation = [92.519996643066023 135.75 -8.8914365768430059];  % mm
smiData.RigidTransform(99).angle = 0;  % rad
smiData.RigidTransform(99).axis = [0 0 0];
smiData.RigidTransform(99).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814025624:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(100).translation = [0 0 8.8817841970012523e-15];  % mm
smiData.RigidTransform(100).angle = 0;  % rad
smiData.RigidTransform(100).axis = [0 0 0];
smiData.RigidTransform(100).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814017624:1:Extruded (1):1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(101).translation = [97.52011871337902 133.99990844726 -7.591436386107997];  % mm
smiData.RigidTransform(101).angle = 0;  % rad
smiData.RigidTransform(101).axis = [0 0 0];
smiData.RigidTransform(101).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814017624:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(102).translation = [0 0 8.8817841970012523e-15];  % mm
smiData.RigidTransform(102).angle = 0;  % rad
smiData.RigidTransform(102).axis = [0 0 0];
smiData.RigidTransform(102).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814017624:2:Extruded (1):1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(103).translation = [95.020088195801009 133.99990844726 -7.591436386107997];  % mm
smiData.RigidTransform(103).angle = 0;  % rad
smiData.RigidTransform(103).axis = [0 0 0];
smiData.RigidTransform(103).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814017624:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(104).translation = [0 0 8.8817841970012523e-15];  % mm
smiData.RigidTransform(104).angle = 0;  % rad
smiData.RigidTransform(104).axis = [0 0 0];
smiData.RigidTransform(104).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814017624:3:Extruded (1):1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(105).translation = [92.520095825195028 133.99990844726 -7.591436386107997];  % mm
smiData.RigidTransform(105).angle = 0;  % rad
smiData.RigidTransform(105).axis = [0 0 0];
smiData.RigidTransform(105).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814017624:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(106).translation = [0 0 0];  % mm
smiData.RigidTransform(106).angle = 0;  % rad
smiData.RigidTransform(106).axis = [0 0 0];
smiData.RigidTransform(106).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814017024:1:Extruded (2):1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(107).translation = [94.997993469238011 134 -6.5914368629460007];  % mm
smiData.RigidTransform(107).angle = 0;  % rad
smiData.RigidTransform(107).axis = [0 0 0];
smiData.RigidTransform(107).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1:-1814017024:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(108).translation = [0 0 0];  % mm
smiData.RigidTransform(108).angle = 0;  % rad
smiData.RigidTransform(108).axis = [0 0 0];
smiData.RigidTransform(108).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S3:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(109).translation = [62.638450622558999 67.628105163574006 -7.191434860229009];  % mm
smiData.RigidTransform(109).angle = 2.5463803569510683;  % rad
smiData.RigidTransform(109).axis = [-0.30671522848059218 -0.67302518831666536 0.67302515889780457];
smiData.RigidTransform(109).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J4:1:USB_Connector_Type_A_TH_female:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(110).translation = [0 0 0];  % mm
smiData.RigidTransform(110).angle = 0;  % rad
smiData.RigidTransform(110).axis = [0 0 0];
smiData.RigidTransform(110).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J4:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(111).translation = [144.06350708007002 102.33639526367 -1.5914387702940047];  % mm
smiData.RigidTransform(111).angle = 2.0644334749109627;  % rad
smiData.RigidTransform(111).axis = [-0.59750039929947252 0.56700674640741999 -0.5670067216228063];
smiData.RigidTransform(111).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S2:1:l202021ma04_RGB3158064:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(112).translation = [0 0 0];  % mm
smiData.RigidTransform(112).angle = 0;  % rad
smiData.RigidTransform(112).axis = [0 0 0];
smiData.RigidTransform(112).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:S2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(113).translation = [74.699943542480028 99.989929199219034 -1.5914387702940047];  % mm
smiData.RigidTransform(113).angle = 3.1415925917725511;  % rad
smiData.RigidTransform(113).axis = [-3.0908617046045488e-08 -0.70710679664086395 0.70710676573223008];
smiData.RigidTransform(113).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J10:1:Samtec-SSW-108-01-G-S:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(114).translation = [0 0 0];  % mm
smiData.RigidTransform(114).angle = 0;  % rad
smiData.RigidTransform(114).axis = [0 0 0];
smiData.RigidTransform(114).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J10:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(115).translation = [62.000061035156016 100.01007080077999 -1.5914387702940047];  % mm
smiData.RigidTransform(115).angle = 1.5707961956606764;  % rad
smiData.RigidTransform(115).axis = [-1 0 0];
smiData.RigidTransform(115).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J9:1:Samtec-SSW-108-01-G-S:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(116).translation = [0 0 0];  % mm
smiData.RigidTransform(116).angle = 0;  % rad
smiData.RigidTransform(116).axis = [0 0 0];
smiData.RigidTransform(116).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J9:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(117).translation = [112.64131927490001 121.91551208496001 -1.5914387702940047];  % mm
smiData.RigidTransform(117).angle = 1.8234765248403053;  % rad
smiData.RigidTransform(117).axis = [-0.7745966133427229 -0.4472136536838382 0.44721363413556209];
smiData.RigidTransform(117).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J12:1:Samtec-SSW-108-01-G-S:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(118).translation = [0 0 0];  % mm
smiData.RigidTransform(118).angle = 0;  % rad
smiData.RigidTransform(118).axis = [0 0 0];
smiData.RigidTransform(118).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J12:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(119).translation = [119.00868988037001 132.90388488769 -1.5914387702940047];  % mm
smiData.RigidTransform(119).angle = 2.4188583950928018;  % rad
smiData.RigidTransform(119).axis = [-0.37796442955010007 0.65465369756144787 -0.65465366894564314];
smiData.RigidTransform(119).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J11:1:Samtec-SSW-108-01-G-S:4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(120).translation = [0 0 0];  % mm
smiData.RigidTransform(120).angle = 0;  % rad
smiData.RigidTransform(120).axis = [0 0 0];
smiData.RigidTransform(120).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J11:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(121).translation = [111.88655090332003 77.666107177734006 -1.5914387702940136];  % mm
smiData.RigidTransform(121).angle = 1.8392741518989166;  % rad
smiData.RigidTransform(121).axis = [-0.76203510780322337 0.45787690092620742 -0.45787688091182532];
smiData.RigidTransform(121).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J7:1:Samtec-SSW-108-01-G-S:5]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(122).translation = [0 0 0];  % mm
smiData.RigidTransform(122).angle = 0;  % rad
smiData.RigidTransform(122).axis = [0 0 0];
smiData.RigidTransform(122).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J7:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(123).translation = [117.83100128173002 66.443313598632997 -1.5914387702940047];  % mm
smiData.RigidTransform(123).angle = 2.3960734237335499;  % rad
smiData.RigidTransform(123).axis = [-0.39104128562963308 -0.6508021012413977 0.65080207279395264];
smiData.RigidTransform(123).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J6:1:Samtec-SSW-108-01-G-S:6]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(124).translation = [0 0 0];  % mm
smiData.RigidTransform(124).angle = 0;  % rad
smiData.RigidTransform(124).axis = [0 0 0];
smiData.RigidTransform(124).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J6:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(125).translation = [101.25993347168003 141.00006103515 -1.5914387702940136];  % mm
smiData.RigidTransform(125).angle = 2.0943950197980308;  % rad
smiData.RigidTransform(125).axis = [-0.5773502485427352 -0.57735029213144351 0.57735026689469782];
smiData.RigidTransform(125).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J3:1:Samtec-SSW-108-01-G-S:7]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(126).translation = [0 0 0];  % mm
smiData.RigidTransform(126).angle = 0;  % rad
smiData.RigidTransform(126).axis = [0 0 0];
smiData.RigidTransform(126).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:J3:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(127).translation = [128.49992370605003 98.999916076660014 -1.5914387702940047];  % mm
smiData.RigidTransform(127).angle = 2.0943950519196486;  % rad
smiData.RigidTransform(127).axis = [-0.57735022712832529 0.57735030283864774 -0.57735027760190161];
smiData.RigidTransform(127).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:F1:1:CFH02_RGB52479:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(128).translation = [0 0 0];  % mm
smiData.RigidTransform(128).angle = 0;  % rad
smiData.RigidTransform(128).axis = [0 0 0];
smiData.RigidTransform(128).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:F1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(129).translation = [128.04008483886003 80.455291748047003 -1.5914387702940047];  % mm
smiData.RigidTransform(129).angle = 3.1415926092194071;  % rad
smiData.RigidTransform(129).axis = [-0.50753839349065366 0.8616291424580097 3.7662985790417513e-08];
smiData.RigidTransform(129).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:D1:1:User_Library-DO-41-30:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(130).translation = [0 0 0];  % mm
smiData.RigidTransform(130).angle = 0;  % rad
smiData.RigidTransform(130).axis = [0 0 0];
smiData.RigidTransform(130).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:D1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(131).translation = [56.999870300292997 109.50012207031 -1.5914387702940047];  % mm
smiData.RigidTransform(131).angle = 3.1415926535897896;  % rad
smiData.RigidTransform(131).axis = [-4.3711388286740013e-08 -0.99999999999999811 -4.3711366971323304e-08];
smiData.RigidTransform(131).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:C4:1:PNSC-ECA-1VM101:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(132).translation = [0 0 0];  % mm
smiData.RigidTransform(132).angle = 0;  % rad
smiData.RigidTransform(132).axis = [0 0 0];
smiData.RigidTransform(132).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:C4:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(133).translation = [129.87515258789003 132.41751098632 -1.5914387702940047];  % mm
smiData.RigidTransform(133).angle = 3.1415925778794906;  % rad
smiData.RigidTransform(133).axis = [-0.86602537891968367 -0.50000004306701595 -2.1855681506711942e-08];
smiData.RigidTransform(133).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:C5:1:PNSC-ECA-1VM101:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(134).translation = [0 0 0];  % mm
smiData.RigidTransform(134).angle = 0;  % rad
smiData.RigidTransform(134).axis = [0 0 0];
smiData.RigidTransform(134).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:C5:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(135).translation = [112.49996185302003 57.499835968018004 -1.5914387702940047];  % mm
smiData.RigidTransform(135).angle = 3.1415925778794911;  % rad
smiData.RigidTransform(135).axis = [-0.86602539182441796 0.50000002071536265 2.1855680942553863e-08];
smiData.RigidTransform(135).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:C3:1:PNSC-ECA-1VM101:4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(136).translation = [0 0 0];  % mm
smiData.RigidTransform(136).angle = 0;  % rad
smiData.RigidTransform(136).axis = [0 0 0];
smiData.RigidTransform(136).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:C3:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(137).translation = [79.499877929688012 80.999885559082003 -1.5914387702939958];  % mm
smiData.RigidTransform(137).angle = 3.1415925917725867;  % rad
smiData.RigidTransform(137).axis = [-0.70710676573223752 0.70710679664085674 3.0908604676498734e-08];
smiData.RigidTransform(137).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:C2:1:PNSC-ECA-1VM101:5]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(138).translation = [0 0 0];  % mm
smiData.RigidTransform(138).angle = 0;  % rad
smiData.RigidTransform(138).axis = [0 0 0];
smiData.RigidTransform(138).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1:C2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(139).translation = [99.999999999999986 62 -100];  % mm
smiData.RigidTransform(139).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(139).axis = [-3.9252311467094502e-17 -0.70710678118654746 -0.70710678118654768];
smiData.RigidTransform(139).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:PCB1 v3:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(140).translation = [2.3980817331903381e-13 66.40856045999999 -30];  % mm
smiData.RigidTransform(140).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(140).axis = [-3.9252311467094502e-17 -0.70710678118654746 -0.70710678118654768];
smiData.RigidTransform(140).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:91292A111_18-8 Stainless Steel Socket Head Screw:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(141).translation = [25.981000000000307 66.408560460000004 15];  % mm
smiData.RigidTransform(141).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(141).axis = [-3.9252311467094502e-17 -0.70710678118654746 -0.70710678118654768];
smiData.RigidTransform(141).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:91292A111_18-8 Stainless Steel Socket Head Screw:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(142).translation = [-25.980999999999803 66.40856045999999 15.000000000000004];  % mm
smiData.RigidTransform(142).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(142).axis = [-3.9252311467094502e-17 -0.70710678118654746 -0.70710678118654768];
smiData.RigidTransform(142).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1:91292A111_18-8 Stainless Steel Socket Head Screw:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(143).translation = [0 1.1102230246251565e-15 0];  % mm
smiData.RigidTransform(143).angle = 0;  % rad
smiData.RigidTransform(143).axis = [0 0 0];
smiData.RigidTransform(143).ID = "AssemblyGround[rigid_body:1:Battery Module v16:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(144).translation = [0 156.39999999999998 -3.1086244689504383e-14];  % mm
smiData.RigidTransform(144).angle = 1.570796326794897;  % rad
smiData.RigidTransform(144).axis = [-1 -0 -0];
smiData.RigidTransform(144).ID = "AssemblyGround[rigid_body:1:Tie Rod:1:91828A231_18-8 Stainless Steel Hex Nut:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(145).translation = [0 154.59684999999996 -3.1086244689504383e-14];  % mm
smiData.RigidTransform(145).angle = 1.570796326794897;  % rad
smiData.RigidTransform(145).axis = [-1 2.2204460492503151e-16 2.2204460492503151e-16];
smiData.RigidTransform(145).ID = "AssemblyGround[rigid_body:1:Tie Rod:1:98689A113_General Purpose 18-8 Stainless Steel Washer:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(146).translation = [0 0 4.4408920985006262e-15];  % mm
smiData.RigidTransform(146).angle = 0;  % rad
smiData.RigidTransform(146).axis = [0 0 0];
smiData.RigidTransform(146).ID = "AssemblyGround[rigid_body:1:Tie Rod:1:Tie Rod]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(147).translation = [2.6645352591003757e-13 68.653149999999883 -39.999999999999993];  % mm
smiData.RigidTransform(147).angle = 2.2204460492503131e-16;  % rad
smiData.RigidTransform(147).axis = [1 0 0];
smiData.RigidTransform(147).ID = "AssemblyGround[rigid_body:1:Tie Rod:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(148).translation = [2.7533531010703882e-13 -72.000000000000142 -4.6629367034256575e-14];  % mm
smiData.RigidTransform(148).angle = 4.4408920985006301e-16;  % rad
smiData.RigidTransform(148).axis = [0 1 0];
smiData.RigidTransform(148).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:Chassis:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(149).translation = [-24.499999999999712 20.999999999999837 29.999999999999996];  % mm
smiData.RigidTransform(149).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(149).axis = [1 0 0];
smiData.RigidTransform(149).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:94868A163_Female Threaded Hex Standoff:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(150).translation = [24.500000000000306 20.999999999999837 29.999999999999996];  % mm
smiData.RigidTransform(150).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(150).axis = [1 0 0];
smiData.RigidTransform(150).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:94868A163_Female Threaded Hex Standoff:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(151).translation = [-24.499999999999712 -37.000000000000135 29.999999999999996];  % mm
smiData.RigidTransform(151).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(151).axis = [1 0 0];
smiData.RigidTransform(151).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:94868A163_Female Threaded Hex Standoff:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(152).translation = [24.500000000000295 -37.000000000000135 30.000000000000004];  % mm
smiData.RigidTransform(152).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(152).axis = [1 0 0];
smiData.RigidTransform(152).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:94868A163_Female Threaded Hex Standoff:4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(153).translation = [14.781787517317895 -13.200000000000145 -36.397192993318598];  % mm
smiData.RigidTransform(153).angle = 1.0471975511965981;  % rad
smiData.RigidTransform(153).axis = [6.2095670081135913e-17 -1 -7.2111100739383649e-17];
smiData.RigidTransform(153).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:94868A006_Female Threaded Hex Standoff:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(154).translation = [38.91178751731789 -11.930000000000156 5.3971929933184581];  % mm
smiData.RigidTransform(154).angle = 1.0471975511965981;  % rad
smiData.RigidTransform(154).axis = [-6.2095670081135913e-17 -1 7.0108014607734102e-17];
smiData.RigidTransform(154).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:94868A006_Female Threaded Hex Standoff:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(155).translation = [22.401787517317892 -64.000000000000128 -23.198965839643702];  % mm
smiData.RigidTransform(155).angle = 1.0471975511965981;  % rad
smiData.RigidTransform(155).axis = [6.2095670081135913e-17 -1 -7.2111100739383649e-17];
smiData.RigidTransform(155).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:94868A006_Female Threaded Hex Standoff:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(156).translation = [36.371787517317912 -64.000000000000128 0.99778394209352417];  % mm
smiData.RigidTransform(156).angle = 1.0471975511965981;  % rad
smiData.RigidTransform(156).axis = [6.2095670081135913e-17 -1 -7.2111100739383649e-17];
smiData.RigidTransform(156).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:94868A006_Female Threaded Hex Standoff:4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(157).translation = [-24.499999999999712 20.999999999999872 30.319999999999986];  % mm
smiData.RigidTransform(157).angle = 0;  % rad
smiData.RigidTransform(157).axis = [0 0 0];
smiData.RigidTransform(157).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:91292A010_18-8 Stainless Steel Socket Head Screw:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(158).translation = [24.500000000000306 20.999999999999837 30.319999999999986];  % mm
smiData.RigidTransform(158).angle = 0;  % rad
smiData.RigidTransform(158).axis = [0 0 0];
smiData.RigidTransform(158).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:91292A010_18-8 Stainless Steel Socket Head Screw:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(159).translation = [-24.499999999999712 -37.000000000000135 30.320000000000004];  % mm
smiData.RigidTransform(159).angle = 0;  % rad
smiData.RigidTransform(159).axis = [0 0 0];
smiData.RigidTransform(159).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:91292A010_18-8 Stainless Steel Socket Head Screw:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(160).translation = [24.500000000000295 -37.000000000000135 30.319999999999997];  % mm
smiData.RigidTransform(160).angle = 0;  % rad
smiData.RigidTransform(160).axis = [0 0 0];
smiData.RigidTransform(160).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:91292A010_18-8 Stainless Steel Socket Head Screw:4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(161).translation = [38.322890242744386 -11.930000000000156 5.7371929933184695];  % mm
smiData.RigidTransform(161).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(161).axis = [0.8660254037844386 3.5054007303867057e-17 0.50000000000000011];
smiData.RigidTransform(161).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:91292A111_18-8 Stainless Steel Socket Head Screw:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(162).translation = [14.192890242744403 -13.200000000000145 -36.057192993318601];  % mm
smiData.RigidTransform(162).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(162).axis = [0 1 0];
smiData.RigidTransform(162).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:91292A111_18-8 Stainless Steel Socket Head Screw:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(163).translation = [35.782890242744514 -64.000000000000171 1.3377839420935267];  % mm
smiData.RigidTransform(163).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(163).axis = [0.8660254037844386 3.5054007303867057e-17 0.50000000000000011];
smiData.RigidTransform(163).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:91292A111_18-8 Stainless Steel Socket Head Screw:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(164).translation = [21.812890242744388 -64.000000000000128 -22.858965839643702];  % mm
smiData.RigidTransform(164).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(164).axis = [0 1 0];
smiData.RigidTransform(164).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1:91292A111_18-8 Stainless Steel Socket Head Screw:4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(165).translation = [8.8817841970012523e-15 284.99999999999994 0];  % mm
smiData.RigidTransform(165).angle = 0;  % rad
smiData.RigidTransform(165).axis = [0 0 0];
smiData.RigidTransform(165).ID = "AssemblyGround[rigid_body:1:Logic Module v7:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(166).translation = [0 156.39999999999998 -3.5527136788005009e-14];  % mm
smiData.RigidTransform(166).angle = 1.570796326794897;  % rad
smiData.RigidTransform(166).axis = [-1 -0 -0];
smiData.RigidTransform(166).ID = "AssemblyGround[rigid_body:1:Tie Rod:2:91828A231_18-8 Stainless Steel Hex Nut:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(167).translation = [0 154.59684999999999 -4.8849813083506888e-14];  % mm
smiData.RigidTransform(167).angle = 1.570796326794897;  % rad
smiData.RigidTransform(167).axis = [-1 2.2204460492503151e-16 2.2204460492503151e-16];
smiData.RigidTransform(167).ID = "AssemblyGround[rigid_body:1:Tie Rod:2:98689A113_General Purpose 18-8 Stainless Steel Washer:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(168).translation = [0 0 -4.4408920985006262e-15];  % mm
smiData.RigidTransform(168).angle = 0;  % rad
smiData.RigidTransform(168).axis = [0 0 0];
smiData.RigidTransform(168).ID = "AssemblyGround[rigid_body:1:Tie Rod:2:Tie Rod_1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(169).translation = [34.641016151377798 68.653149999999897 19.999999999999996];  % mm
smiData.RigidTransform(169).angle = 2.2204460492503131e-16;  % rad
smiData.RigidTransform(169).axis = [1 0 0];
smiData.RigidTransform(169).ID = "AssemblyGround[rigid_body:1:Tie Rod:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(170).translation = [2.2204460492503131e-15 156.40000000000001 -3.1086244689504383e-14];  % mm
smiData.RigidTransform(170).angle = 1.570796326794897;  % rad
smiData.RigidTransform(170).axis = [-1 -0 -0];
smiData.RigidTransform(170).ID = "AssemblyGround[rigid_body:1:Tie Rod:3:91828A231_18-8 Stainless Steel Hex Nut:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(171).translation = [2.2204460492503131e-15 154.59685000000002 -5.3290705182007514e-14];  % mm
smiData.RigidTransform(171).angle = 1.570796326794897;  % rad
smiData.RigidTransform(171).axis = [-1 2.2204460492503151e-16 2.2204460492503151e-16];
smiData.RigidTransform(171).ID = "AssemblyGround[rigid_body:1:Tie Rod:3:98689A113_General Purpose 18-8 Stainless Steel Washer:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(172).translation = [0 0 0];  % mm
smiData.RigidTransform(172).angle = 0;  % rad
smiData.RigidTransform(172).axis = [0 0 0];
smiData.RigidTransform(172).ID = "AssemblyGround[rigid_body:1:Tie Rod:3:Tie Rod_2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(173).translation = [-34.641016151377301 68.653149999999883 19.999999999999996];  % mm
smiData.RigidTransform(173).angle = 2.2204460492503131e-16;  % rad
smiData.RigidTransform(173).axis = [1 0 0];
smiData.RigidTransform(173).ID = "AssemblyGround[rigid_body:1:Tie Rod:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(174).translation = [2.3980817331903381e-13 71.999999999999986 -40];  % mm
smiData.RigidTransform(174).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(174).axis = [-5.2650556868203021e-17 5.2650556868202997e-17 -1];
smiData.RigidTransform(174).ID = "AssemblyGround[rigid_body:1:91920A596_Female Threaded Hex Standoff:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(175).translation = [-34.641016151377301 71.999999999999986 19.999999999999996];  % mm
smiData.RigidTransform(175).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(175).axis = [-5.2650556868203021e-17 5.2650556868202997e-17 -1];
smiData.RigidTransform(175).ID = "AssemblyGround[rigid_body:1:91920A596_Female Threaded Hex Standoff:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(176).translation = [34.641016151377798 72 20];  % mm
smiData.RigidTransform(176).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(176).axis = [-5.2650556868203021e-17 5.2650556868202997e-17 -1];
smiData.RigidTransform(176).ID = "AssemblyGround[rigid_body:1:91920A596_Female Threaded Hex Standoff:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(177).translation = [-266.99999999999898 2.4868995751603507e-13 194.78999999999996];  % mm
smiData.RigidTransform(177).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(177).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(177).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:PCB, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(178).translation = [-280.24999999999898 4.5000000000002682 195.58999999999997];  % mm
smiData.RigidTransform(178).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(178).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(178).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:Broadcom BCM2711B0 CPU, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(179).translation = [-247.99999999999901 18.360000000000191 195.58999999999997];  % mm
smiData.RigidTransform(179).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(179).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(179).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:2.54 mm DUPONT MALE PIN HEADER, POE, 2X2, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(180).translation = [-276.99999999999898 24.500000000000199 195.58999999999997];  % mm
smiData.RigidTransform(180).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(180).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(180).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:2.54 mm DUPONT MALE PIN HEADER, IO, 2X20, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(181).translation = [-262.99999999999892 -16.499999999999698 195.58999999999997];  % mm
smiData.RigidTransform(181).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(181).axis = [0.57735026918962573 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(181).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:Camera Connector, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(182).translation = [-255.49999999999901 -21.649999999999704 195.58999999999997];  % mm
smiData.RigidTransform(182).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(182).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(182).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:Microphone Plug, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(183).translation = [-305.49999999999892 2.3980817331903381e-13 195.58999999999997];  % mm
smiData.RigidTransform(183).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(183).axis = [0.57735026918962584 -0.57735026918962584 -0.57735026918962573];
smiData.RigidTransform(183).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:Display Connector, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(184).translation = [-221.49999999999898 17.750000000000199 202.34000000000003];  % mm
smiData.RigidTransform(184).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(184).axis = [0.57735026918962573 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(184).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:Gigabit Ethernet Port, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(185).translation = [-269.99999999999898 -27.387499999999704 195.58999999999997];  % mm
smiData.RigidTransform(185).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(185).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(185).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:Female Micro HDMI Connector, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(186).translation = [-283.49999999999898 -27.387499999999704 195.58999999999997];  % mm
smiData.RigidTransform(186).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(186).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(186).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:Female Micro HDMI Connector, RPi4ModelB:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(187).translation = [-298.29999999999899 -26.541865899999699 195.58999999999997];  % mm
smiData.RigidTransform(187).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(187).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(187).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:Female USB Type C Connector, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(188).translation = [-229.92999999999904 -0.99999999999973888 195.59];  % mm
smiData.RigidTransform(188).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(188).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(188).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:2X USB3.0 PORTS, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(189).translation = [-264.74999999999898 4.5000000000002682 195.58999999999997];  % mm
smiData.RigidTransform(189).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(189).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(189).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:91D77 D9WHV 778K, 4 GB LPDDR4 SDRAM, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(190).translation = [-297.49999999999898 14.500000000000197 195.59];  % mm
smiData.RigidTransform(190).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(190).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(190).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:Cypress CYW43455 Wireless Module Cover, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(191).translation = [-302.29999999999899 2.4868995751603507e-13 193.98999999999998];  % mm
smiData.RigidTransform(191).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(191).axis = [-0.57735026918962573 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(191).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:SD Card Slot, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(192).translation = [-249.49999999999903 -3.9999999999997371 195.59];  % mm
smiData.RigidTransform(192).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(192).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(192).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:VIA VL805 PCIe USB 3.0 controller, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(193).translation = [-229.93499999999901 -18.999999999999702 195.44];  % mm
smiData.RigidTransform(193).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(193).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(193).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:2X USB2.0 PORTS, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(194).translation = [-250.49999999999901 10.000000000000195 195.58999999999997];  % mm
smiData.RigidTransform(194).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(194).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(194).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:Broadcom BCM54213PE Gigabit Ethernet Transceiver, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(195).translation = [-299.49999999999898 -15.999999999999698 195.59];  % mm
smiData.RigidTransform(195).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(195).axis = [1 6.5310639498220126e-17 6.5310639498220138e-17];
smiData.RigidTransform(195).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1:MxL7704 Universal PMIC, RPi4ModelB:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(196).translation = [0 0 -159.99999999999997];  % mm
smiData.RigidTransform(196).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(196).axis = [-0 -0 -1];
smiData.RigidTransform(196).ID = "AssemblyGround[rigid_body:1:Raspberry Pi 4 Model B v2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(197).translation = [166.29221453624001 477.20979999999992 216.02656447991103];  % mm
smiData.RigidTransform(197).angle = 2.4188584057763776;  % rad
smiData.RigidTransform(197).axis = [-0.65465367070797709 0.65465367070797709 -0.37796447300922731];
smiData.RigidTransform(197).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:Board:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(198).translation = [-4.4408920985006262e-15 -1.7763568394002505e-14 0];  % mm
smiData.RigidTransform(198).angle = 0;  % rad
smiData.RigidTransform(198).axis = [0 0 0];
smiData.RigidTransform(198).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J11:1:SSW-103-03-TL-D:1:_SSW-103-03-TL-D_terminal:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(199).translation = [-4.4408920985006262e-15 -10.007600000000014 -3.5527136788005009e-14];  % mm
smiData.RigidTransform(199).angle = 0;  % rad
smiData.RigidTransform(199).axis = [0 0 0];
smiData.RigidTransform(199).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J11:1:SSW-103-03-TL-D:1:_SSW-103-03-TL-D_pin:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(200).translation = [255.05732727050002 271.50073242186988 -0.41147983074196759];  % mm
smiData.RigidTransform(200).angle = 2.0943950197980308;  % rad
smiData.RigidTransform(200).axis = [-0.5773502485427352 -0.57735029213144351 0.57735026689469782];
smiData.RigidTransform(200).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J11:1:SSW-103-03-TL-D:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(201).translation = [166.648566669389 477.20979999999997 215.82082447991098];  % mm
smiData.RigidTransform(201).angle = 2.4188584057763776;  % rad
smiData.RigidTransform(201).axis = [-0.65465367070797709 0.65465367070797709 -0.37796447300922731];
smiData.RigidTransform(201).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J11:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(202).translation = [226.9905090332 246.10066223143997 2.6645352591003757e-14];  % mm
smiData.RigidTransform(202).angle = 2.0943951528667708;  % rad
smiData.RigidTransform(202).axis = [0.57735026077736895 0.57735028601415095 0.57735026077735685];
smiData.RigidTransform(202).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J12:1:Samtec-SSW-108-03-T-S:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(203).translation = [166.648566669389 477.20979999999997 215.82082447991098];  % mm
smiData.RigidTransform(203).angle = 2.4188584057763776;  % rad
smiData.RigidTransform(203).axis = [-0.65465367070797709 0.65465367070797709 -0.37796447300922731];
smiData.RigidTransform(203).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J12:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(204).translation = [220.38650512694997 294.36068725584994 2.6645352591003757e-14];  % mm
smiData.RigidTransform(204).angle = 2.0943951528667708;  % rad
smiData.RigidTransform(204).axis = [0.57735026077736895 0.57735028601415095 0.57735026077735685];
smiData.RigidTransform(204).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J1:1:SSW-110-03-X-S:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(205).translation = [166.648566669389 477.20979999999997 215.82082447991098];  % mm
smiData.RigidTransform(205).angle = 2.4188584057763776;  % rad
smiData.RigidTransform(205).axis = [-0.65465367070797709 0.65465367070797709 -0.37796447300922731];
smiData.RigidTransform(205).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(206).translation = [244.77029418945 294.36053466795994 4.4408920985006262e-14];  % mm
smiData.RigidTransform(206).angle = 2.094395120745157;  % rad
smiData.RigidTransform(206).axis = [0.57735028219177897 -0.5773502753069456 -0.57735025007015217];
smiData.RigidTransform(206).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J2:1:Samtec-SSW-108-03-T-S:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(207).translation = [166.648566669389 477.20979999999997 215.82082447991098];  % mm
smiData.RigidTransform(207).angle = 2.4188584057763776;  % rad
smiData.RigidTransform(207).axis = [-0.65465367070797709 0.65465367070797709 -0.37796447300922731];
smiData.RigidTransform(207).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(208).translation = [-3.5527136788005009e-14 0 -1.7763568394002505e-14];  % mm
smiData.RigidTransform(208).angle = 0;  % rad
smiData.RigidTransform(208).axis = [0 0 0];
smiData.RigidTransform(208).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J13:1:SSW-106-03-TL-S:1:_SSW-106-03-TL-S_terminal:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(209).translation = [0 -10.007600000000005 -1.7763568394002505e-14];  % mm
smiData.RigidTransform(209).angle = 0;  % rad
smiData.RigidTransform(209).axis = [0 0 0];
smiData.RigidTransform(209).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J13:1:SSW-106-03-TL-S:1:_SSW-106-03-TL-S_pin:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(210).translation = [247.31048583984003 246.10064697264994 3.5527136788005009e-14];  % mm
smiData.RigidTransform(210).angle = 1.5707963705063137;  % rad
smiData.RigidTransform(210).axis = [0.99999999999999245 8.7422776578035727e-08 8.7422772748633813e-08];
smiData.RigidTransform(210).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J13:1:SSW-106-03-TL-S:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(211).translation = [166.648566669389 477.20979999999997 215.82082447991098];  % mm
smiData.RigidTransform(211).angle = 2.4188584057763776;  % rad
smiData.RigidTransform(211).axis = [-0.65465367070797709 0.65465367070797709 -0.37796447300922731];
smiData.RigidTransform(211).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J13:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(212).translation = [0 -4.4408920985006262e-15 8.8817841970012523e-15];  % mm
smiData.RigidTransform(212).angle = 0;  % rad
smiData.RigidTransform(212).axis = [0 0 0];
smiData.RigidTransform(212).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:D1:1:1636032352:1:Extruded:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(213).translation = [248.91999816893997 271.77999877928994 4.4408920985006262e-14];  % mm
smiData.RigidTransform(213).angle = 0;  % rad
smiData.RigidTransform(213).axis = [0 0 0];
smiData.RigidTransform(213).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:D1:1:1636032352:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(214).translation = [-3.5527136788005009e-14 0 0];  % mm
smiData.RigidTransform(214).angle = 0;  % rad
smiData.RigidTransform(214).axis = [0 0 0];
smiData.RigidTransform(214).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:D1:1:1636032480:1:Extruded (1):1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(215).translation = [248.91999816893997 274.38351440428994 3.5527136788005009e-14];  % mm
smiData.RigidTransform(215).angle = 0;  % rad
smiData.RigidTransform(215).axis = [0 0 0];
smiData.RigidTransform(215).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:D1:1:1636032480:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(216).translation = [0 0 1.7763568394002505e-14];  % mm
smiData.RigidTransform(216).angle = 0;  % rad
smiData.RigidTransform(216).axis = [0 0 0];
smiData.RigidTransform(216).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:D1:1:1636032480:2:Extruded (1):1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(217).translation = [248.92007446289 269.11288452147994 5.3290705182007514e-14];  % mm
smiData.RigidTransform(217).angle = 0;  % rad
smiData.RigidTransform(217).axis = [0 0 0];
smiData.RigidTransform(217).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:D1:1:1636032480:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(218).translation = [166.648566669389 477.20979999999997 215.82082447991098];  % mm
smiData.RigidTransform(218).angle = 2.4188584057763776;  % rad
smiData.RigidTransform(218).axis = [-0.65465367070797709 0.65465367070797709 -0.37796447300922731];
smiData.RigidTransform(218).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:D1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(219).translation = [0 -8.8817841970012523e-15 0];  % mm
smiData.RigidTransform(219).angle = 0;  % rad
smiData.RigidTransform(219).axis = [0 0 0];
smiData.RigidTransform(219).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J5:1:SSW-119-01-G-S:1:_T1SSW-119-01-G-S:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(220).translation = [-7.1054273576010019e-14 -2.6416000000000039 8.8817841970012523e-15];  % mm
smiData.RigidTransform(220).angle = 0;  % rad
smiData.RigidTransform(220).axis = [0 0 0];
smiData.RigidTransform(220).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J5:1:SSW-119-01-G-S:1:_P2SSW-119-01-G-S:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(221).translation = [226.05995178222 254.00012207030994 4.4408920985006262e-14];  % mm
smiData.RigidTransform(221).angle = 3.1415925917725565;  % rad
smiData.RigidTransform(221).axis = [3.09086197494658e-08 -0.70710679664086384 -0.70710676573223019];
smiData.RigidTransform(221).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J5:1:SSW-119-01-G-S:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(222).translation = [166.648566669389 477.20979999999997 215.82082447991098];  % mm
smiData.RigidTransform(222).angle = 2.4188584057763776;  % rad
smiData.RigidTransform(222).axis = [-0.65465367070797709 0.65465367070797709 -0.37796447300922731];
smiData.RigidTransform(222).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J5:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(223).translation = [0 -8.8817841970012523e-15 0];  % mm
smiData.RigidTransform(223).angle = 0;  % rad
smiData.RigidTransform(223).axis = [0 0 0];
smiData.RigidTransform(223).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J6:1:SSW-119-01-G-S:2:_T1SSW-119-01-G-S:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(224).translation = [-3.5527136788005009e-14 -2.6416000000000039 0];  % mm
smiData.RigidTransform(224).angle = 0;  % rad
smiData.RigidTransform(224).axis = [0 0 0];
smiData.RigidTransform(224).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J6:1:SSW-119-01-G-S:2:_P2SSW-119-01-G-S:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(225).translation = [226.05995178222 279.40011596678988 2.6645352591003757e-14];  % mm
smiData.RigidTransform(225).angle = 3.1415925917725565;  % rad
smiData.RigidTransform(225).axis = [3.09086197494658e-08 -0.70710679664086384 -0.70710676573223019];
smiData.RigidTransform(225).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J6:1:SSW-119-01-G-S:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(226).translation = [166.648566669389 477.20979999999997 215.82082447991098];  % mm
smiData.RigidTransform(226).angle = 2.4188584057763776;  % rad
smiData.RigidTransform(226).axis = [-0.65465367070797709 0.65465367070797709 -0.37796447300922731];
smiData.RigidTransform(226).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:J6:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(227).translation = [248.91992187499997 284.48007202147994 -0.050799977034285959];  % mm
smiData.RigidTransform(227).angle = 3.1415925917725565;  % rad
smiData.RigidTransform(227).axis = [3.09086197494658e-08 -0.70710679664086384 -0.70710676573223019];
smiData.RigidTransform(227).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:SW1:1:User_Library-FSM4JSMATR_-_TE_Connectivity_-_SPST_6mm_Tactile_Switch:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(228).translation = [166.648566669389 477.20979999999997 215.82082447991098];  % mm
smiData.RigidTransform(228).angle = 2.4188584057763776;  % rad
smiData.RigidTransform(228).axis = [-0.65465367070797709 0.65465367070797709 -0.37796447300922731];
smiData.RigidTransform(228).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:SW1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(229).translation = [1.7763568394002505e-14 -5.0981441290787188e-12 -7.1054273576010019e-14];  % mm
smiData.RigidTransform(229).angle = 3.6193270602780103e-14;  % rad
smiData.RigidTransform(229).axis = [0 0 -1];
smiData.RigidTransform(229).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:ESP32-DEVKITC-32D--3DModel-STEP-56544 v1:1:board:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(230).translation = [12.699999999999996 -0.8999999999999897 22.859999999999765];  % mm
smiData.RigidTransform(230).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(230).axis = [-0.70710678118654746 5.8878467200641547e-17 0.70710678118654768];
smiData.RigidTransform(230).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:ESP32-DEVKITC-32D--3DModel-STEP-56544 v1:1:header:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(231).translation = [-12.699999999999996 -0.90000000000004299 -22.86000000000012];  % mm
smiData.RigidTransform(231).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(231).axis = [0.70710678118654735 0 0.70710678118654768];
smiData.RigidTransform(231).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:ESP32-DEVKITC-32D--3DModel-STEP-56544 v1:1:header:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(232).translation = [0 0 -17.54999999999999];  % mm
smiData.RigidTransform(232).angle = 0;  % rad
smiData.RigidTransform(232).axis = [0 0 0];
smiData.RigidTransform(232).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:ESP32-DEVKITC-32D--3DModel-STEP-56544 v1:1:ESP32-WROOM-32D:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(233).translation = [-6.2172489379008766e-14 1.2249999999999872 22.049999999999663];  % mm
smiData.RigidTransform(233).angle = 0;  % rad
smiData.RigidTransform(233).axis = [0 0 0];
smiData.RigidTransform(233).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:ESP32-DEVKITC-32D--3DModel-STEP-56544 v1:1:micro usb:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(234).translation = [-7.8593380656212775 -8.8817841970012523e-15 20.160887773071359];  % mm
smiData.RigidTransform(234).angle = 0;  % rad
smiData.RigidTransform(234).axis = [0 0 0];
smiData.RigidTransform(234).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:ESP32-DEVKITC-32D--3DModel-STEP-56544 v1:1:button:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(235).translation = [7.8593380656212108 -2.6822988274943782e-12 20.160887773071501];  % mm
smiData.RigidTransform(235).angle = 1.8207657603852567e-14;  % rad
smiData.RigidTransform(235).axis = [0 0 -1];
smiData.RigidTransform(235).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:ESP32-DEVKITC-32D--3DModel-STEP-56544 v1:1:button:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(236).translation = [43.646288527020104 251.1498 -21.122410709401201];  % mm
smiData.RigidTransform(236).angle = 1.8234765819369589;  % rad
smiData.RigidTransform(236).axis = [-0.77459666924149628 -0.44721359549994671 -0.44721359549994677];
smiData.RigidTransform(236).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1:ESP32-DEVKITC-32D--3DModel-STEP-56544 v1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(237).translation = [0 1.1102230246251565e-15 0];  % mm
smiData.RigidTransform(237).angle = 0;  % rad
smiData.RigidTransform(237).axis = [0 0 0];
smiData.RigidTransform(237).ID = "AssemblyGround[rigid_body:1:ESP32-shield v4:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(238).translation = [-24.499999999999705 306 29.579999999999899];  % mm
smiData.RigidTransform(238).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(238).axis = [1 0 0];
smiData.RigidTransform(238).ID = "AssemblyGround[rigid_body:1:91292A010_18-8 Stainless Steel Socket Head Screw:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(239).translation = [24.500000000000313 306 29.579999999999892];  % mm
smiData.RigidTransform(239).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(239).axis = [1 0 0];
smiData.RigidTransform(239).ID = "AssemblyGround[rigid_body:1:91292A010_18-8 Stainless Steel Socket Head Screw:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(240).translation = [-24.499999999999705 247.99999999999997 29.579999999999899];  % mm
smiData.RigidTransform(240).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(240).axis = [1 0 0];
smiData.RigidTransform(240).ID = "AssemblyGround[rigid_body:1:91292A010_18-8 Stainless Steel Socket Head Screw:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(241).translation = [24.500000000000306 247.99999999999997 29.579999999999892];  % mm
smiData.RigidTransform(241).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(241).axis = [1 0 0];
smiData.RigidTransform(241).ID = "AssemblyGround[rigid_body:1:91292A010_18-8 Stainless Steel Socket Head Screw:4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(242).translation = [21.892114246682503 220.99999999999997 -22.904705839643796];  % mm
smiData.RigidTransform(242).angle = 1.0471975511965981;  % rad
smiData.RigidTransform(242).axis = [0 -1 0];
smiData.RigidTransform(242).ID = "AssemblyGround[rigid_body:1:91292A111_18-8 Stainless Steel Socket Head Screw:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(243).translation = [35.862114246682623 220.99999999999997 1.2920439420935192];  % mm
smiData.RigidTransform(243).angle = 1.0471975511965981;  % rad
smiData.RigidTransform(243).axis = [0 -1 0];
smiData.RigidTransform(243).ID = "AssemblyGround[rigid_body:1:91292A111_18-8 Stainless Steel Socket Head Screw:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(244).translation = [38.402114246682601 273.06999999999994 5.6914529933184621];  % mm
smiData.RigidTransform(244).angle = 1.0471975511965981;  % rad
smiData.RigidTransform(244).axis = [0 -1 0];
smiData.RigidTransform(244).ID = "AssemblyGround[rigid_body:1:91292A111_18-8 Stainless Steel Socket Head Screw:3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(245).translation = [132.82323856740004 6.5130570846542497 19.8025105567385];  % mm
smiData.RigidTransform(245).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(245).axis = [-0.70710678118654757 1.8558743187999112e-16 0.70710678118654746];
smiData.RigidTransform(245).ID = "RootGround[wheel v1:1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(88).mass = 0.0;
smiData.Solid(88).CoM = [0.0 0.0 0.0];
smiData.Solid(88).MoI = [0.0 0.0 0.0];
smiData.Solid(88).PoI = [0.0 0.0 0.0];
smiData.Solid(88).color = [0.0 0.0 0.0];
smiData.Solid(88).opacity = 0.0;
smiData.Solid(88).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.95213479421546354;  % lbm
smiData.Solid(1).CoM = [7.7904761186597191e-09 0 12.184241199097489];  % mm
smiData.Solid(1).MoI = [389.81038817055315 389.81044331175957 688.97598761438371];  % lbm*mm^2
smiData.Solid(1).PoI = [-1.6254507016353482e-13 -5.2824249649237308e-10 -3.9349942157819479e-13];  % lbm*mm^2
smiData.Solid(1).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "wheel v1.ipt_{679CE2D4-4A5E-C441-0C58-B08E168C3868}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.6180141772024772;  % lbm
smiData.Solid(2).CoM = [-0.0014174031385892276 10.401305347758987 -2.8851186910532892e-14];  % mm
smiData.Solid(2).MoI = [110.00250505222128 172.13875268308519 110.00083936011347];  % lbm*mm^2
smiData.Solid(2).PoI = [0 0 0.017824952288800874];  % lbm*mm^2
smiData.Solid(2).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Stepper Motor v2.ipt_{4DD1FF9E-40DE-585F-2D5B-6CB72D9554BC}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.016637007613660611;  % lbm
smiData.Solid(3).CoM = [7.0873937594695004e-10 17.000000000000014 -5.1969847736329784e-15];  % mm
smiData.Solid(3).MoI = [1.7732276950029464 0.34105863393870556 1.7732277391677096];  % lbm*mm^2
smiData.Solid(3).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(3).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Spacer.ipt_{BFA5B6C8-4DF9-28CB-8FC5-21984738333F}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.0061461007682335903;  % lbm
smiData.Solid(4).CoM = [0.0023859645391748653 0 -0.11590477749281278];  % mm
smiData.Solid(4).MoI = [0.12221527933054727 0.34292344961272536 0.22204643148260442];  % lbm*mm^2
smiData.Solid(4).PoI = [0 9.7006260072831447e-05 0];  % lbm*mm^2
smiData.Solid(4).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Base.ipt_{BB93CFBA-45C4-998A-D381-4A8E15FA50CC}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.00028852677903389278;  % lbm
smiData.Solid(5).CoM = [0 1.542233136748987 0];  % mm
smiData.Solid(5).MoI = [0.0010091652673630432 0.00021375855605938309 0.0010005886945303154];  % lbm*mm^2
smiData.Solid(5).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(5).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "pin header.ipt_{1E564E3D-4E8C-C542-1B46-C7A5A9619846}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.0002559733925916353;  % lbm
smiData.Solid(6).CoM = [0 0.42190165090881865 7.7993963846748002e-14];  % mm
smiData.Solid(6).MoI = [0.00038160722805178731 0.00072836858107253228 0.00038160722805453658];  % lbm*mm^2
smiData.Solid(6).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(6).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "sensor chip.ipt_{9C83DEF7-40E4-5E58-C1D9-869FC8A42E88}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.00010710662639956594;  % lbm
smiData.Solid(7).CoM = [-4.1126415456985773e-09 -0.13742616673914221 -0.022794787833140109];  % mm
smiData.Solid(7).MoI = [5.0595399332804223e-05 0.00011235253314338083 8.8868178025163706e-05];  % lbm*mm^2
smiData.Solid(7).PoI = [-1.0831994392561979e-06 -2.9163350340469863e-12 -2.8743898683822512e-13];  % lbm*mm^2
smiData.Solid(7).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = "S2NH chip.ipt_{3B9983D8-4DB8-192B-C2F6-9CB8FCADBB20}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 2.4245689920836562e-05;  % lbm
smiData.Solid(8).CoM = [0 0.3864421581892486 0];  % mm
smiData.Solid(8).MoI = [2.9806279778028844e-06 9.8891104798914381e-06 1.0024014339290203e-05];  % lbm*mm^2
smiData.Solid(8).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(8).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = "Resistor small.ipt_{3E6C9B19-43A7-826C-FEAE-00AC2FA973C1}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 1.371374064723611e-05;  % lbm
smiData.Solid(9).CoM = [0 0.2079595981610991 0];  % mm
smiData.Solid(9).MoI = [1.0636235745393942e-06 5.9839352661210616e-06 5.3925065878954908e-06];  % lbm*mm^2
smiData.Solid(9).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(9).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = "Resistor small black.ipt_{41FC6209-4668-A2E7-E455-1DAAC7F42C9D}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 1.5507954410103529e-05;  % lbm
smiData.Solid(10).CoM = [0 0.3702626639983938 8.7719809593006086e-15];  % mm
smiData.Solid(10).MoI = [3.550703043951898e-06 3.4814141872746493e-06 1.8684396372633517e-06];  % lbm*mm^2
smiData.Solid(10).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(10).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = "Small LED.ipt_{639BC90C-47F6-55EA-AC26-2DAF1BC4373B}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(11).mass = 0.00012758109923801083;  % lbm
smiData.Solid(11).CoM = [0 -0.013298875618763528 0];  % mm
smiData.Solid(11).MoI = [5.1198297371303614e-05 0.00012837726086615408 0.00012619311253482917];  % lbm*mm^2
smiData.Solid(11).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(11).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(11).opacity = 1;
smiData.Solid(11).ID = "Resistor black.ipt_{C46B481E-4816-179E-58EC-8FAF97E16DF7}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(12).mass = 0.001662697912775319;  % lbm
smiData.Solid(12).CoM = [-0.0057637279263740709 0.0021119827653716021 0.24298199086223063];  % mm
smiData.Solid(12).MoI = [0.012627683562138179 0.012610829058666742 0.0049632584277020386];  % lbm*mm^2
smiData.Solid(12).PoI = [-1.2778838468999008e-05 3.4096970985876589e-05 -6.739428417077763e-06];  % lbm*mm^2
smiData.Solid(12).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(12).opacity = 1;
smiData.Solid(12).ID = "90751A110_18-8 Stainless Steel Socket Head Screws.ipt_{881F94C4-4421-D853-6237-B599B330E962}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(13).mass = 0.00053761445364147059;  % lbm
smiData.Solid(13).CoM = [0.00034931027391122457 -2.3819466211016223 0.00091218455427091326];  % mm
smiData.Solid(13).MoI = [0.0016844687229999244 0.0016069510411488097 0.0018564338180002431];  % lbm*mm^2
smiData.Solid(13).PoI = [5.5612283729813178e-07 -4.9866397285471222e-08 -2.2999158604860128e-06];  % lbm*mm^2
smiData.Solid(13).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(13).opacity = 1;
smiData.Solid(13).ID = "94510A030_Brass Screw-to-Expand Inserts.ipt_{B5C2AE9F-4559-4099-E586-8B80819358AC}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(14).mass = 0.17972631228764294;  % lbm
smiData.Solid(14).CoM = [0.00024737056595729048 17.086193702836979 0.0044715970687496023];  % mm
smiData.Solid(14).MoI = [254.20930151431114 372.03079422453538 234.04751803715263];  % lbm*mm^2
smiData.Solid(14).PoI = [-0.077123537336815498 -0.00031147762051955002 0.0008186940212619795];  % lbm*mm^2
smiData.Solid(14).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(14).opacity = 1;
smiData.Solid(14).ID = "Tilt Chassis.ipt_{20BF773B-4E1F-BB7B-1F5D-3791EC6936E3}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(15).mass = 0.0007575366718437208;  % lbm
smiData.Solid(15).CoM = [4.6863962317535727e-10 0 -0.00023282050628989359];  % mm
smiData.Solid(15).MoI = [0.004737298654988285 0.0047372996759300007 0.0093737958137088424];  % lbm*mm^2
smiData.Solid(15).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(15).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(15).opacity = 1;
smiData.Solid(15).ID = "98687A134_General Purpose Steel Washer.ipt_{7FF3B513-4589-00DF-3BEA-77AD835D2324}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(16).mass = 0.010132831535239171;  % lbm
smiData.Solid(16).CoM = [-0.0023532081889185252 -0.00062422016985918172 3.9373208853978605];  % mm
smiData.Solid(16).MoI = [1.8115437249657527 1.8115364956611655 0.029970744068283872];  % lbm*mm^2
smiData.Solid(16).PoI = [-0.00014168777788531163 -0.00052836372096017287 2.2911104513819502e-05];  % lbm*mm^2
smiData.Solid(16).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(16).opacity = 1;
smiData.Solid(16).ID = "91292A132_18-8 Stainless Steel Socket Head Screw.ipt_{EC5C31DA-4B3A-AFFA-5201-99B6E3320057}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(17).mass = 0.72243745407104487;  % lbm
smiData.Solid(17).CoM = [3.3630840927463275e-09 2.3188717246064763 -0.00099618161936741874];  % mm
smiData.Solid(17).MoI = [416.98671950582167 769.07194115466382 406.74450766149414];  % lbm*mm^2
smiData.Solid(17).PoI = [-0.00057522481646602591 7.4278873028040009e-07 6.6122555793855044e-08];  % lbm*mm^2
smiData.Solid(17).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(17).opacity = 1;
smiData.Solid(17).ID = "Battery Holder.ipt_{1E1A0695-4DE5-0B07-2336-14A8E1E2211E}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(18).mass = 0.00088706455274212032;  % lbm
smiData.Solid(18).CoM = [-0.072818840768527932 9.9846932341537808 -0.0035470509754605773];  % mm
smiData.Solid(18).MoI = [0.053699653652496911 0.015707030342576249 0.0534666215517067];  % lbm*mm^2
smiData.Solid(18).PoI = [-0.0015490131401384973 1.0947548052458185e-05 3.2316688084008418e-05];  % lbm*mm^2
smiData.Solid(18).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(18).opacity = 1;
smiData.Solid(18).ID = "Battery Spring.ipt_{2D5F54A8-4BB0-0B53-94DF-448E0A8BCEE3}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(19).mass = 2.1778401759148394;  % lbm
smiData.Solid(19).CoM = [0 63.500000000000007 0];  % mm
smiData.Solid(19).MoI = [3026.579800157363 400.51990828867002 3228.3374743530485];  % lbm*mm^2
smiData.Solid(19).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(19).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(19).opacity = 1;
smiData.Solid(19).ID = "NiMH Battery v2.ipt_{FB10F661-4CD2-A405-7886-65B42254AA38}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(20).mass = 0.066058706701299458;  % lbm
smiData.Solid(20).CoM = [7.0873985501056728e-10 67.500000000000028 -1.5124722765075075e-14];  % mm
smiData.Solid(20).MoI = [101.00376241464987 1.3542033994625036 101.00376259000996];  % lbm*mm^2
smiData.Solid(20).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(20).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(20).opacity = 1;
smiData.Solid(20).ID = "Battery Strut.ipt_{3409DB74-4276-781E-CB12-B6955F938C36}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(21).mass = 0.46239601939452912;  % lbm
smiData.Solid(21).CoM = [0.031558945385952261 28.875812927725811 -0.054661652869995567];  % mm
smiData.Solid(21).MoI = [303.15365261012948 607.30944313635337 307.42412312901314];  % lbm*mm^2
smiData.Solid(21).PoI = [0.0054500053684667076 4.70782519172813 -0.0031465802766783451];  % lbm*mm^2
smiData.Solid(21).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(21).opacity = 1;
smiData.Solid(21).ID = "Battery Holder Top.ipt_{FABF4E8F-4AEF-7CDC-E0EA-E9B3F35AFD97}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(22).mass = 0.0023801602906917312;  % lbm
smiData.Solid(22).CoM = [-0.00063923617843513261 0.00021159886909916033 2.4607145120178302];  % mm
smiData.Solid(22).MoI = [0.027323130027519061 0.027324950078076168 0.0066971613284190845];  % lbm*mm^2
smiData.Solid(22).PoI = [-5.5919219157006544e-06 7.2085789668930313e-07 8.7061384855844238e-07];  % lbm*mm^2
smiData.Solid(22).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(22).opacity = 1;
smiData.Solid(22).ID = "93655A095_Male-Female Threaded Hex Standoff.ipt_{F09960B1-41FF-6B88-AC6D-E2B125D1C544}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(23).mass = 0.20206917003599245;  % lbm
smiData.Solid(23).CoM = [99.931171589310821 100.00572430638785 0.79571977000000071];  % mm
smiData.Solid(23).MoI = [124.91642199285198 124.15533765955864 248.98646356789931];  % lbm*mm^2
smiData.Solid(23).PoI = [0 0 -0.18303914918819258];  % lbm*mm^2
smiData.Solid(23).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(23).opacity = 1;
smiData.Solid(23).ID = "Open CASCADE STEP translator 6.8 11.1.1.ipt_{C0125F1F-4415-53B9-1F67-D0B5CD72FDA6}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(24).mass = 0.030002277600507683;  % lbm
smiData.Solid(24).CoM = [-4.5703815300520239 7.7762245382379733 15.237857958918042];  % mm
smiData.Solid(24).MoI = [0.98134324844848009 0.52163849263130291 0.98407305631288378];  % lbm*mm^2
smiData.Solid(24).PoI = [0.0029432488757835723 0.0027172110164958231 0.012094514767312414];  % lbm*mm^2
smiData.Solid(24).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(24).opacity = 1;
smiData.Solid(24).ID = "TB010-508-02P_Blue_-_S.ipt_{A825795C-4F10-65B7-8A10-13AAF1AD169C}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(25).mass = 0.0012575203796442848;  % lbm
smiData.Solid(25).CoM = [5.0800000000000036 1.0453253764820418 1.243198074590623];  % mm
smiData.Solid(25).MoI = [0.0067902802318350903 0.016219952389296518 0.011770431946131019];  % lbm*mm^2
smiData.Solid(25).PoI = [-0.00080897302861258056 0 0];  % lbm*mm^2
smiData.Solid(25).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(25).opacity = 1;
smiData.Solid(25).ID = "961104-5804-XX_RGB16777215.ipt_{4259ACB7-402C-35A2-ABC6-4BB888974786}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(26).mass = 0.00057039976523928716;  % lbm
smiData.Solid(26).CoM = [-0.00093618207915818026 5.7805642208297137 7.6185690189401154e-13];  % mm
smiData.Solid(26).MoI = [0.0045972336137821632 0.012972253061714432 0.017316891176914373];  % lbm*mm^2
smiData.Solid(26).PoI = [0 0 -2.8895161224485233e-06];  % lbm*mm^2
smiData.Solid(26).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(26).opacity = 1;
smiData.Solid(26).ID = "User_Library-OAR5R005FLF.ipt_{7EB75D36-4B10-65C9-D0AD-75AFC104F758}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(27).mass = 0.0050118828238051192;  % lbm
smiData.Solid(27).CoM = [-0.04462311509440807 4.1984515025767539 0];  % mm
smiData.Solid(27).MoI = [0.13664243326127831 0.1076447445241737 0.035189441132498868];  % lbm*mm^2
smiData.Solid(27).PoI = [0 0 -0.0012794088714077315];  % lbm*mm^2
smiData.Solid(27).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(27).opacity = 1;
smiData.Solid(27).ID = "SSW-106-02-X-S-RA.ipt_{13171AE9-41A9-FA58-4974-2BA6A8E07766}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(28).mass = 0.0065744216535433163;  % lbm
smiData.Solid(28).CoM = [0.0016949255308592588 0 6.0193435303679186];  % mm
smiData.Solid(28).MoI = [0.098480913285913282 0.098566209675547231 0.032565744270959616];  % lbm*mm^2
smiData.Solid(28).PoI = [0 -2.4977084416748331e-06 0];  % lbm*mm^2
smiData.Solid(28).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(28).opacity = 1;
smiData.Solid(28).ID = "PNSC-ECA-1VM101.ipt_{BAB81C01-46C1-ECAD-494B-BF82F28B3330}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(29).mass = 0.025983032513164018;  % lbm
smiData.Solid(29).CoM = [5.9793326367957045 1.9032119833075665 0.38557028497209905];  % mm
smiData.Solid(29).MoI = [0.33877191972102844 1.4938731526619069 1.6839299427135139];  % lbm*mm^2
smiData.Solid(29).PoI = [-0.0087981395815648657 -0.027071308219050565 0.00016394167983923734];  % lbm*mm^2
smiData.Solid(29).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(29).opacity = 1;
smiData.Solid(29).ID = "CUI_P783F-Q24-S5-S.ipt_{F1284A7A-4C34-0DB8-E278-A8813942278B}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(30).mass = 0.02422612335819015;  % lbm
smiData.Solid(30).CoM = [-0.40252555038887056 7.1797690371774792 0.96250641087282052];  % mm
smiData.Solid(30).MoI = [0.91310055664049028 1.7039333784808748 1.1969839092490546];  % lbm*mm^2
smiData.Solid(30).PoI = [-0.022329105093132452 0.039282368970464776 0.0062959778180067807];  % lbm*mm^2
smiData.Solid(30).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(30).opacity = 1;
smiData.Solid(30).ID = "l202021ma04_RGB3158064.ipt_{4F4F5258-4179-549B-0D1D-A69C4B7F3FDD}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(31).mass = 0.00045512249890116503;  % lbm
smiData.Solid(31).CoM = [1.6577134874384025e-05 7.7239248328230675e-14 1.1030044281751921];  % mm
smiData.Solid(31).MoI = [0.00033770323603742519 0.0030531605885924362 0.0029524727906962258];  % lbm*mm^2
smiData.Solid(31).PoI = [0 -8.2979576093352936e-10 -9.7555937786455196e-09];  % lbm*mm^2
smiData.Solid(31).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(31).opacity = 1;
smiData.Solid(31).ID = "User_Library-Res40-Axial_Short_0_25W-5_6K.ipt_{8E435D24-4A5C-1835-E81C-FB9170C89FFD}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(32).mass = 0.0097218611185988669;  % lbm
smiData.Solid(32).CoM = [-4.8628017044295716e-06 -1.412414928227739 -8.1794664133826771];  % mm
smiData.Solid(32).MoI = [0.1828856237016325 0.28654798738491288 0.1913465999889655];  % lbm*mm^2
smiData.Solid(32).PoI = [-0.026036928629530554 1.9882087479624321e-07 -2.0788052566103942e-07];  % lbm*mm^2
smiData.Solid(32).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(32).opacity = 1;
smiData.Solid(32).ID = "USB_Connector_Type_A_TH_female.ipt_{1CA83AEF-4DC0-6B6D-32B9-04BD00921494}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(33).mass = 0.0029865926486476796;  % lbm
smiData.Solid(33).CoM = [-0.017595121359076208 2.4644948036911574 -3.4124582897073133e-07];  % mm
smiData.Solid(33).MoI = [0.092749885069369681 0.0091439097949195507 0.093010360954336485];  % lbm*mm^2
smiData.Solid(33).PoI = [-2.7487026703176377e-08 -1.2443832382614599e-09 -0.00032358106748165132];  % lbm*mm^2
smiData.Solid(33).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(33).opacity = 1;
smiData.Solid(33).ID = "WP7113GD.ipt_{D3BAF5E8-44E4-50FB-D9F1-19BC429FA3BF}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(34).mass = 5.0621200664731754e-05;  % lbm
smiData.Solid(34).CoM = [-1.2699971285496012e-06 4.2333046623838367e-07 0.64999997000000009];  % mm
smiData.Solid(34).MoI = [1.6620717505667704e-05 1.6620653216689967e-05 1.8983067184609409e-05];  % lbm*mm^2
smiData.Solid(34).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(34).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(34).opacity = 1;
smiData.Solid(34).ID = "Extruded.ipt_{99F170DC-454B-1BA3-C1C7-BFAA21242A42}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(35).mass = 0.0001297968506259481;  % lbm
smiData.Solid(35).CoM = [-1.5874979680377572e-06 2.0461189626704632e-06 0.50000027000000002];  % mm
smiData.Solid(35).MoI = [0.00028122695078288762 3.5153145624734155e-05 0.00029474726460652434];  % lbm*mm^2
smiData.Solid(35).PoI = [0 0 -1.5797350055747946e-10];  % lbm*mm^2
smiData.Solid(35).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(35).opacity = 1;
smiData.Solid(35).ID = "Extruded (1).ipt_{C2BBFF70-48D9-4062-07AA-C6B67F5565B4}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(36).mass = 0.0080630344641043124;  % lbm
smiData.Solid(36).CoM = [-2.3293856191874159e-06 3.1746062134225852e-06 2.50000008];  % mm
smiData.Solid(36).MoI = [0.079368830009730371 0.079446639262342619 0.12521949018816245];  % lbm*mm^2
smiData.Solid(36).PoI = [0 0 -5.7653195088955598e-08];  % lbm*mm^2
smiData.Solid(36).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(36).opacity = 1;
smiData.Solid(36).ID = "Extruded (2).ipt_{A4400586-42D3-F975-2C97-D0AD5F738E7E}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(37).mass = 0.0065017497361851808;  % lbm
smiData.Solid(37).CoM = [0 4.2932408085832332 0];  % mm
smiData.Solid(37).MoI = [0.27605771412527624 0.24032254983778384 0.042503164445369633];  % lbm*mm^2
smiData.Solid(37).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(37).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(37).opacity = 1;
smiData.Solid(37).ID = "Samtec-SSW-108-01-G-S.ipt_{BBBD9B59-4827-35B8-2017-BBAF460E5B65}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(38).mass = 0.013496734157065695;  % lbm
smiData.Solid(38).CoM = [0 4.0578382581357966 -2.7638863158005582e-12];  % mm
smiData.Solid(38).MoI = [0.21312421100819517 0.72763375243290618 0.72637233388944178];  % lbm*mm^2
smiData.Solid(38).PoI = [-1.2485775332593146e-13 0 0];  % lbm*mm^2
smiData.Solid(38).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(38).opacity = 1;
smiData.Solid(38).ID = "CFH02_RGB52479.ipt_{C1512619-4CA3-D05D-0F33-4184425736DB}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(39).mass = 0.00045037207672223966;  % lbm
smiData.Solid(39).CoM = [-0.00019170365798688177 -5.1689051561072495e-05 1.1589527485163644];  % mm
smiData.Solid(39).MoI = [0.00043361421389508559 0.0018838541462391444 0.0017358556767028443];  % lbm*mm^2
smiData.Solid(39).PoI = [3.1343333091116573e-08 -6.9844855692867555e-08 2.3267370661512626e-08];  % lbm*mm^2
smiData.Solid(39).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(39).opacity = 1;
smiData.Solid(39).ID = "User_Library-DO-41-30.ipt_{38974EDE-4334-0D45-0A1E-30B626179B66}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(40).mass = 0.0016136986531604509;  % lbm
smiData.Solid(40).CoM = [-0.00029670973780203689 -0.00045139593777757136 -5.8372834207087294];  % mm
smiData.Solid(40).MoI = [0.011954674391944899 0.011953844287215389 0.0048863856653740025];  % lbm*mm^2
smiData.Solid(40).PoI = [6.5747666083477446e-07 -3.6110039869271523e-07 2.3704414023241547e-06];  % lbm*mm^2
smiData.Solid(40).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(40).opacity = 1;
smiData.Solid(40).ID = "91292A111_18-8 Stainless Steel Socket Head Screw.ipt_{DA74DF8B-4019-981E-99E6-E5AC4CCBA6C8}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(41).mass = 0.0017632647182287294;  % lbm
smiData.Solid(41).CoM = [-0.0018003384853123145 0.00042345157689912746 9.1000819676091883e-05];  % mm
smiData.Solid(41).MoI = [0.0087636043414332267 0.0089812421579089467 0.014830836500365503];  % lbm*mm^2
smiData.Solid(41).PoI = [5.3827075505749039e-06 5.3096229357333648e-07 -0.00013268578361817237];  % lbm*mm^2
smiData.Solid(41).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(41).opacity = 1;
smiData.Solid(41).ID = "91828A231_18-8 Stainless Steel Hex Nut.ipt_{0A683688-4894-D314-8E80-6690BD042562}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(42).mass = 0.00029964303447732501;  % lbm
smiData.Solid(42).CoM = [0 -3.6569822294513459e-14 -0.0075990841130527545];  % mm
smiData.Solid(42).MoI = [0.0015474300351915537 0.0015474300351917851 0.0030830842183486801];  % lbm*mm^2
smiData.Solid(42).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(42).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(42).opacity = 1;
smiData.Solid(42).ID = "98689A113_General Purpose 18-8 Stainless Steel Washer.ipt_{1CD39A13-4467-E33D-6A90-329C3F82858F}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(43).mass = 0.0033579940713479545;  % lbm
smiData.Solid(43).CoM = [-0.00038151886225158579 78.966401671230955 0.0014371074866051338];  % mm
smiData.Solid(43).MoI = [6.9924637163033516 0.031297276225917971 6.9924392503885215];  % lbm*mm^2
smiData.Solid(43).PoI = [0.00011567123496836547 1.76496932227366e-06 -8.195577665720293e-05];  % lbm*mm^2
smiData.Solid(43).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(43).opacity = 1;
smiData.Solid(43).ID = "Tie Rod.ipt_{4F3AA2D5-49E3-E6C2-09C9-BC9613E73336}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(44).mass = 0.68228159101559527;  % lbm
smiData.Solid(44).CoM = [9.2531639213805029e-07 43.307536287977591 0.00012119287106218965];  % mm
smiData.Solid(44).MoI = [1364.2992413603683 993.51106545533162 1364.2992704927285];  % lbm*mm^2
smiData.Solid(44).PoI = [-0.0041945668705003509 -1.1112140959149038e-05 -3.1982923312313582e-05];  % lbm*mm^2
smiData.Solid(44).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(44).opacity = 1;
smiData.Solid(44).ID = "Chassis.ipt_{CB255870-4C81-5A40-A6C4-F1949B79EC0E}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(45).mass = 0.0018434571251062467;  % lbm
smiData.Solid(45).CoM = [0.00033451828786071032 -0.0025399935706001261 0.00037029358773684915];  % mm
smiData.Solid(45).MoI = [0.012611247374548495 0.012633805166178199 0.0063528563871792171];  % lbm*mm^2
smiData.Solid(45).PoI = [1.0551513977032999e-05 2.5910993907105202e-07 3.2672979897164946e-07];  % lbm*mm^2
smiData.Solid(45).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(45).opacity = 1;
smiData.Solid(45).ID = "94868A163_Female Threaded Hex Standoff.ipt_{36111BAE-42C3-1EFC-5C40-ED9464DA1351}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(46).mass = 0.0042996717316421936;  % lbm
smiData.Solid(46).CoM = [0.00014085514351208926 0.00033630854424561207 0.00051486577167078964];  % mm
smiData.Solid(46).MoI = [0.047110877804959372 0.04711198924643889 0.025442391949836298];  % lbm*mm^2
smiData.Solid(46).PoI = [3.8390940776309521e-06 2.7429604741548412e-06 1.0674274499958137e-06];  % lbm*mm^2
smiData.Solid(46).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(46).opacity = 1;
smiData.Solid(46).ID = "94868A006_Female Threaded Hex Standoff.ipt_{D24D65FF-4ACD-A11A-BF14-B9B55A5D28A6}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(47).mass = 0.003006043374446505;  % lbm
smiData.Solid(47).CoM = [-0.099318997800867823 -0.6537576463470901 -3.9410095115213117];  % mm
smiData.Solid(47).MoI = [0.014679318931785491 0.012827919573029742 0.00436715659398847];  % lbm*mm^2
smiData.Solid(47).PoI = [0.0017365926366921152 0.00022632620387458128 -0.00013430373279913602];  % lbm*mm^2
smiData.Solid(47).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(47).opacity = 1;
smiData.Solid(47).ID = "91292A010_18-8 Stainless Steel Socket Head Screw.ipt_{E05F2865-4961-C3B7-155F-83A112023D8C}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(48).mass = 0.0016136986531604509;  % lbm
smiData.Solid(48).CoM = [-0.00029670973780203689 -0.00045139593777757136 -5.8372834207087294];  % mm
smiData.Solid(48).MoI = [0.011954674391944899 0.011953844287215389 0.0048863856653740025];  % lbm*mm^2
smiData.Solid(48).PoI = [6.5747666083477446e-07 -3.6110039869271523e-07 2.3704414023241547e-06];  % lbm*mm^2
smiData.Solid(48).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(48).opacity = 1;
smiData.Solid(48).ID = "91292A111_18-8 Stainless Steel Socket Head Screw_1.ipt_{15B32AE6-4045-AF0E-ACED-73BB660F49A1}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(49).mass = 0.0033579940713479545;  % lbm
smiData.Solid(49).CoM = [-0.00038151886225158579 78.966401671230955 0.0014371074866051338];  % mm
smiData.Solid(49).MoI = [6.9924637163033516 0.031297276225917971 6.9924392503885215];  % lbm*mm^2
smiData.Solid(49).PoI = [0.00011567123496836547 1.76496932227366e-06 -8.195577665720293e-05];  % lbm*mm^2
smiData.Solid(49).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(49).opacity = 1;
smiData.Solid(49).ID = "Tie Rod_1.ipt_{569825E2-4F02-CCBA-E7E0-F7AB1E40CF5C}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(50).mass = 0.0033579940713479545;  % lbm
smiData.Solid(50).CoM = [-0.00038151886225158579 78.966401671230955 0.0014371074866051338];  % mm
smiData.Solid(50).MoI = [6.9924637163033516 0.031297276225917971 6.9924392503885215];  % lbm*mm^2
smiData.Solid(50).PoI = [0.00011567123496836547 1.76496932227366e-06 -8.195577665720293e-05];  % lbm*mm^2
smiData.Solid(50).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(50).opacity = 1;
smiData.Solid(50).ID = "Tie Rod_2.ipt_{AE52CCDF-4DC6-9E5B-A453-25844DCA82F1}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(51).mass = 0.0029944635134009378;  % lbm
smiData.Solid(51).CoM = [4.003849743606394 4.4317176199119086e-05 0.00076730288572896921];  % mm
smiData.Solid(51).MoI = [0.019374816684454291 0.025250930504549306 0.025257387208703751];  % lbm*mm^2
smiData.Solid(51).PoI = [-5.7782142465641401e-07 7.2092909771196014e-06 7.9413063772334154e-06];  % lbm*mm^2
smiData.Solid(51).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(51).opacity = 1;
smiData.Solid(51).ID = "91920A596_Female Threaded Hex Standoff.ipt_{14920376-4B72-9138-8680-B9AE4B4E58E5}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(52).mass = 0.12990323667023232;  % lbm
smiData.Solid(52).CoM = [0.12078223333929099 0 0.17259459791388343];  % mm
smiData.Solid(52).MoI = [33.352402378771771 111.31316262523684 78.016159484774789];  % lbm*mm^2
smiData.Solid(52).PoI = [0 0.17056541263481642 0];  % lbm*mm^2
smiData.Solid(52).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(52).opacity = 1;
smiData.Solid(52).ID = "PCB, RPi4ModelB.ipt_{2892FD78-41DC-D77A-C88B-D6A8283D5941}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(53).mass = 0.0075372897643925987;  % lbm
smiData.Solid(53).CoM = [0.0087162572583110373 1.0317013031279518 -0.0087162572583154973];  % mm
smiData.Solid(53).MoI = [0.12627997273304312 0.24649017885363658 0.12627997273304317];  % lbm*mm^2
smiData.Solid(53).PoI = [-2.1573305288777403e-06 -0.00044746732833147849 2.1573305288851023e-06];  % lbm*mm^2
smiData.Solid(53).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(53).opacity = 1;
smiData.Solid(53).ID = "Broadcom BCM2711B0 CPU, RPi4ModelB.ipt_{937559FD-4B7F-2BD9-3700-1CA1665AB51D}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(54).mass = 0.0011614176540613605;  % lbm
smiData.Solid(54).CoM = [0 1.755281810624628 0];  % mm
smiData.Solid(54).MoI = [0.0062408285873331165 0.0046446448796988163 0.0061865872650992337];  % lbm*mm^2
smiData.Solid(54).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(54).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(54).opacity = 1;
smiData.Solid(54).ID = "2.54 mm DUPONT MALE PIN HEADER, POE, 2X2, RPi4ModelB.ipt_{4C15887A-493A-B72A-942D-848C956FD939}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(55).mass = 0.011738781811200539;  % lbm
smiData.Solid(55).CoM = [-1.1030041102934247e-13 1.7499183259165785 0];  % mm
smiData.Solid(55).MoI = [0.062507982505081869 2.5405812226348878 2.5560936975062125];  % lbm*mm^2
smiData.Solid(55).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(55).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(55).opacity = 1;
smiData.Solid(55).ID = "2.54 mm DUPONT MALE PIN HEADER, IO, 2X20, RPi4ModelB.ipt_{724E473A-4DBF-262D-A55B-4DB063935CF6}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(56).mass = 0.004940298057190917;  % lbm
smiData.Solid(56).CoM = [2.3871552682338088e-13 2.7702361962697806 0.15477922141253733];  % mm
smiData.Solid(56).MoI = [0.019157926890543572 0.17771962935911162 0.18678107443818515];  % lbm*mm^2
smiData.Solid(56).PoI = [-0.001440221256828224 0 0];  % lbm*mm^2
smiData.Solid(56).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(56).opacity = 1;
smiData.Solid(56).ID = "Camera Connector, RPi4ModelB.ipt_{4BE6693C-4F0F-F9B9-6755-9A8C61134111}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(57).mass = 0.0057325996791376078;  % lbm
smiData.Solid(57).CoM = [0.005082781988269623 2.8250890636702226 1.1612941509636849];  % mm
smiData.Solid(57).MoI = [0.13235595721960119 0.14140963918993363 0.04899210814067536];  % lbm*mm^2
smiData.Solid(57).PoI = [0.00071937582209801853 0.0003218953952818474 4.0162693665566162e-05];  % lbm*mm^2
smiData.Solid(57).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(57).opacity = 1;
smiData.Solid(57).ID = "Microphone Plug, RPi4ModelB.ipt_{D9F2ED14-49EB-3225-ABEB-20AE93EB0955}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(58).mass = 0.004940298057190917;  % lbm
smiData.Solid(58).CoM = [2.3871552682338088e-13 2.7702361962697806 0.15477922141253733];  % mm
smiData.Solid(58).MoI = [0.019157926890543572 0.17771962935911162 0.18678107443818515];  % lbm*mm^2
smiData.Solid(58).PoI = [-0.001440221256828224 0 0];  % lbm*mm^2
smiData.Solid(58).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(58).opacity = 1;
smiData.Solid(58).ID = "Display Connector, RPi4ModelB.ipt_{74DA3EA1-44F1-7C05-1952-F697B8D55C84}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(59).mass = 0.060416520714409276;  % lbm
smiData.Solid(59).CoM = [0.00081680043084510299 0.19907686804901834 -12.316615482518884];  % mm
smiData.Solid(59).MoI = [3.0939684324183876 3.4910158383225309 2.4967628722254362];  % lbm*mm^2
smiData.Solid(59).PoI = [-0.034393128091457593 -0.00066153457143056148 3.5615464299190373e-05];  % lbm*mm^2
smiData.Solid(59).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(59).opacity = 1;
smiData.Solid(59).ID = "Gigabit Ethernet Port, RPi4ModelB.ipt_{0B79999F-410C-2C56-1AB5-A2AD8B9EC88D}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(60).mass = 0.0010869473068513193;  % lbm
smiData.Solid(60).CoM = [-0.00046819193972186235 1.5802753380982602 -1.8059837314770362];  % mm
smiData.Solid(60).MoI = [0.0044672061664923464 0.0079820748890747743 0.0052271366992375414];  % lbm*mm^2
smiData.Solid(60).PoI = [0.00018273802573518809 8.3636278811252045e-07 -7.5622683867275074e-07];  % lbm*mm^2
smiData.Solid(60).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(60).opacity = 1;
smiData.Solid(60).ID = "Female Micro HDMI Connector, RPi4ModelB.ipt_{D16EEA38-4C77-518C-314F-CA9BEA672F9E}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(61).mass = 0.0022443076883969064;  % lbm
smiData.Solid(61).CoM = [2.4931683127180552e-07 1.5934084830568449 -1.8323999962502771];  % mm
smiData.Solid(61).MoI = [0.011826744461499509 0.023931008564965668 0.015853718153420817];  % lbm*mm^2
smiData.Solid(61).PoI = [-8.3249089151763027e-05 -2.4664645738212089e-09 7.6154566168615756e-12];  % lbm*mm^2
smiData.Solid(61).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(61).opacity = 1;
smiData.Solid(61).ID = "Female USB Type C Connector, RPi4ModelB.ipt_{B1B55F03-4647-D6C2-29CA-DA85B83D1737}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(62).mass = 0.042440737129887135;  % lbm
smiData.Solid(62).CoM = [-1.3402968458948916 8.1433456021746196 0.00071671848078065604];  % mm
smiData.Solid(62).MoI = [1.3507697813897512 1.5687390560018601 1.714597004424913];  % lbm*mm^2
smiData.Solid(62).PoI = [0.00017331030429505053 0.00023560518258862459 -0.06035867812283055];  % lbm*mm^2
smiData.Solid(62).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(62).opacity = 1;
smiData.Solid(62).ID = "2X USB3.0 PORTS, RPi4ModelB.ipt_{88FAF07C-4FD6-9328-6300-948E73F66356}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(63).mass = 0.002006708496802232;  % lbm
smiData.Solid(63).CoM = [-0.00041196386335554797 0.39983042922333301 0.00099715813949077933];  % mm
smiData.Solid(63).MoI = [0.035271371273349929 0.051892016074144086 0.016834516646575398];  % lbm*mm^2
smiData.Solid(63).PoI = [-7.9785120662041632e-07 -2.972360368485299e-06 3.196343752883711e-07];  % lbm*mm^2
smiData.Solid(63).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(63).opacity = 1;
smiData.Solid(63).ID = "91D77 D9WHV 778K, 4 GB LPDDR4 SDRAM, RPi4ModelB.ipt_{90E9E6CE-4D34-D24E-DCD6-A783448243E6}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(64).mass = 0.00067011905452814019;  % lbm
smiData.Solid(64).CoM = [0 1.2860541269034771 1.8816181574980344e-14];  % mm
smiData.Solid(64).MoI = [0.01201550366823196 0.02009538172161026 0.0082984058460617641];  % lbm*mm^2
smiData.Solid(64).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(64).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(64).opacity = 1;
smiData.Solid(64).ID = "Cypress CYW43455 Wireless Module Cover, RPi4ModelB.ipt_{AF907E54-4D74-830A-E80C-F08877F0F969}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(65).mass = 0.0014788012271599634;  % lbm
smiData.Solid(65).CoM = [0.50610235901349898 0.70760774915780122 -1.2786661210903336];  % mm
smiData.Solid(65).MoI = [0.016204723904661909 0.037479215549018355 0.021875132944508109];  % lbm*mm^2
smiData.Solid(65).PoI = [0.00039434617820129813 -0.0015335842685448766 -5.8789331803514232e-05];  % lbm*mm^2
smiData.Solid(65).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(65).opacity = 1;
smiData.Solid(65).ID = "SD Card Slot, RPi4ModelB.ipt_{D50309C3-4249-14F0-BC17-39AA81FBC2DF}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(66).mass = 0.00089507832799429643;  % lbm
smiData.Solid(66).CoM = [-8.7790475616801841e-05 0.39613431697113594 -0.0004654204194150021];  % mm
smiData.Solid(66).MoI = [0.0048746446025665757 0.0096528366872317434 0.0048748726165524676];  % lbm*mm^2
smiData.Solid(66).PoI = [1.6597985790803961e-07 9.8833453434994919e-08 3.1962104069621931e-08];  % lbm*mm^2
smiData.Solid(66).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(66).opacity = 1;
smiData.Solid(66).ID = "VIA VL805 PCIe USB 3.0 controller, RPi4ModelB.ipt_{C77134E0-431C-A9D7-C1CD-2EA47D8B36E2}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(67).mass = 0.045797035151606838;  % lbm
smiData.Solid(67).CoM = [-1.3423271115781987 8.0406422622843792 -0.03812179587901951];  % mm
smiData.Solid(67).MoI = [1.5616505022606273 1.6890628921860642 1.8705199480674572];  % lbm*mm^2
smiData.Solid(67).PoI = [0.0010373099182982627 0.0043799727032897565 -0.013572635580113339];  % lbm*mm^2
smiData.Solid(67).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(67).opacity = 1;
smiData.Solid(67).ID = "2X USB2.0 PORTS, RPi4ModelB.ipt_{F9335632-483C-2BE2-E441-1091ED6ACE83}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(68).mass = 0.00062522725233583409;  % lbm
smiData.Solid(68).CoM = [0.00012974761287299659 0.49797711398943545 -0.00010979901471395882];  % mm
smiData.Solid(68).MoI = [0.0019358494297539075 0.0037672615615926067 0.0019361160291112777];  % lbm*mm^2
smiData.Solid(68).PoI = [2.6217701828101471e-08 2.2636109897236494e-08 -6.2125060808681454e-08];  % lbm*mm^2
smiData.Solid(68).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(68).opacity = 1;
smiData.Solid(68).ID = "Broadcom BCM54213PE Gigabit Ethernet Transceiver, RPi4ModelB.ipt_{FC8B91E8-48E4-A63C-5A28-14B4F8015C1C}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(69).mass = 0.0003471185943447049;  % lbm
smiData.Solid(69).CoM = [-0.00018486006318894609 0.3987423897514652 -0.00010232894951887507];  % mm
smiData.Solid(69).MoI = [0.00074399091130897092 0.0014509271093471156 0.00074409073066639684];  % lbm*mm^2
smiData.Solid(69).PoI = [1.2339787505822078e-08 3.8464109276839919e-08 2.5935308890342138e-08];  % lbm*mm^2
smiData.Solid(69).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(69).opacity = 1;
smiData.Solid(69).ID = "MxL7704 Universal PMIC, RPi4ModelB.ipt_{EDCB5278-49D8-FB33-966E-3C984A5C63CE}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(70).mass = 0.024737338288849959;  % lbm
smiData.Solid(70).CoM = [223.89170751916552 270.0558664958744 0.2057400000000012];  % mm
smiData.Solid(70).MoI = [5.7480050285187767 9.5257988629236081 15.273105821111537];  % lbm*mm^2
smiData.Solid(70).PoI = [0 0 0.092951714008299852];  % lbm*mm^2
smiData.Solid(70).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(70).opacity = 1;
smiData.Solid(70).ID = "Board.ipt_{09FAFAE4-4879-1B02-83D2-33BBFB8149DB}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(71).mass = 0.0051478112006460913;  % lbm
smiData.Solid(71).CoM = [0 4.4353716831637318 0];  % mm
smiData.Solid(71).MoI = [0.039285371504272804 0.039882200973309592 0.057728456594629801];  % lbm*mm^2
smiData.Solid(71).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(71).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(71).opacity = 1;
smiData.Solid(71).ID = "_SSW-103-03-TL-D_terminal.ipt_{725BE722-4686-6ADA-8FE8-22A71047A9F7}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(72).mass = 0.00040793377612207272;  % lbm
smiData.Solid(72).CoM = [-8.0953791074999566e-15 6.1929582982061406 3.6061234206136168e-13];  % mm
smiData.Solid(72).MoI = [0.0054012380944754405 0.0023540484091514472 0.0064735660042511949];  % lbm*mm^2
smiData.Solid(72).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(72).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(72).opacity = 1;
smiData.Solid(72).ID = "_SSW-103-03-TL-D_pin.ipt_{E0B8C642-4DA2-1B52-A6C0-5BB0C6AAE29B}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(73).mass = 0.0068280930561703179;  % lbm
smiData.Solid(73).CoM = [0 3.7888044174278761 0];  % mm
smiData.Solid(73).MoI = [0.32322114431729237 0.25139744443048045 0.078600683240692068];  % lbm*mm^2
smiData.Solid(73).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(73).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(73).opacity = 1;
smiData.Solid(73).ID = "Samtec-SSW-108-03-T-S.ipt_{6C97F6EF-4FC7-6E5F-F7D8-F3BCFA475801}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(74).mass = 0.0084899885907977375;  % lbm
smiData.Solid(74).CoM = [0 3.7863290567115082 -9.0524686756850653e-15];  % mm
smiData.Solid(74).MoI = [0.57039453835947063 0.48087513809130827 0.097946836240790439];  % lbm*mm^2
smiData.Solid(74).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(74).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(74).opacity = 1;
smiData.Solid(74).ID = "SSW-110-03-X-S.ipt_{49AA852B-4B72-E79D-9DA6-A793564E98FD}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(75).mass = 0.0048220974709786346;  % lbm
smiData.Solid(75).CoM = [0 4.4419421559223213 0];  % mm
smiData.Solid(75).MoI = [0.029230654619136428 0.10353494451411091 0.12763946059861558];  % lbm*mm^2
smiData.Solid(75).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(75).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(75).opacity = 1;
smiData.Solid(75).ID = "_SSW-106-03-TL-S_terminal.ipt_{4F94887A-4794-61FC-AF3F-148BA2DC2495}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(76).mass = 0.00039417921287554416;  % lbm
smiData.Solid(76).CoM = [-1.3709226733486643e-14 6.0266127632234685 7.1497425533669932e-14];  % mm
smiData.Solid(76).MoI = [0.0044463505165484151 0.00733158088464068 0.011758972040082114];  % lbm*mm^2
smiData.Solid(76).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(76).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(76).opacity = 1;
smiData.Solid(76).ID = "_SSW-106-03-TL-S_pin.ipt_{1D671DCF-43A2-A642-7BD1-D38EABE01A02}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(77).mass = 0.00076098187410155859;  % lbm
smiData.Solid(77).CoM = [0 0 1.2100001199999999];  % mm
smiData.Solid(77).MoI = [0.0017132498590355461 0.0013608194282352234 0.0023313000986966105];  % lbm*mm^2
smiData.Solid(77).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(77).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(77).opacity = 1;
smiData.Solid(77).ID = "Extruded_1.ipt_{6CC2948A-46C1-70D6-D52C-FEAAA7533199}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(78).mass = 1.2761965899029566e-05;  % lbm
smiData.Solid(78).CoM = [0 0 0.254];  % mm
smiData.Solid(78).MoI = [7.0327897228361338e-07 5.8320695262543524e-06 5.9864478372434396e-06];  % lbm*mm^2
smiData.Solid(78).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(78).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(78).opacity = 1;
smiData.Solid(78).ID = "Extruded (1)_1.ipt_{0B38FDE1-4B48-FBD8-A6E0-299AFB000C62}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(79).mass = 0.014878868336500775;  % lbm
smiData.Solid(79).CoM = [0 4.4468692737258273 0];  % mm
smiData.Solid(79).MoI = [0.090000087183198199 2.9678317931446383 3.0419786495390948];  % lbm*mm^2
smiData.Solid(79).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(79).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(79).opacity = 1;
smiData.Solid(79).ID = "_T1SSW-119-01-G-S.ipt_{CDBA8E26-42A4-1716-F955-7C8ED56001C7}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(80).mass = 0.00048186961389215342;  % lbm
smiData.Solid(80).CoM = [1.4454151945507589e-12 2.2910222774817983 5.0932194894191614e-14];  % mm
smiData.Solid(80).MoI = [0.00065311371805663963 0.091883463241060129 0.092495718517932271];  % lbm*mm^2
smiData.Solid(80).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(80).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(80).opacity = 1;
smiData.Solid(80).ID = "_P2SSW-119-01-G-S.ipt_{B8D92CC0-4815-0670-B916-8789AEBBE9D1}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(81).mass = 0.0025095447500181338;  % lbm
smiData.Solid(81).CoM = [0 2.1176112099421474 -1.7449196639148294e-11];  % mm
smiData.Solid(81).MoI = [0.010932412742660713 0.014585447230329104 0.011324740036066998];  % lbm*mm^2
smiData.Solid(81).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(81).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(81).opacity = 1;
smiData.Solid(81).ID = "User_Library-FSM4JSMATR_-_TE_Connectivity_-_SPST_6mm_Tactile_Switch.ipt_{D6CBF6F5-46ED-C45A-3626-838FDE795CB1}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(82).mass = 0.020329472616461088;  % lbm
smiData.Solid(82).CoM = [-2.2634024825489782e-14 -0.45000000000000184 -0.13878311670214252];  % mm
smiData.Solid(82).MoI = [3.9004116884801627 5.17850485501764 1.2808376453407002];  % lbm*mm^2
smiData.Solid(82).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(82).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(82).opacity = 1;
smiData.Solid(82).ID = "board_1.ipt_{276F5EF0-4BE0-25C1-EC77-29AD25D7E7D1}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(83).mass = 0.0058519519931850223;  % lbm
smiData.Solid(83).CoM = [22.859999999999996 1.7270001146861076 0];  % mm
smiData.Solid(83).MoI = [0.023057306723099601 1.1374543320772523 1.1555825170179927];  % lbm*mm^2
smiData.Solid(83).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(83).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(83).opacity = 1;
smiData.Solid(83).ID = "header.ipt_{63A90F93-43A5-B414-D471-7089456B2A2C}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(84).mass = 0.0077719990144948349;  % lbm
smiData.Solid(84).CoM = [0.00020400508584059336 0.67043028929386161 0.18491666577316854];  % mm
smiData.Solid(84).MoI = [0.41573668745435111 0.6179705473486965 0.21110376232578157];  % lbm*mm^2
smiData.Solid(84).PoI = [-0.0046824872322051908 -5.2660312751796968e-05 -1.9544037978295794e-06];  % lbm*mm^2
smiData.Solid(84).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(84).opacity = 1;
smiData.Solid(84).ID = "ESP32-WROOM-32D.ipt_{17C788D5-4C91-48CE-1323-1E892D39EAE6}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(85).mass = 0.00079267161489339271;  % lbm
smiData.Solid(85).CoM = [-0.0010536223625500604 0.11033070794935192 -0.69467864805073076];  % mm
smiData.Solid(85).MoI = [0.0026136650720883976 0.005907584302336566 0.0043705173400789537];  % lbm*mm^2
smiData.Solid(85).PoI = [3.8915645042948738e-05 1.0883870441137358e-06 -1.0480447862517609e-06];  % lbm*mm^2
smiData.Solid(85).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(85).opacity = 1;
smiData.Solid(85).ID = "micro usb.ipt_{46F2843E-463E-69EE-4DB2-9FAD28FDFAD5}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(86).mass = 0.0001672255261848858;  % lbm
smiData.Solid(86).CoM = [0 0.50519399701189294 6.9289262459372516e-13];  % mm
smiData.Solid(86).MoI = [0.00018012251158582701 0.00026647396037166477 0.00011850222926663116];  % lbm*mm^2
smiData.Solid(86).PoI = [0 0 0];  % lbm*mm^2
smiData.Solid(86).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(86).opacity = 1;
smiData.Solid(86).ID = "button.ipt_{2910CCA9-48B1-F2CD-CE50-658FC992CBDE}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(87).mass = 0.003006043374446505;  % lbm
smiData.Solid(87).CoM = [-0.099318997800867823 -0.6537576463470901 -3.9410095115213117];  % mm
smiData.Solid(87).MoI = [0.014679318931785491 0.012827919573029742 0.00436715659398847];  % lbm*mm^2
smiData.Solid(87).PoI = [0.0017365926366921152 0.00022632620387458128 -0.00013430373279913602];  % lbm*mm^2
smiData.Solid(87).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(87).opacity = 1;
smiData.Solid(87).ID = "91292A010_18-8 Stainless Steel Socket Head Screw_1.ipt_{274CFAA7-42C1-24E1-84D0-07825B207D78}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(88).mass = 0.0016136986531604509;  % lbm
smiData.Solid(88).CoM = [-0.00029670973780203689 -0.00045139593777757136 -5.8372834207087294];  % mm
smiData.Solid(88).MoI = [0.011954674391944899 0.011953844287215389 0.0048863856653740025];  % lbm*mm^2
smiData.Solid(88).PoI = [6.5747666083477446e-07 -3.6110039869271523e-07 2.3704414023241547e-06];  % lbm*mm^2
smiData.Solid(88).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(88).opacity = 1;
smiData.Solid(88).ID = "91292A111_18-8 Stainless Steel Socket Head Screw_2.ipt_{47D6A074-4ECD-818B-E7DF-92B1A208B916}";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = -88.880972415161281;  % deg
smiData.RevoluteJoint(1).ID = "[wheel v1:1:-:rigid_body:1]";

smiData.RevoluteJoint(2).Rz.Pos = 40.553493225789481;  % deg
smiData.RevoluteJoint(2).ID = "[wheel v1:2:-:rigid_body:1]";

