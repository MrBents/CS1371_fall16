load plotSnake_studentCases.mat;
[plot_test_1, ~] = plotCheck('plotSnake', board1);
[plot_test_2, ~] = plotCheck('plotSnake', board2);
[plot_test_3, ~] = plotCheck('plotSnake', board3);

[meta_test_1, ~] = plotCheck('metaData','test_1.xlsx');
[meta_test_2, ~] = plotCheck('metaData','test_2.xlsx');
[meta_test_3, ~] = plotCheck('metaData','test_3.xlsx');

load studentRaceCases.mat;

drag_test_1 = isequal(dragRace(stTimes1,stVelocities1,carsST1,330) ,dragRace_soln(stTimes1,stVelocities1,carsST1,330));
drag_test_2 = isequal(dragRace(stTimes2,stVelocities2,carsST2,245) ,dragRace_soln(stTimes2,stVelocities2,carsST2,245));
drag_test_3 = isequal(dragRace(stTimes3,stVelocities3,carsST3,397) ,dragRace_soln(stTimes3,stVelocities3,carsST3,397));

new_test_1 = isequal(newtonsMethod([-1 0 1], [0 1 0], 500), newtonsMethod_soln([-1 0 1], [0 1 0], 500));
new_test_2 = isequal(newtonsMethod([-10 -2 12 20], [9 0 4 -35], -23), newtonsMethod_soln([-10 -2 12 20], [9 0 4 -35], -23));
