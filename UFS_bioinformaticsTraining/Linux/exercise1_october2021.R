#"Introduction to R"

#R comes with some trial data sets
data()

plot(AirPassengers)
plot(CO2)
plot(cars)

## Basic Syntax

#Variables are assigned using an arrow `<-` or an equals sign `=`.  `<-` is more common. Enter variable by itself to print, or use print statement.


a <- 5
b <- 7
c_variable_1 <- a + b
c_variable_1
##or you could use
print(c_variable_1)



#Variable names have to follow some rules.
#- allowed characters: alphanumeric, '.' and '_' - *no spaces*
#- must start with a letter or '.'
#- if it starts with '.', the second character cannot be a number
#- of any length - easiest if you use meaningful names, so your code is readable by others


#In an R session, objects are created in a workspace.

ls()
rm(a,b)
ls()


## Saving your work
#By default the session is saved in a file called `.RData`.  This file is a special R binary format.  Because it starts with a '.', you won't see it if you do `ls` in your terminal, but it does show up in the RStudio Files browser.
#RStudio will also ask you if you want to save your workspace when you quit (can turn this off in Tools > Global Options).

x <- 1:5
save.image()
rm(c_variable_1)
ls()
load('.RData')
ls()


#Non-default save location and saving single objects (also in same R binary format)

save.image("my.RData")
ls()
saveRDS(x, "x.rds")
y <- readRDS("x.rds")


### Saving commands to a script
#For reproducibility, it is also wise to save all of the commands that you use to a script.  In RStudio, the History pane shows the commands you have executed.

#Open a new R Script File (Green plus icon in top left), and put some commands in it (maybe from the first chunk above) and Save As *script1.R*.  Then, from within R, you can `source` the script to run the commands.


source('script1.R')


#You can also run the script from the unix command line/terminal.  RStudio has a convenient terminal window as well.


Rscript script1.R


## Add-on packages
#Most of the time, you will not be able to do all of your analysis with plain base R.  You will need some additional packages.  In RStudio, you can use the *Packages* pane to see what packages are on your system and install new ones.  But, you can also install through the console.

sessionInfo()
install.packages('wesanderson')
library(wesanderson)



## Help!
#You can get help on an r object using `?` or by searching in the help window in RStudio.

?rep
?sample


#Sometimes you will get an error or warning message when you run your code. [Common errors](http://varianceexplained.org/courses/errors/) that you may see. [^3]

foo(5,3)


#Sometimes, the error will be more cryptic to you.  In this case, copy the error message, and try searching for it online either in a general search, or on the Stack Exchange sites like https://stackoverflow.com/questions/tagged/r or https://stats.stackexchange.com/ or the Biostar sites https://support.bioconductor.org/ and https://www.biostars.org/.



###Vectors

#The basic data structures in R are vectors, data frames, matrices, lists, and functions.  Add-on packages may implement their own classes of data structures as well.

#- Vectors are the simplest data structures in R.
#- Different types of vectors: numeric, character, logical, factor,...

## Vector basics

#- **numeric** vectors are collections of decimal numbers
#- **character** vectors are collections of strings which should be in single or double quotes to differentiate from variables in the workspace


num_vector <- c(7,3,4,6,2)
char_vector <- c("volleyball", "  badminton", "netball", "tennis")



### Accessing elements
#- vectors are 1-D
#- access their elements by their index with 1-based numbering
#- access multiple elements with index vector notation
#- negative indexes remove elements
#- `:` symbol makes a vector of a regular sequence
#- combine indexing with assignment


num_vector[3]
num_vector[c(2,5)]
num_vector[2:5]
num_vector[-4]
num_vector[4] <- 37.5



### Getting info about vectors

#*Check* which type of vector (or any data structure you have) with `class` or `typeof`.  In general, checking for class is sufficient.

y_float <- c(5, sqrt(7), 3/21)
y_float
class(y_float)
typeof(y_float)



#*Check* the beginning or end of a vector with `head` and `tail`

months <- month.name #constant in R
head(months)
tail(months)




### Vector operations
#Most operators/functions are vectorized - meaning they can take a vector of any length and perform the same operation element-wise.

#*Example*: manipulate strings (useful for data cleanup) - substitute, trim

char_vector
gsub("a", "ae", char_vector)
char_vector <- trimws(char_vector)
char_vector



#*Example*: arithmetic operations

x <- -1:12
x
5 + x/2
#x %% 2
#y <- c(0.2, 0.5)
#x+y


# *Check* the length of vectors

length(x)
length(y)



## Logical, Factor, and Missing Value Vectors

### Logical vectors
#We can ask questions about our data, and filter based on the answers.

#- `which` returns the indexes of the *TRUE* elements of a logical vector
#- `!` negates
#- can filter a vector based on a logical expression

x
x > 5
gt_5 <- x > 5
which(gt_5)
which(!gt_5)
!gt_5
x[x>5]


### Missing and other special values
#Usually you see these values because something is wrong with your code or unexpected or missing in input data.

#- `NA`: *Not Available* - indicates a value that is missing
#- `NaN`: *Not a Number*; `Inf` and `-Inf`: *positive* and *negative infinity* [^1]


sqrt(-9)
1/0
var(8)
mean(c(7, 2.75, 32, 'a'))


#**Warning** messages produced for some operations ↑↑

#- `NULL`: null object - often used for undefined values.  Unlike others, this object doesn't exist

y_null <- c(7, 2.75, 32, NULL)
y_na <- c(NA, 2.75, 7, 32)
y_inf <- c(7, 2.75, Inf, 32)
mean(y_null)
mean(y_na)
mean(y_inf)


# *Check* for value types using `is` functions

which(is.na(y_na))
which(is.finite(y_inf))
is.numeric(c(7, 2.75, 32, 'a'))



#- *Exercise*: Count the number of `NA` elements in this vector `c(34, 56, 55, 87, NA, 4, 77, NA, 21, NA, 39)`

x <- c(34, 56, 55, 87, NA, 4, 77, NA, 21, NA, 39)
length(which(is.na(x)))

## This also works!
sum(is.na(x))


### Factors
#Factor vectors are often used for discrete or categorical data [^2].  

**The Good**
  #Factors have additional structure that gives them an ordering.  The ordering of the factor vector is called its **levels**.  You can convert character vectors to factors using `factor` and the reverse using `as.character`.
  
  
  time_of_day <- c("evening", "midnight", "dawn", "dusk", "midday")
sort(time_of_day)
time_of_day <- factor(time_of_day, levels=c("midnight", "dawn", "midday", "dusk", "evening"))
class(time_of_day)


#Exercises
#- What does `as.numeric` return for the factor vector?
#- What data type does `levels` return?

as.numeric(time_of_day)
levels(time_of_day)



## **The Bad**
#Factors can be confusing because they appear to be regular character vectors, but the ordering can cause methods to behave in unexpected ways.  To make matters worse, R has an unfortunate default setting which sets strings as factor vectors in some situations.  We will turn this off, and it's recommended to do this for all future R code.[^4]


options(stringsAsFactors=FALSE)

