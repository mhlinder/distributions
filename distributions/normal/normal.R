pdf("normal_bw.pdf")

plot.new()
plot.window(xlim=c(-4, 4), ylim=c(0, 1))

x <- seq(-4, 4, length=1000)
hx <- dnorm(x)

lines(x, hx)

axis(1)
axis(2)
title(xlab="x", ylab="p(x)")

dev.off()
