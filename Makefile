# declaring phony targets
.PHONY: all clean

# all
all: report.pdf eda-outout.txt regression.RData

#Advertising Data
data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> data/Advertising.csv

#Regression.RData
regression.Rdata: code/regression-script.R data/Advertising.csv
	RScript code/regression-script.R

#eda-output.txt
eda-output.txt: data/Advertising.csv code/eda-script.R
	RScript code/eda-script.R

#final report in pdf form 
report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	Rscript -e "library(rmarkdown); render('report/report.Rmd','pdf_document')"

#clean all
clean:
	rm -f report/report.pdf