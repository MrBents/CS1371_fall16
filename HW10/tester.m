load('disps.mat');
sdisp_test_1 = isequal(structDisp(bestOfTAIndex), structDisp_soln(bestOfTAIndex));
sdisp_test_2 = isequal(structDisp(halogens), structDisp_soln(halogens));
sdisp_test_3 = isequal(structDisp(cars), structDisp_soln(cars));

load('studentStructs.mat');
ssort_test_1 = isequal(structSort(simpleStruct), structSort_soln(simpleStruct));
ssort_test_2 = isequal(structSort(taStruct1), structSort_soln(taStruct1));
ssort_test_3 = isequal(structSort(taStruct2), structSort_soln(taStruct2));

load('movieStarStudentCases.mat');
movie_test_1 = isequal(movieStar(movieStruc1), movieStar_soln(movieStruc1));
movie_test_2 = isequal(movieStar(movieStruc2), movieStar_soln(movieStruc2));
movie_test_3 = isequal(movieStar(movieStruc3), movieStar_soln(movieStruc3));
movie_test_4 = isequal(movieStar(movieStruc4), movieStar_soln(movieStruc4));

load superList.mat;
supers_test_1 = isequal(whereIsMySuperSuit(struct1,names1), whereIsMySuperSuit_soln(struct1,names1));
supers_test_2 = isequal(whereIsMySuperSuit(struct2,names2), whereIsMySuperSuit_soln(struct2,names2));
supers_test_3 = isequal(whereIsMySuperSuit(struct3,names3), whereIsMySuperSuit_soln(struct3,names3));

career_test_1 = isequal(careerFair_soln('CFBResume',5), careerFair('CFBResume',5));
career_test_2 = isequal(careerFair_soln('TAResume',10), careerFair('TAResume',10));
career_test_3 = isequal(careerFair_soln('NBAResume',14), careerFair('NBAResume',14));

