#########################################################
# Load the Simple Biostat Program (SBP) into this session of R
# Do this at the start of each R session you use SBP


sbp.link="https://raw.githubusercontent.com/stan-pounds/Simple-Biostats-Program/main/setup-SBP.R"
source(sbp.link)

#############################################################
# Read a data set into R

get.package("penalized") # make the penalized package available for use
data("nki70")	# make the nki70 data set available for use 
help("nki70")	# open a help page about the nki70 data set 
View(nki70)	# open the nki70 data set in a data viewer


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


############################################
# Describe the distribution of age in this data set

describe(age,nki70)   # simplest syntax: describe(variable.name,dataset.name)

describe(age,nki70,fig=2)

describe(age,nki70,fig=4)

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


# Graphic options in SBP

pie.plot("ER",nki70)	# pie chart for ER status
pie.plot("Grade",nki70) # pie chart of Tumor Grade


bar.plot("Age",nki70) # histogram for a numeric variable
bar.plot("ER",nki70) # bar plot for a categorical variable

box.plot("Age",nki70)	# box plot of Age for all data
box.plot(Age~ER,nki70) # side-by-side boxplots of Age by ER status

bar.plot("ER",nki70)
bar.plot("ER",nki70,y.name="Estrogen Receptor",clr=c("gold","blue"))





