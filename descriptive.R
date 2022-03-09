airquality<- datasets:: airquality

### Top 10 and bottom 10 rows of data
head(airquality,10)
tail(airquality,10)

##### column
airquality[,c(1,2)]

df<- airquality[-6]

### accessing values in a dataframe
airquality$Temp

## generate summary statistics for a column
summary(airquality$Ozone)
summary(airquality$Solar.R)
summary(airquality$Wind)
summary(airquality$Temp)
summary(airquality$Month)
summary(airquality$Day)
summary(airquality)


### plot data for visualization
plot(airquality$Ozone)
plot(airquality$Wind,airquality$Temp)
plot(airquality)

## plot with points and lines
## p=points l=lines b=both
plot(airquality$Ozone,airquality$Month,type="b")
plot(airquality$Solar.R,type="l")

## adding information to the plot
plot(airquality$Wind,xlab="ozone concentration" , ylab= "no of instances",
     main= "ozone label on NY city",col="blue")

## bar chart

barplot(airquality$Ozone,xlab="ozone concentration", ylab="ozone level",
        main= "ozone concentration in NY city", col="blue", horiz=F,axes=T)

## histogram
hist(airquality$Temp)
hist(airquality$Temp,main="solar radiation values in air",
     xlab="solar rad",col="red")
## single box plot
boxplot(airquality$Wind,main="BOX PLOT")
boxplot.stats(airquality$Wind)$out  ## showing the outliers

boxplot(airquality[,1:4],main="multiple")

## when all the plots to be shown in one page
## mar = margin of the grid on the four side
## mfrow = no of columns and rows
## las stands for labels of the plot 0=vertical 1=horizontal
## bty stands for box around the plot o=yes n=no


par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Month,type="b")
plot(airquality$Wind,xlab="ozone concentration" , ylab= "no of instances",
     main= "ozone label on NY city",col="blue")
barplot(airquality$Ozone,xlab="ozone concentration", ylab="ozone level",
        main= "ozone concentration in NY city", col="blue", horiz=F,axes=T)
hist(airquality$Temp)
hist(airquality$Temp,main="solar radiation values in air",
     xlab="solar rad",col="red")
boxplot(airquality$Wind,main="BOX PLOT")
boxplot.stats(airquality$Wind)$out
plot(airquality$Wind,airquality$Temp)








