pdf("binomial_bw.pdf")

max <- 40

plot.new()
plot.window(xlim=c(0, max), ylim=c(0, 0.5))

pchs <- c(21, 10, 19)
p <- c(0.5, 0.7, 0.5)
n <- c(20, 20, 40)
for (i in 1:3) {
    pbinomial <- cbind(0:max, dbinom(0:max, n[i], p[i]))
    points(pbinomial, pch=pchs[i])
    lines(pbinomial)
}

pairs <- cbind(n, p)
pairlabels <- paste(
                paste("(",
                    paste(pairs[,1], pairs[,2], sep=", "), sep=""),
                ")", sep="")

axis(1)
axis(2)
title(xlab="x", ylab="p(x)")
legend("topright", "(n, p)", pairlabels, pch=pchs, title="(n, p)")

dev.off()
