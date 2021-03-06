% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CreateOriginPeriods.R
\name{CreateOriginPeriods}
\alias{CreateOriginPeriods}
\title{CreateOriginPeriods}
\usage{
CreateOriginPeriods(OriginStart, OriginEnd = NULL, OriginLength = years(1),
  StartDay = 1, StartMonth = 1, Verbose = FALSE)
}
\arguments{
\item{OriginStart}{Either a vector of date-time objects, or a vector of numbers indicating the 
year.}

\item{OriginEnd}{A vector of date-time objects. If this argument is supplied, it is assumed that 
OriginStart contains date-time objects.}

\item{OriginLength}{A Period object. These are easily created as shown in the example below. The 
default is a period of one year. If OriginStart and OriginEnd are supplied, this argument is ignored.}

\item{StartDay}{If OriginStart and OriginEnd are supplied, this argument is ignored.}

\item{StartMonth}{If OriginStart and OriginEnd are supplied, this argument is ignored.}

\item{Verbose}{Boolean indicating whether or not to display warning messages.}
}
\value{
A vector of intervals
}
\description{
This will create a set of origin period values
}
\details{
If the triangle dataframe does not have lubridate intervals, they must be created. Origin 
periods may be established one of three ways:
1. The origin periods are passed in as POSIX dates.
   This is a simple matter of forming the interval using lubridate.
2. The origin periods are passed in with a start date, but no end date.
   We need to have a common period to establish the end date.
3. The origin periods are passed in as parts of a date.
   This will typically happen if we know the year, but not the month or day. In this case
   , the user may pass 
   in month and day values
}
\examples{
\dontrun{
# Case 1
library(lubridate)
OriginStart = c(mdy("1/1/2000"), mdy("1/1/2000"), mdy("1/1/2001"))
OriginEnd = c(mdy("12/31/2000"), mdy("12/31/2000"), mdy("12/31/2001"))

OriginPeriods = CreateOriginPeriods(OriginStart, OriginEnd)
OriginPeriods

# Case 2
OriginStart = c(mdy("1/1/2000"), mdy("1/1/2000"), mdy("1/1/2001"))
OriginPeriods = CreateOriginPeriods(OriginStart, OriginLength = months(12))
OriginPeriods

# Case 3
OriginStartYear = c(2000, 2000, 2001)
OriginPeriods = CreateOriginPeriods(OriginStartYear, OriginLength = years(1)
                                     , StartDay = 1, StartMonth = 1)
OriginPeriods
}

}
\seealso{
\code{\link{CreateDevelopmentLags}}, \code{\link{CreateEvaluationDates}}
}

