/* 
Example: Writing report to a text file
c.f. P 110 of The Little SAS Book 6th Edition
*/

data eg;
name = 'Erika';
quantity = 17;
profit = 42.50;
class = 'PSTAT130';
run;

options nodate nonumber;

data _null_;
set eg;
file '/folders/myfolders/results/cookies.txt' print;
title 'Cookie Sales Report';
put @5 'Sales report for ' Name ' in ' class
    // @5 'Congratulations! You sold ' quantity 'boxes of cookies'
    / @5 'and earned ' profit dollar6.2 ' for our field trip.';
put _page_;
run;



