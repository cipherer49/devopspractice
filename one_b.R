#printing in r
print("print")
# creating variables in r
var1 <- "hello"
print(var1)

#how to join/concatenate two or more elements
num <-9
num2 <-10
paste(num,"is my favorite number and i hate",num2)
#note you can't concatenate a int and a string
text <- "hi"
#paste(num2+text)
text2 <- "hello"
text3 <- "chalo"
paste(num+num2,"another way of concatenation")
paste(text,text2,text3,"another way")

#how to assign same values to multiple variables
potato <- putato <-potatoe <- "its the same thing"
print(potato)
print(putato)
print(potatoe)

'''#Basic data types in R can be divided into the following types:

numeric - (10.5, 55, 787)
integer - (1L, 55L, 100L, where the letter "L" declares this as an integer)
complex - (9 + 3i, where "i" is the imaginary part)
character (a.k.a. string) - ("k", "R is exciting", "FALSE", "11.5")
logical (a.k.a. boolean) - (TRUE or FALSE)'''

#how to find data type using class() function
k <- "constant"
class(k)
k<-1.0
class(k)
k<- 9i +3 #complex
class(k)
k<- 10L
class(k)

#storing a large string in a variabl
tokyo <- "it's great and one of the safest city
i love tokyo"
tokyo
cat(tokyo) # if you want the line break at same place


# vectors in R
'''A vector is simply a list of items that are of the same type.

To combine the list of items to a vector, use the c() function and separate the items by a comma.'''

v <- c(10,"hello")
print(v)
# to get values in sequence
g <- 10:-8
print(g)
#to find out length of vectors use length
length(g)


#Lists in R
list1 <- list("10",9,"hello")
print(list1)

#to access list conditions individually
list1[3] #index starts from 1 should print hello
length(list1)

# to check if a item is in the list or not
9 %in% list1

#appending in list
newlist <- append(list1,"bye")
print(newlist)

#joining two lists
thirdlist <- c(list1,newlist)
print(thirdlist)
# looping through a list
for(x in thirdlist){
  print(x)
}


##how to make data frames##
frame1 <- data.frame(
  age = c("10","20"),
   name = c("n1","n2")
)
print(frame1)

#summarising the frame
summary(frame1)
#how to access columns and row[c,r]
#getting age of n2
frame1[2,1]


#Creating a factor it is used for classification
groups <- factor(c('blue','blue','green','red'))
groups
#to only print levels
levels(groups)
