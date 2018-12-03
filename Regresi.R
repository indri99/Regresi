regresi <- read.csv(file.choose(), header=TRUE)
regresi

model <-lm(Pengalaman ~ Pendapatan, data=regresi)

summary(model)



plot(Pengalaman ~ Pendapatan, data=regresi)

abline(model, col = "red", lwd = 1)



# Predicting New Value based on our model

predict(model, data.frame(Pendapatan = 70))



regresi



poly_model <- lm(Pengalaman ~ poly(Pendapatan,degree=2), data = regresi)

poly_model



x <- with(regresi, seq(min(Pendapatan), max(Pendapatan), length.out=2000))

y <- predict(poly_model, newdata = data.frame(Pendapatan = x))



plot(Pengalaman ~ Pendapatan, data = regresi)

lines(x, y, col = "blue")

#17523111
#17523116