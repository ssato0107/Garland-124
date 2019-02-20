setwd("/Users/ShoichiroSato/Project/plotdata")
Confidence124<-read.csv("Garland 124.csv",header=TRUE)

plot(Confidence124[,1],Confidence124[,1+1],type="l",main="Total", xaxs="i",xlim=c(-48,1149),ylim=c(0,5.0),xaxt="n", bg="black",xlab="Ptich class (cents)", ylab="Frequency of annotation (%)")
+axis(side=1, at=c(-50,0,100,200,300,400,500,600,700,800,900,1000,1100,1150),cex.axis=1,tck=1.0,lty="dotted",col="grey")
+axis(side=2,tck=1.0,lty="dotted",ylim=c(0,5.0),col="grey")
polygon(c(Confidence124[,1], rev(Confidence124[,1])) , c(Confidence124[,1+13] ,rev(Confidence124[,1+19])) , col = 'grey' , border = NA)
lines(Confidence124[,1],Confidence124[,1+1],type="l")

#multiple:"Tonic:Finalvsmost frequnet"
plot(Confidence124[,1],Confidence124[,1+2],type="l",main="Tonic:Final vs most frequent", xaxs="i",xlim=c(-49,1150),ylim=c(0,5.0),xaxt="n", bg="black",xlab="Ptich class (cents)", ylab="Frequency of annotation (%)")
+axis(side=1, at=c(-50,0,100,200,300,400,500,600,700,800,900,1000,1100,1150),cex.axis=1,tck=1.0,lty="dotted",col="grey")
+axis(side=2,tck=1.0,lty="dotted",ylim=c(0,5.0),col="grey")
polygon(c(Confidence124[,1], rev(Confidence124[,1])) , c(Confidence124[,1+13] , rev(Confidence124[,1+19])) , col = rgb(1,0,0,alpha=0.18) , border = NA)
polygon(c(Confidence124[,1], rev(Confidence124[,1])) , c(Confidence124[,1+14] , rev(Confidence124[,1+20])) , col = rgb(0,0,1,alpha=0.18) , border = NA)
lines(Confidence124[,1],Confidence124[,1+1],type="l",col=rgb(1,0,0))
lines(Confidence124[,1],Confidence124[,1+2],type="l",col=rgb(0,0,1))
legend("topright", legend = c("T = Final note", "T = most frequent note"), col = c(rgb(1,0,0),rgb(0,0,1)),  lty = 1:1,cex=0.8)

#multiple:"Western vs non-Western"
plot(Confidence124[,1],Confidence124[,1+3],type="l",main="Western vs non-Western", xaxs="i",xlim=c(-49,1150),ylim=c(0,4.0),xaxt="n", bg="black",xlab="Ptich class (cents)", ylab="Frequency of annotation (%)")
+axis(side=1, at=c(-50,0,100,200,300,400,500,600,700,800,900,1000,1100,1150),cex.axis=1,tck=1.0,lty="dotted",col="grey")
+axis(side=2,tck=1.0,lty="dotted",ylim=c(0,4.0),col="grey")
polygon(c(Confidence124[,1], rev(Confidence124[,1])) , c(Confidence124[,1+15] , rev(Confidence124[,1+21])) , col="#3498db55" , border = NA)
polygon(c(Confidence124[,1], rev(Confidence124[,1])) , c(Confidence124[,1+16] , rev(Confidence124[,1+22])) , col="#e74c3c55" , border = NA)
lines(Confidence124[,1],Confidence124[,1+3],type="l",col="#2980b9")
lines(Confidence124[,1],Confidence124[,1+4],type="l",col="#c0392b")
legend("topright", legend = c("Western", "Non-Western"), col = c("#2980b9","#c0392b"),  lty = 1:1,cex=0.8)

       
#multiple:"Instrument vs. Vocal"
plot(Confidence124[,1],Confidence124[,1+5],type="l",main="Instrument vs. Vocal", xaxs="i",xlim=c(-49,1150),ylim=c(0,5.0),xaxt="n", bg="black",xlab="Ptich class (cents)", ylab="Frequency of annotation (%)")
+axis(side=1, at=c(-50,0,100,200,300,400,500,600,700,800,900,1000,1100,1150),cex.axis=1,tck=1.0,lty="dotted",col="grey")
+axis(side=2,tck=1.0,lty="dotted",ylim=c(0,5.0),col="grey")
polygon(c(Confidence124[,1], rev(Confidence124[,1])) , c(Confidence124[,1+17] , rev(Confidence124[,1+23])) , col="#27ae6060" , border = NA)
polygon(c(Confidence124[,1], rev(Confidence124[,1])) , c(Confidence124[,1+18] , rev(Confidence124[,1+24])) , col="#d3540060" , border = NA)
lines(Confidence124[,1],Confidence124[,1+5],type="l",col="#27ae60")
lines(Confidence124[,1],Confidence124[,1+6],type="l",col="#d35400")
legend("topright", legend = c("Instrument", "Vocal"), col = c("#27ae60","#d35400"),  lty = 1:1,cex=0.8)