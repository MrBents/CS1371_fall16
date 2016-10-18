ban_test_1 = length(strfind(visdiff('candyResult.txt','candyResult_soln.txt'), 'The files are identical')) > 0;
ban_test_2 = length(strfind(visdiff('marblesResult.txt','marblesResult_soln.txt'), 'The files are identical')) > 0;
ban_test_3 = length(strfind(visdiff('tooManyFindsResult.txt','tooManyFindsResult_soln.txt'), 'The files are identical')) > 0;

roommate_test_1 = isequal(roommateMatch('BH.txt', 'CS.txt'), roommateMatch_soln('BH.txt', 'CS.txt'));
roommate_test_2 = isequal(roommateMatch('BH.txt', 'JB.txt'), roommateMatch_soln('BH.txt', 'JB.txt'));
roommate_test_3 = isequal(roommateMatch('CS.txt', 'JB.txt'), roommateMatch_soln('CS.txt', 'JB.txt'));

score_test_out_1 = isequal(leaderboard('scoreboard1.txt', 'snakeMaster', 40), leaderboard_soln('scoreboard1.txt', 'snakeMaster', 40));
score_test_out_2 = isequal(leaderboard('scoreboard2.txt', 'thePunisher', 55), leaderboard_soln('scoreboard2.txt', 'thePunisher', 55));
score_test_out_3 = isequal(leaderboard('scoreboard3.txt', 'otis', 8), leaderboard_soln('scoreboard3.txt', 'otis', 8));
score_test_1 = length(strfind(visdiff('scoreboard1_updated.txt','scoreboard1_updated_soln.txt'), 'The files are identical')) > 0;
score_test_2 = length(strfind(visdiff('scoreboard2_updated.txt','scoreboard2_updated_soln.txt'), 'but the only differences are in end-of-line characters')) > 0;
score_test_3 = length(strfind(visdiff('scoreboard3_updated.txt','scoreboard3_updated_soln.txt'), 'but the only differences are in end-of-line characters')) > 0;
