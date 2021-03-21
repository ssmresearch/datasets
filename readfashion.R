library(foreign)
p1 <- read.dta("source_1_1_pc6432_stata12.dta")
p2 <- read.dta("source_1_2_pc6432_stata12.dta")
p3 <- read.dta("source_2_pc6432_stata12.dta")

dim(p1); dim(p2);dim(p3)

fashiondata <- rbind(p1,p2,p3)
dim(fashiondata)

head(fashiondata)

# You will notice that columns like source and flowtype, are alphanumeric.
# The STATA files contains numeric codes (1; 2; ...) which are linked to value labels.
# For example (1=In; 2=Out). By default, the read.dta() command reads the labels rather than the
# codes. If you want the codes instead, than use: 

p1n <- read.dta("source_1_1_pc6432_stata12.dta",convert.factors = FALSE)

dim(p1n) # Just shows the dimension of the data; you can skip it if you feel confident that the
         # code is doing what it is supposed to do ...

p1n[1:6,1:4]


