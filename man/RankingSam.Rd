\name{RankingSam}
\alias{RankingSam}
\alias{RankingSam-methods}
\alias{RankingSam,matrix,numeric-method}
\alias{RankingSam,matrix,factor-method}
\alias{RankingSam,ExpressionSet,character-method}
\title{Ranking based on the SAM statistic}
\description{
  A wrapper function to the \code{samr} package.
}
\usage{
RankingSam(x, y, type = c("unpaired", "paired", "onesample"), pvalues = TRUE, gene.names = NULL, ...)
}
\arguments{
  \item{x}{A \code{matrix} of gene expression values with rows
           corresponding to genes and columns corresponding to observations or alternatively an object of class \code{ExpressionSet}.\cr
           If \code{type = paired}, the first half of the columns corresponds to 
           the first measurements and the second half to the second ones. 
           For instance, if there are 10 observations, each measured twice,
           stored in an expression matrix \code{expr}, 
           then \code{expr[,1]} is paired with \code{expr[,11]}, \code{expr[,2]}
           with \code{expr[,12]}, and so on.}
  \item{y}{If \code{x} is a matrix, then \code{y} may be
           a \code{numeric} vector or a factor with at most two levels.\cr
           If \code{x} is an \code{ExpressionSet}, then \code{y}
           is a character specifying the phenotype variable in
           the output from \code{pData}.\cr
           If \code{type = "paired"}, take care that the coding is
           analogously to the requirement concerning \code{x}.}
  \item{type}{\describe{
                \item{"unpaired":}{two-sample test.}
                \item{"paired":}{paired test. Take care that the coding of \code{y}
                                 is correct (s. above).}
                \item{"onesample":}{\code{y} has only one level. 
                                    Test whether the true mean is different
                                    from zero.}
                   
                                   
                }}
  \item{pvalues}{Should p-values be computed ? Default is \code{TRUE}.}
  \item{gene.names}{An optional vector of gene names.}
  \item{\dots}{Further arguments to be passed to \code{samr}. Consult
               the help of the \code{samr} package for details.}
}
\note{The computing time is relatively high, due to the fact that permutation
      statistics are generated.}
      
\value{An object of class \link{GeneRanking}.}
\references{Tusher, V.G., Tibshirani, R., and Chu, G. (2001).\cr 
             Significance analysis of microarrays applied to the ionizing radiation 
             response. \emph{PNAS, 98, 5116-5121.}
            
             Schwender, H., Krause, A. and Ickstadt, K. (2003).\cr
             Comparison of the Empirical Bayes and the Significance 
             Analysis of Microarrays. 
             \emph{Technical Report, University of Dortmund.}  
             }

\author{Martin Slawski \cr
        Anne-Laure Boulesteix}
\seealso{
         \link{RepeatRanking}, \link{RankingTstat}, \link{RankingFC}, \link{RankingWelchT}, \link{RankingWilcoxon},
          \link{RankingBaldiLong}, \link{RankingFoxDimmic}, \link{RankingLimma}, 
          \link{RankingEbam}, \link{RankingWilcEbam}, 
          \link{RankingShrinkageT}, \link{RankingSoftthresholdT}, 
          \link{RankingPermutation}}
\keyword{univar}
\examples{
\donttest{
### Load toy gene expression data
data(toydata)
### class labels
yy <- toydata[1,]
### gene expression
xx <- toydata[-1,]
### run RankingSam
sam <- RankingSam(xx, yy, type="unpaired")
}
}
