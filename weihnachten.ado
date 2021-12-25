program define weihnachten
*! v 1.2 24-Dec-2021 Akirawisnu:  Merry Christmas Tree
*! Creating ado file to express Merry Christmas for all who celebrate :)

version 16.0
syntax , NAMe(str) YEAr(str) FRom(str)

	di "{break}"
	forval x=1/120{
		cls
		
		*di "{hline}"
		di "{break}"
		di "{break}"
		di "{break}"
		di "{break}"
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
		di "{center:{input}== Frohe Weihnachten `year', `name'! ==}"
		di "{center:{input}== Ich wünsche Ihnen einen schönen Abend! ==}"
		di "{center:{input}== `from' ==}"
		*di "{hline}"
		
		sleep 500
		}
end