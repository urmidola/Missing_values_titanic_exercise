mydata <- read.csv("titanic_original.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE, na.strings = c("", "NA"))
mydata1 <- mydata$embarked
mydata1[165:175]
mydata1[169]
str(mydata1[169])
is.na(mydata1)
# Finding the missing value in the embarked column and replacing it with "S"
mydata1 <- mydata$embarked
is.na(mydata1)
mydata$embarked[which(is.na(mydata$embarked))] <- "S"
mydata$embarked
embarked <- mydata$embarked 
mydata$age
sd(mydata$age, na.rm = TRUE)
#	Calculate the mean of the Age column and use that value to populate the missing values
mean(mydata$age, na.rm = TRUE)
mydata$age[which(is.na(mydata$age))] <- mean(mydata$age, na.rm = TRUE)
mydata$age
age <- mydata$age
#Filling empty slots in the boat column with a dummy value e.g. NA
mydata$boat
mydata$boat[which(is.na(mydata$embarked))] <- "NA"
mydata$boat
boat <- mydata$boat
# Create a new column has_cabin_number which has 1 if there is a cabin number, and 0 otherwise
mydata$cabin
has_cabin_number <- ifelse(mydata$cabin %in% NA, 0, 1)
has_cabin_number
bind1 <- (mydata[ ,1:4])
bind2 <- (mydata[ ,6:10])
bind3 <- (mydata[ ,13:14])
bind3
titanic_clean <- cbind(bind1, age, bind2, has_cabin_number, embarked, boat, bind3)
titanic_clean
write.csv(titanic_clean, file = "titanic_clean.csv", row.names = FALSE)