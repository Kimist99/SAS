/* SAS practice*/

TITLE "Ebola Data In SAS Sept 2020";
PROC IMPORT DATAFILE = '/folders/myfolders/ebolaJan6.csv'
 OUT = work.ebolaJan13b
 DBMS = CSV;
RUN;

PROC PRINT DATA = EbolaJan13b;
RUN;

PROC FORMAT;
	VALUE Age1Fmt 
		 0 - <18 ='YOUTH, age 0-17'
		18 - <30 = 'YOUNG ADULT, age 18-29'
 		30 - <60 = 'ADULT, age 30-59'
 		60 - high = 'ELDERLY, age 60 +';
RUN;

TITLE "Ebola Statistics BY AGE GROUP";
PROC FREQ DATA= EbolaJan13b;
FORMAT Age1 Age1Fmt.;
RUN;