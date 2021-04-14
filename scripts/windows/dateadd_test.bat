::DateAdd Test
dateadd 7 >> dateadd.txt
type dateadd.txt | findstr /v "^$" >> 7d_date