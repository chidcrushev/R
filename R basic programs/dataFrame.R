# $ sign is used to retrieve the named values of a data frame
data$Income.Group
#output
#Levels: High income Low income Lower middle income Upper middle income

#levels is used to retrieve the factors
levels(data$Income.Group)
#output
#[1] "High income"  "Low income"  "Lower middle income" "Upper middle income

#operations
#10 rows will be returned
data[c(1:10),]

#n rows with 3 columns  will be returned
data[, c(1:3)]


head(data)
tail(data)
nrow(data)
ncol(data)

#arithmetic opration
#A new column with multiplied value will be created
data$multipliedValue =  data$Birth.rate * data$Internet.users
data

#A new column with addition of corresponding values will be created
data$addition = data$Birth.rate * data$Internet.users
data

#Remove a column
data$addition <- NULL
data$multipliedValue <- NULL
data

#Filtering data frames
data[data$Birth.rate < 10 &
       data$Internet.users > 50 &
       data$Income.Group == "Upper middle income",]

#To create data frames
dataframe <-
  data.frame(Name = Countries_2012_Dataset,
             Code = Codes_2012_Dataset,
             Region = Regions_2012_Dataset)
head(dataframe)

#Merging data frames
new <- merge(data, dataframe, by.x = "Country.Code", by.y = "Code")
head(new)
