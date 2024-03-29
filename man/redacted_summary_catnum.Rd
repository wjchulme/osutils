% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redaction.R
\name{redacted_summary_catnum}
\alias{redacted_summary_catnum}
\title{Categorical by numeric cross-tabulation, with redaction if necessary}
\usage{
redacted_summary_catnum(
  variable_cat,
  variable_num,
  threshold = 5L,
  .missing_name = "(missing)",
  .redacted_name = "redacted"
)
}
\arguments{
\item{variable_cat}{The categorical vector (or will be coerced to one)}

\item{variable_num}{The numeric vector}

\item{threshold}{The redaction threshold. If the length of \code{x} is less than or equal to this threshold, then no summary values will be reported.}

\item{.missing_name}{The string used to replace \code{NA} categories.}

\item{.redacted_name}{The string used to replace redacted values.}
}
\value{
A table of summary statistics for the numeric variable, stratified by the categorical variable
}
\description{
Categorical by numeric cross-tabulation, with redaction if necessary
}
\details{
This function takes a categorical vector and a numeric vector of the same length, and performs a cross-tabulation. Summary statistics are redacted according to the rules in \code{\link{redactor}}.
}
