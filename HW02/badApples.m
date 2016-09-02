function [ odds_bad_red, odds_bad_green ] = badApples( am_red, am_green, am_good_red,am_good_green )
% This functions calculates the odds of picking a bad green or red apple
% Usage: badApples(amount_red, amount_greem, amount_good_red, amount_good_green)
% returns: [odds_bad_red (float), odds_bad_green (float)]

total = am_red + am_green;
am_bad_green = am_green - am_good_green;
odds_bad_green = round((am_bad_green./total).*100, 2);

am_bad_red = am_red - am_good_red;
odds_bad_red = round((am_bad_red./total).*100, 2);


end

