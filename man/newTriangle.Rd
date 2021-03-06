% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Triangle.R
\name{newTriangle}
\alias{newTriangle}
\title{Create a Triangle object.}
\usage{
newTriangle(TriangleData, OriginPeriods = NULL, DevelopmentLags = NULL,
  OriginEnd = NULL, OriginLength = years(1), StartDay = 1,
  StartMonth = 1, DevelopmentPeriod = months(1), EvaluationDates = NULL,
  OriginPeriodType = "Accident Year", TriangleName = NULL,
  StaticMeasures = NULL, StochasticMeasures = NULL, Groups = NULL,
  Cumulative = TRUE, Verbose = TRUE)
}
\arguments{
\item{TriangleData}{A dataframe}

\item{OriginPeriods}{The name of the column in the TriangleData which holds the origin period.}

\item{DevelopmentLags}{The column which holds the development lags.}

\item{OriginEnd}{If the OriginPeriods argument refers to the start date of an origin period, this column holds the end dates.}

\item{OriginLength}{If origin period is not an interval, this is used to construct the origin period.}

\item{StartDay}{If origin period is not an interval, this is used to construct the origin period.}

\item{StartMonth}{If origin period is not an interval, this is used to construct the origin period.}

\item{DevelopmentPeriod}{If DevelopmentLags is not a period object, this is used to contruct DevelopmentLags.}

\item{EvaluationDates}{A vector of dates corresponding to the data in TriangleData.}

\item{OriginPeriodType}{A character value describing the type of origin period.}

\item{TriangleName}{A character value used to refer to the Triangle object.}

\item{StaticMeasures}{A character vector which names the static measures in the Triangle object.}

\item{StochasticMeasures}{A character vector which names the stochastic measures in the Triangle object.}

\item{Groups}{A character vector which names the column which contains grouping data.}

\item{Cumulative}{Boolean indicating if the stochastic measures are cumulative or incremental.}

\item{Verbose}{Boolean indicating whether or not warnings should be displayed.}
}
\description{
Create a Triangle object.
}

