cap log close
set more 1 
clear 
log using "/Users/ben/Desktop/21S/Thesis/ProjectLogs/loadStateUR.log", replace
ssc install outreg2
import delimited "/Users/ben/Desktop/21S/Thesis/ProjectData/geofred.csv"

keep state_name year month ur
replace state_name=upper(state_name)
replace state_name = "DISTRICT OF COLUMBIA" if state_name=="WASHINGTON DC"
save "/Users/ben/Desktop/21S/Thesis/ProjectData/StateUR.dta", replace

