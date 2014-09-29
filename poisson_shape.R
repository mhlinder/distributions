pdf("poisson_bw.pdf")

plot.new()
plot.window(xlim=c(0, 20), ylim=c(0, 0.5))

pchs <- c(21, 10, 19)
lambdas <- c(1, 4, 10)
for (i in 1:3) {
    ppoisson <- cbind(0:20, dpois(0:20, lambdas[i]))
    points(ppoisson, pch=pchs[i])
    lines(ppoisson)
}

axis(1)
axis(2)
legend("topright", "lambda", lambdas, pch=pchs, title=expression(lambda))

dev.off()
