cap log close
set more 1 
clear 
ssc install statastates, replace
log using "/Users/ben/Desktop/21S/Thesis/ProjectLogs/loadCPS.log", replace

use "/Users/ben/Desktop/21S/Thesis/ProjectData/cps_1921.dta"
rename month month1
statastates, fips(state) nogenerate //adds state name and abbreviation
gen month = "january" if month1==1
replace month = "february" if month1==2
replace month = "march" if month1==3
replace month = "april" if month1==4
replace month = "may" if month1==5
replace month = "june" if month1==6
replace month = "july" if month1==7
replace month = "august" if month1==8
replace month = "september" if month1==9
replace month = "october" if month1==10
replace month = "november" if month1==11
replace month = "december" if month1==12

summarize 



save "/Users/ben/Desktop/21S/Thesis/ProjectData/cps_1921cleaned.dta", replace //saves new data set
