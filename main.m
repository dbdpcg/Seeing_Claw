%%main
%% Task 1
clear
[orgPoints,destPoints] = findWithHom("small02.jpg","small01.jpg","image04.jpg");
robotStart=[100;290];
orgPoints=orgPoints-robotStart;
destPoints=destPoints-robotStart;
pause(); 
%% Task 2

Open = 300;
Close = 255; 
Z = 15;

% orgPoints    = | x1 x2 x3 |
%                | y1 y2 y3 |
%
% destPoints   = | x1 x2 x3 |
%                | y1 y2 y3 |


claw = TheClaw();
for id = claw.BASE:claw.WRIST
    claw.setJointTorqueEnable(id, 1); % Enable torque on motor
    claw.setJointControlMode(id, claw.POS_TIME); % Set mode to time to position
    claw.setJointTimeToPosition(id, 2); % Set joint time to position to 2 seconds
end

ANGLES = claw.getAllJointsPosition;

%Start posistion

joint_angles =  [0, 90, 90, 90, 300];
claw.setAllJointsPosition(joint_angles);

pause;
%% 

%movement 1

% Movement 1 TEST

%PICK UP
[R0,R1,R2,R3] = inverseAngles (orgPoints(1), orgPoints(2), Z);
ANGLES = claw.getAllJointsPosition;
M1 = R0 - ANGLES(1);
M2 = R1 - ANGLES(2);
M3 = R2 - ANGLES(3);
M4 = R3 - ANGLES(4);
claw.setJointPosition(claw.BASE, ANGLES(1)+(M1));
pause(1);
claw.setJointPosition(claw.WRIST, ANGLES(4)+(M4));
pause(1);
claw.setJointPosition(claw.SHOULDER, ANGLES(2)+(M2));
pause(1);
claw.setJointPosition(claw.ELBOW, ANGLES(3)+(M3));
pause(3);
claw.setJointPosition(claw.CLAW, Close);
pause(1);
claw.setJointPosition(claw.ELBOW, 90);
pause(1);
claw.setJointPosition(claw.WRIST, 90);
pause(1);
claw.setJointPosition(claw.SHOULDER, 90);
pause(1);
claw.setJointPosition(claw.BASE, 0);
pause(1);

%DROP OFF
[R0,R1,R2,R3] = inverseAngles (destPoints(1), destPoints(2), Z);
ANGLES = claw.getAllJointsPosition;
M1 = R0 - ANGLES(1)-2;
M2 = R1 - ANGLES(2);
M3 = R2 - ANGLES(3);
M4 = R3 - ANGLES(4);

claw.setJointPosition(claw.BASE, ANGLES(1)+(M1));
pause(1);
claw.setJointPosition(claw.WRIST, ANGLES(4)+(M4));
pause(1);
claw.setJointPosition(claw.SHOULDER, ANGLES(2)+(M2));
pause(1);
claw.setJointPosition(claw.ELBOW, ANGLES(3)+(M3));
pause(3);
claw.setJointPosition(claw.CLAW, Open);
pause(1);
claw.setJointPosition(claw.ELBOW, 90);
pause(1);
claw.setJointPosition(claw.WRIST, 90);
pause(1);
claw.setJointPosition(claw.SHOULDER, 90);
pause(1);
claw.setJointPosition(claw.BASE, 0);
pause(1);
%%
%movement 2
%PICK UP
[R0,R1,R2,R3] = inverseAngles (orgPoints(3), orgPoints(4), Z);
ANGLES = claw.getAllJointsPosition;
M1 = R0 - ANGLES(1)-2;
M2 = R1 - ANGLES(2);
M3 = R2 - ANGLES(3);
M4 = R3 - ANGLES(4);
claw.setJointPosition(claw.BASE, ANGLES(1)+(M1));
pause(1);
claw.setJointPosition(claw.WRIST, ANGLES(4)+(M4));
pause(1);
claw.setJointPosition(claw.SHOULDER, ANGLES(2)+(M2));
pause(1);
claw.setJointPosition(claw.ELBOW, ANGLES(3)+(M3));
pause(3);
claw.setJointPosition(claw.CLAW, Close);
pause(1);
claw.setJointPosition(claw.ELBOW, 90);
pause(1);
claw.setJointPosition(claw.WRIST, 90);
pause(1);
claw.setJointPosition(claw.SHOULDER, 90);
pause(1);
claw.setJointPosition(claw.BASE, 0);
pause(1);

%DROP OFF
[R0,R1,R2,R3] = inverseAngles (destPoints(3), destPoints(4), Z);
ANGLES = claw.getAllJointsPosition;
M1 = R0 - ANGLES(1)-5;
M2 = R1 - ANGLES(2);
M3 = R2 - ANGLES(3);
M4 = R3 - ANGLES(4);

claw.setJointPosition(claw.BASE, ANGLES(1)+(M1));
pause(1);
claw.setJointPosition(claw.WRIST, ANGLES(4)+(M4));
pause(1);
claw.setJointPosition(claw.SHOULDER, ANGLES(2)+(M2));
pause(1);
claw.setJointPosition(claw.ELBOW, ANGLES(3)+(M3));
pause(3);
claw.setJointPosition(claw.CLAW, Open);
pause(1);
claw.setJointPosition(claw.ELBOW, 90);
pause(1);
claw.setJointPosition(claw.WRIST, 90);
pause(1);
claw.setJointPosition(claw.SHOULDER, 90);
pause(1);
claw.setJointPosition(claw.BASE, 0);
pause(1);
%%
%movement 3

%PICK UP
[R0,R1,R2,R3] = inverseAngles (orgPoints(5), orgPoints(6), Z);
ANGLES = claw.getAllJointsPosition;
M1 = R0 - ANGLES(1)-5;
M2 = R1 - ANGLES(2);
M3 = R2 - ANGLES(3);
M4 = R3 - ANGLES(4);
claw.setJointPosition(claw.BASE, ANGLES(1)+(M1));
pause(1);
claw.setJointPosition(claw.WRIST, ANGLES(4)+(M4));
pause(1);
claw.setJointPosition(claw.SHOULDER, ANGLES(2)+(M2));
pause(1);
claw.setJointPosition(claw.ELBOW, ANGLES(3)+(M3));
pause(3);
claw.setJointPosition(claw.CLAW, Close);
pause(1);
claw.setJointPosition(claw.ELBOW, 90);
pause(1);
claw.setJointPosition(claw.WRIST, 90);
pause(1);
claw.setJointPosition(claw.SHOULDER, 90);
pause(1);
claw.setJointPosition(claw.BASE, 0);
pause(1);

%DROP OFF
[R0,R1,R2,R3] = inverseAngles (destPoints(5), destPoints(6), Z);
ANGLES = claw.getAllJointsPosition;
M1 = R0 - ANGLES(1)-2;
M2 = R1 - ANGLES(2);
M3 = R2 - ANGLES(3);
M4 = R3 - ANGLES(4);

claw.setJointPosition(claw.BASE, ANGLES(1)+(M1));
pause(1);
claw.setJointPosition(claw.WRIST, ANGLES(4)+(M4));
pause(1);
claw.setJointPosition(claw.SHOULDER, ANGLES(2)+(M2));
pause(1);
claw.setJointPosition(claw.ELBOW, ANGLES(3)+(M3));
pause(3);
claw.setJointPosition(claw.CLAW, Open);
pause(1);
claw.setJointPosition(claw.ELBOW, 90);
pause(1);
claw.setJointPosition(claw.WRIST, 90);
pause(1);
claw.setJointPosition(claw.SHOULDER, 90);
pause(1);
claw.setJointPosition(claw.BASE, 0);
pause(1);
%%

claw.stop()
