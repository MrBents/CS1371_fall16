cell_test_1 = isequal(cellSum({{3}, [2, 1, 9], 'a', {5}}), cellSum_soln({{3}, [2, 1, 9], 'a', {5}}));
cell_test_2 = isequal(cellSum({{{{[1, 2, 3, 4]}}}, {'string'}, 'char', 3, {2}}), cellSum_soln({{{{[1, 2, 3, 4]}}}, {'string'}, 'char', 3, {2}}));
cell_test_3 = isequal(cellSum({{2}, [3, 4], 5}), cellSum_soln({{2}, [3, 4], 5}));

shop_test_1 = isequal(pawnShop('shopInventory.xlsx','pawnShopLog1.xlsx'), pawnShop_soln('shopInventory.xlsx','pawnShopLog1.xlsx'));
shop_test_2 = isequal(pawnShop('shopInventory.xlsx','pawnShopLog2.xlsx'), pawnShop_soln('shopInventory.xlsx','pawnShopLog2.xlsx'));
shop_test_3 = isequal(pawnShop('shopInventory.xlsx','pawnShopLog3.xlsx'), pawnShop_soln('shopInventory.xlsx','pawnShopLog3.xlsx'));

sort_test_1 = isequal(sortBy('sheet1.xlsx', 'id'), sortBy_soln('sheet1.xlsx', 'id'));
sort_test_2 = isequal(sortBy('sheet2.xlsx', 'email'), sortBy_soln('sheet2.xlsx', 'email'));
sort_test_3 = isequal(sortBy('sheet3.xlsx', 'quant'), sortBy_soln('sheet3.xlsx', 'quant'));

party_test_1 = isequal(partyPlanner('Survey1.txt'), partyPlanner_soln('Survey1.txt'));
party_test_2 = isequal(partyPlanner('Survey2.txt'), partyPlanner_soln('Survey2.txt'));
party_test_3 = isequal(partyPlanner('Survey3.txt'), partyPlanner_soln('Survey3.txt'));

car_test_1 = isequal(carShopping('carstats1.xlsx','Fuel Tank','Horsepower'), carShopping_soln('carstats1.xlsx','Fuel Tank','Horsepower'));
car_test_2 = isequal(carShopping('carstats2.xlsx','Engine Size','Year'), carShopping_soln('carstats2.xlsx','Engine Size','Year'));
car_test_3 = isequal(carShopping('carstats3.xlsx','MPG','RAC Rating'), carShopping_soln('carstats3.xlsx','MPG','RAC Rating'));
