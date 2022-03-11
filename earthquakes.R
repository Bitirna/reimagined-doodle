e_quakes<- datasets:: quakes


## generate summary statistics for a column

summary(quakes)

## visualization techniques

par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o")
plot(quakes$depth)
plot(quakes$depth,quakes$mag,type="l")
plot(quakes$mag,xlab="Magnitude of earthquake",ylab="no of instances",
     main= "Effect of magnitude for earthquake",col="blue")
barplot(quakes$depth,xlab="depth", ylab="no of instances",
        main= "effect of earthquake", col="blue", horiz=F,axes=T)
hist(quakes$mag)
hist(quakes$depth,main="Depthwise frquency of earthquake",
     xlab="depth",col="red")
boxplot(quakes$mag,main="BOX PLOT")
boxplot.stats(quakes$mag)$out
boxplot(quakes$depth,main="box plot")
boxplot.stats(quakes$depth)$out
