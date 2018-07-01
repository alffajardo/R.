 

## Transformations and smoothing

im_hist<- hist(T1,plot=F)
par(mar=c(5,4,4,4)+0.3)
col1=rgb(0,0,1,1/2)
plot(im_hist$mids,im_hist
$count,log="y",type = 'h',lwd=10,lend=2,
col=col1,xlab="Intensity Values",ylab="Count
(Log Scale)")

#### Linear transformation

par(new=TRUE)
curve(x*1,axes=FALSE,xlab="",ylab = "",
col=2,lwd=3)
axis(side=4, at=pretty(range(im_hist$mids)),
max(T1), labels=pretty(range(im_hist$mids)))
mtext("Original Intensity",side=4,line=2)

#### This defines a linear spline. Other definitions are possible
lin.sp <- function(x,knots,slope)
  { knots <- c(min(x) knots,max (x))
  slopeS<- slope[1]
for(j in 2: length(slope)) {slopeS <- c(slopeS,slope[j]-
sum (slopeS) ) }


