pdf("poisson.pdf")


plot.new()
plot.window(xlim=c(0, 20), ylim=c(0, 0.5))

lambdas <- c(1, 4, 10)
cols <- c("#8C2318", "#5E8C6A", "#F2C45A")
for (i in 1:3) {
    ppoisson <- cbind(0:20, dpois(0:20, lambdas[i]))
    points(ppoisson, pch=21, bg=cols[i])
    lines(ppoisson)
}

title(main="Poisson Distribution")
axis(1)
axis(2)
legend("topright", "lambda", lambdas, pch=21, pt.bg=cols, title=expression(lambda))

dev.off()
