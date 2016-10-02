filter_test_1 = isequal(filterData([7,3,4,5,6,1,900000]), filterData_soln([7,3,4,5,6,1,900000]));
filter_test_2 = isequal(filterData([0,0,1,0,0,0,0,0,0]), filterData_soln([0,0,1,0,0,0,0,0,0]));
filter_test_3 = isequal(filterData([1,2,3,4,9000]), filterData_soln([1,2,3,4,9000]));

elephant_test_1 = isequal(elephantCase('Elephants are the best'), elephantCase_soln('Elephants are the best'));
elephant_test_2 = isequal(elephantCase('One ear from a bull African elephant weighs more than 100 pounds!'), elephantCase_soln('One ear from a bull African elephant weighs more than 100 pounds!'));
elephant_test_3 = isequal(elephantCase('Panthers are cool too'), elephantCase_soln('Panthers are cool too'));

load('multTable_testCases.mat');

mult_test_1 = isequal(multTable(sampleMultTable1), multTable_soln(sampleMultTable1));
mult_test_2 = isequal(multTable(sampleMultTable2), multTable_soln(sampleMultTable2));
mult_test_3 = isequal(multTable(sampleMultTable3), multTable_soln(sampleMultTable3));

load('scheduler_testCases.mat');

schedule_test_1 = isequal(scheduler(schedule1, events1), scheduler_soln(schedule1, events1));
schedule_test_2 = isequal(scheduler(schedule2, events2), scheduler_soln(schedule2, events2));
schedule_test_3 = isequal(scheduler(schedule3, events3), scheduler_soln(schedule3, events3));

load('jumbledRowsCols.mat');

test_puzzle_1 = isequal(puzzleBox(jumbled1, rows1, cols1), puzzleBox_soln(jumbled1, rows1, cols1));
test_puzzle_2 = isequal(puzzleBox(jumbled2, rows2, cols2), puzzleBox_soln(jumbled2, rows2, cols2));
test_puzzle_3 = isequal(puzzleBox(jumbled3, rows3, cols3), puzzleBox_soln(jumbled3, rows3, cols3));