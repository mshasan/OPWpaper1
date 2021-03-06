% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simu_fwer.R
\name{simu_fwer}
\alias{simu_fwer}
\title{Simulate Family Wise Error Rate (FWER)}
\usage{
simu_fwer(s, m, alphaVec)
}
\arguments{
\item{s}{Integer, number of replications in a simulation}

\item{m}{Integer, total number of hypothesis test}

\item{alphaVec}{A numeric vector of the significance levels}
}
\value{
A numeric matrix of FWER for the different p-value weighting methods
}
\description{
This function simulate family wise error rate or test type I
error rate
}
\details{
This function generate pvalues from the \code{uniform(0, 1)} and then
apply the function \code{opw} from the R package \code{OPWeight} to obtain
the Familly Wise Error Rate (FWER)
}
\examples{
alphaVec = .05
simVal = 1:3  # in actual case use at least simVal = 1000
typeIerror_mat = sapply(simVal, simu_fwer, m = 100, alphaVec = alphaVec)

}
\references{
Hasan and Schliekelman (2017)
}
\seealso{
\code{\link{qvalue}}
\code{\link{prob_rank_givenEffect}}
\code{\link{weight_binary}}
\code{\link{weight_continuous}}
}
\author{
Mohamad S. Hasan, \email{shakilmohamad7@gmail.com}
}
