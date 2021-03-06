\name{FoldMatrix-class}
\docType{class}
\alias{FoldMatrix-class}
\alias{FoldMatrix-method}
\alias{FoldMatrix}
\alias{show,FoldMatrix-method}
\alias{summary,FoldMatrix-method}

\title{"FoldMatrix"}
\description{An object returned from \link{GenerateFoldMatrix}, usually passed to \link{RepeatRanking}.}

\section{Slots}{
	 \describe{
    \item{\code{foldmatrix}:}{A \emph{logical} \code{matrix} whose number of columns equals 
                              the number of replications and whose number of
                              rows equals  the number of observations. 
                              The jth column indicates which observation(s) is(are)
                              removed/mislabeled for the jth replication. 
                              The corresponding entries then equal \code{FALSE}.}
    \item{\code{k}:}{Number of observations that are removed or whose labels are exchanged.}
    \item{\code{replicates}:}{Number of replications if \code{k>1}.}
    \item{\code{type}:}{One of \code{"unpaired", "paired", "onesample"}, s. \link{GeneRanking}.}
    \item{\code{minclassize}:}{The minimum class size, s. \link{GenerateFoldMatrix}}
    \item{\code{balanced}:}{Balanced classes, s. \link{GenerateFoldMatrix}}
  }
}
\section{Methods}{
  \describe{
    \item{show}{Use \code{show(FoldMatrix)} for a brief information}
	 
	 \item{summary}{Use \code{summary(FoldMatrix, repl=1:2)} to find out
                  those observations which are left out/whose class labels
                  are exchanged in replications \code{1} and \code{2}}
	 }
	 }
	 
\references{Davison, A.C., Hinkley, D.V. (1997) \cr 
            Bootstrap Methods and their Application.
            \emph{Cambridge University Press}}
            
\seealso{\link{GenerateFoldMatrix}, \link{GenerateBootMatrix}, \link{RepeatRanking}}

\author{Martin Slawski \cr
        Anne-Laure Boulesteix}
        
\keyword{univar}
