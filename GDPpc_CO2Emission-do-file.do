clear 
import delimited "C:\Users\User\Desktop\DA4 data-WB-CO2-GDP2.csv", varnames(1) 
sort countryname
drop in 1/5
 save "C:\Users\User\Desktop\Data for DA4 assignment_2.dta", replace
 rename gdppercapitapppconstant2017inter gdppc
 rename time year
drop if gdppc==".."
tab countryname
drop if countryname=="Bosnia and Herzegovina"
drop if countryname=="Croatia"
drop if countryname=="Estonia" 
drop if countryname=="Iceland"
drop if countryname=="Kosovo"
drop if countryname=="Latvia"
drop if countryname=="Lithuania"
drop if countryname=="Moldova"
drop if countryname=="Montenegro"
drop if countryname=="San Marino"
drop if countryname=="Serbia"
drop if countryname=="Slovenia"
drop if countryname=="Turkmenistan"
destring co2emissionsktenatmco2ekt, replace force
gen co2emissionpc= co2emissionsktenatmco2ekt / populationtotalsppoptotl
tab countryname , generate(country_)
destring gdppc, generate(GDPpc2) force
gen ln_GDPpc = ln( GDPpc2 )
gen ln_co2emissionpc = ln( co2emissionpc )
destring year, replace force
reg  ln_co2emissionpc ln_GDPpc if year==2005, robust
reg  ln_co2emissionpc ln_GDPpc if year==2019, robust
histogram GDPpc2 , bin(40) fcolor(forest_green)
save "C:\Users\User\Desktop\Data for DA4 assignment_2-coding.dta", replace

