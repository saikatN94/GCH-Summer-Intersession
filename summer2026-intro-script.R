######## Welcome to you very first R Script #################
############## This is comments sections ####################

## Let us first take a look at how R can be used a calculator for very basic operations

## How to use arithmetic operators in R

# Addition
5+2
#Subtraction
68-42
#Multiplication
78*4
#Division
98/12
#Exponent
7^4
#Modulus or remainder
87%%5

## How to use logical operators in R

#Less than
65<87
#Greater than
43>24
#Less than equal to
23<=24
### See what happens with this one
23<=23
#now compare it with 
23<23
#Not equal to
54!=65

# AND operator - used to check to conditions that must be either both true or both false at the same time
65<87 & 98<101
# Now see what happens here
65<87 & 98>=101

# OR operator - used to check to conditions where either one of them could be true or both true or both false at the same time
65<87 | 98<101
# Now see what happens here
65<87 | 98>=101        ## Did you get a different result from line 39?

# Equality operator - used to check to one value is equal to the other 
65==87 
# Now see what happens here
7==7


# Assignment operator

a=6 # this will store the value of 6 at a varible called 'a' in the memory to be used for later calculations

6+79
#compare this with 
a+79


#########################################################
# Load the Simple Biostat Program (SBP) into this session of R
# Do this at the start of each R session you use SBP


sbp.link="https://raw.githubusercontent.com/stan-pounds/Simple-Biostats-Program/main/setup-SBP.R"
source(sbp.link)

#############################################################
# Read a data set into R

data(nki70)

############################################
# Describe the distribution of grade in this data set

describe(grade,nki70)   # simplest syntax: describe(variable.name,dataset.name)
                        
# output includes everything needed for a scientific paper
# draft narrative for the results
# a table 
# a figure
# a draft narrative for the methods
# bibliographic references

#################################
# Click the broom icon at the top of the plots window
# this will erase all the figures

###########################################
# fig option controls number of figures

describe(grade,nki70,fig=0) # fig=0 means zero figures
describe(grade,nki70,fig=1) # fig=1 means one figure (default)
describe(grade,nki70,fig=2) # fig=2 means two figures (or max number)


##########################################
# tbl option controls number of tables

describe(grade,nki70,tbl=1)  # option tbl=1 gives one table (default)


########################################
# txt option controls level of detail in the narrative text

describe(age,nki70,txt=0) # option txt=0 gives no text
describe(age,nki70,txt=1) # option txt=1 gives some text (default)
describe(age,nki70,txt=2) # option txt=2 gives more text (if available)
describe(age,nki70,txt=3) # option txt=3 gives even more text (if available)

########################################
# clr option controls colors

describe(grade,nki70,clr="red")                  # colors one bar red, others blank
describe(grade,nki70,clr=c("red","blue"))        # colors one bar red & one blue
describe(grade,nki70,clr=c("red","blue","gold")) # three colors, one for each bar

############################################
# More on colors

show.colors()    # produce a color name legend
show.palettes(3) # produce a legend of palletes of three colors

# a technical fix
par(mai=rep(0.25,4)) # make small margins (0.25 inches) for plots

###########################################
# use color palette for colors

describe(grade,nki70,clr="rainbow") # rainbow color palette
describe(grade,nki70,clr="Warm")    # Warm color palette (not warm, R is picky about capitalization)
describe(grade,nki70,clr="Cold")    # cold color palette
describe(grade,nki70,clr="Tropic")  # tropic color palette

##########################################
# use multiple options

describe(grade,nki70,  # describe the grade variable of the nki70 dataset
         txt=0,tbl=0,  # no text, no tables
         clr="Earth")  # use the Earth color palette for figures

describe(grade,nki70,       # describe the grade variable of the nki70 data set
         txt=0,tbl=0,       # no text, no tables
         fig=2,clr="Earth") # two figures with the Earth color palette


describe(grade,nki70,       # describe the grade variable of the nki70 data set
         txt=1,tbl=1,       # short text, one table
         fig=2,clr="Earth") # two figures with the Earth color palette

################################################
# now copy your results into Word

grade.result=describe(grade,nki70,  # name the result "grade.result"    
                      txt=1,tbl=1,  # we want text and tables
                      fig=2,        # we want two figures
                      clr="Earth")  # use the Earth color palette (or choose your own)

# highlight and copy text from R into Word
# To get Figure into word: click Export, Copy to Clipboard, paste in Word


word.table(grade.result) # outputs a table in a format to copy into Word
                         # **INSTRUCTIONS**
                         # 1. Copy the output into Word.
                         # 2. Highlight the output in Word.
                         # 3. Go to Insert>Table>Convert Text to Table.

################################################
# In-Class Task: describe age and get your results into Word
# Here's a start

describe(age,nki70,clr="skyblue")
describe(age,nki70,clr="skyblue",fig=2)




