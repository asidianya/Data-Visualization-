library(forestplot)
test_data <- data.frame(coef1=c(1.17, 1.48, 1.83, 1.31, 0.92, 0.49, 0.67),
                        coef2=c(1.00, 1.15, 1.78, 0.81, 0.97, 0.46, 0.96),
                        low1=c(1.04, 1.24, 1.44, 0.90, 0.60, 0.36, 0.32),
                        low2=c(0.92, 0.93, 1.50, 0.30, 0.43, 0.07, 0.10),
                        high1=c(1.31, 1.77, 2.31, 1.91, 1.41, 0.67, 1.40),
                        high2=c(1.07, 1.34, 2.06, 1.32, 1.50, 0.85, 1.82))

col_no <- grep("coef", colnames(test_data))
row_names <- list(
  list("Overall", "East Asia and Pacific HR", "Europe and Central Asia HR", "Latin America and the Caribbean", "Middle East and North Africa HR", "South Asia HR", "Sub-Saraha Africa HR")
)

coef <- with(test_data, cbind(coef1, coef2))
low <- with(test_data, cbind(low1, low2))
high <- with(test_data, cbind(high1, high2))
forestplot(row_names, coef, low, high,
           zero = c(0.98, 1.02),
           boxsize=0.10,
           col=fpColors(box=c("darkblue", "darkred"),
                        line=c("darkblue", "darkred"),
                        summary=c("darkblue", "red")),
           xlab="Hazard Ratio",
           new_page = TRUE,
           legend=c("<=10 years", ">10 years"),
           legend_args = fpLegend(pos = list("topright"),
                                  title="Group",
                                  r = unit(.1, "snpc"),
                                  gp = gpar(col="#CCCCCC",lwd=1.5)))


#Females
library(forestplot)
test_data <- data.frame(coef1=c(1.29, 1.57, 1.40, 1.17, 1.04, 1.11, 0.93),
                        coef2=c(1.17, 1.60, 1.48, 1.40, 1.04, 0.39, 0.15),
                        low1=c(1.12, 1.25, 1.01, 0.67, 0.75, 0.75, 0.33),
                        low2=c(1.01, 1.35, 1.14, 0.95, 0.35, 0.25, 0.01),
                        high1=c(1.48, 1.97, 1.81, 1.64, 2.21, 1.54, 2.49),
                        high2=c(1.34, 1.84, 1.83, 1.85, 1.75, 0.75, 1.25))

col_no <- grep("coef", colnames(test_data))
row_names <- list(
  list("Overall", "East Asia and Pacific HR", "Europe and Central Asia HR", "Latin America and the Caribbean", "Middle East and North Africa HR", "South Asia HR", "Sub-Saraha Africa HR")
)

coef <- with(test_data, cbind(coef1, coef2))
low <- with(test_data, cbind(low1, low2))
high <- with(test_data, cbind(high1, high2))
forestplot(row_names, coef, low, high,
           zero = c(0.98, 1.02),
           boxsize=0.10,
           col=fpColors(box=c("darkblue", "darkred"),
                        line=c("darkblue", "darkred"),
                        summary=c("darkblue", "red")),
           xlab="Hazard Ratio",
           new_page = TRUE,
           legend=c("<=10 years", ">10 years"),
           legend_args = fpLegend(pos = list("topright"),
                                  title="Group",
                                  r = unit(.1, "snpc"),
                                  gp = gpar(col="#CCCCCC",lwd=1.5)))