% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ranksProb_compare.R
\name{ranksProb_compare}
\alias{ranksProb_compare}
\title{Compare rank probabilities}
\usage{
ranksProb_compare(ey, e.one, m0, m1, sampleSize, effectType = c("continuous",
  "binary"))
}
\arguments{
\item{ey}{Numerics, mean covariate-effect size}

\item{e.one}{Numeric, one test effect which will vary across all tests}

\item{m0}{Integer, number of true null tests}

\item{m1}{Integer, number of true alternative tests}

\item{sampleSize}{Integer, total number of sample generated (use sample size
at least 100,000)}

\item{effectType}{Character ("continuous" or "binary"), type of effect sizes}
}
\value{
\code{Data} A data frame containing the seven columns; the ranks and
the corresponding ranks probability of the true null and the true alternative
hypothesis of the three approaches.
}
\description{
\code{OPWeight} package proposed a method to compute the
ranks probabilities of the covariate given the test-effect sizes from three
approaches: simualation, exact formula, and normal approximation. This
funciton uses the methods to compare the ranks probabilities from the three
approahes
}
\details{
The \code{OPWeight} package proposed methods to compute the ranks
probabilitiesof the covariate given the test effect size. This funciton uses
the methods to compare the rank probabilities from three approahes:
1) simulation, 2) exact formula, and 3) normal approximation\cr

The lower rank may generate missing values because of the large effcet sizes.
This is particularly true for the simulaiton approach. however,
\code{matplot} function requires equal sized vectors. This procedure will
replace the missing values by NA so that the vectors size become equal.
}
\examples{
# use sample size at least 100,000 for better result
# This is just an example
sampleSize = 1000
probData <- ranksProb_compare(ey = 1, e.one = 2, m0 = 5, m1 = 5,
                         sampleSize = sampleSize, effectType = "binary")

# plots------------
# colnames(probData) <- c("ranks", "SH0","SH1","EH0","EH1","AH0","AH1")
# matplot(probData[, 1], probData[, 2:5], type = "l", lty = 1:6, col =1:6,
# lwd = 2, xlab = "ranks", ylab = "P(rank | effect)")
# legend("topright", legend = c("SH0","SH1","EH0","EH1","AH0","AH1"),
#               lty = 1:6, col =1:6, lwd = 2)

}
\references{
Hasan and Schliekelman (2017)
}
\seealso{
\code{\link{prob_rank_givenEffect_simu}}
\code{\link{prob_rank_givenEffect_exact}}
\code{\link{prob_rank_givenEffect_approx}}
}
\author{
Mohamad S. Hasan, \email{shakilmohamad7@gmail.com}
}
