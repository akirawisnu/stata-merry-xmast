clear
clear matrix
set more off

// Creating ado file to express Merry Christmas for all who celebrate :)

capture program drop MerryChristmas
program define MerryChristmas
	di "{break}"
	forval i=0(4)12 {
		forval j=1(2)9 {
			local n=`i'+`j'
			local tree=" "
			forval k=1/`n' {
				if `n'==1 {
					local tree="`tree'"+"{res}*"
				}
				else if uniform()>0.8 {
					local tree="`tree'"+"{error}*"
				}
				else {
					local tree="`tree'"+"{text}*"
				}	
			}
			di "{center:`tree'}"
		}
	}
	di "{center:{input}== Merry XMAST 2019 ==}"
	di "{center:{input}== STATA // Akirawisnu ==}"
	di "{hline}"
end

MerryChristmas

exit
