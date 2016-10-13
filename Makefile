# declaring phony targets
.PHONY: all clean data tests eda regression report

# all
all: report eda regression

#Advertising Data
data:
	curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> data/Advertising.csv

#clean report pdf
clean:
	rm -f report/report.pdf

test:
	Rscript code/test-that.R

eda: 
	Rscript code/scripts/eda-script.R data/Advertising.csv

regression: 
	Rscript code/scripts/regression-script.R data/Advertising.csv 
	
report:
	Rscript -e 'library(rmarkdown); render("report/report.Rmd")'
	

