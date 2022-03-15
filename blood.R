library("tidyverse")
library("devtools")
library("glue")
library("dplyr")
library("stringr")
library("ggplot2")
library("knitr")
library("ggrepel")
library("patchwork")
library("janitor")
library("usethis")
library("roxygen2")
library("testthat")

blood.dat = read.table("bloodJin.txt", header=TRUE)

summary(blood.dat)

head(blood.dat)
attach(blood.dat)
#give first 10
z = 16.53

# t.test(blood.dat, data = blood.dat)
t.test(blood.dat$vitamin, mu = z, conf.level = 0.95, alternative = "less")
t.test(blood.dat$vitamin, mu = z, conf.level = 0.95, alternative = "less")$statistic
pValue <- t.test(blood.dat$vitamin, mu = z, conf.level = 0.95, alternative = "less")$p.value
pValue

if(pValue < 0.05) {
  print("Reject")
} else {
  print("Do Not Reject")
}

if(pValue < 0.01) {
  print("Reject")
} else {
  print("Do Not Reject")
}

# --------------------------------------------------

deeF = 20

qt(p=.05/2, df=deeF, lower.tail=FALSE)

CI <- t.test(blood.dat$vitamin, mu = z, conf.level = 0.95)$conf.int
CI

qt(p=.02/2, df=deeF, lower.tail=FALSE)

SevenCI <- t.test(blood.dat$vitamin, mu = z, conf.level = 0.98)$conf.int
SevenCI









