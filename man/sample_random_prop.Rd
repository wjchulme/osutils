% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sampling.R
\name{sample_random_prop}
\alias{sample_random_prop}
\title{Sample a proportion of patients (or other observational units) based on patient IDs}
\usage{
sample_random_prop(id, proportion)
}
\arguments{
\item{id}{An integer patient identifier with the following properties:
\itemize{
\item consistent between cohort extracts
\item unique
\item completely randomly assigned (no correlation with practice ID, age, registration date, etc etc) which should be true as it based on hash of true IDs
\item strictly greater than zero
}}

\item{proportion}{The proportion of patients (amongst all those who did not experience the event) to be sampled}
}
\value{
A logical vector indicating whether the patient has been sampled or not
}
\description{
Sample a proportion of patients (or other observational units) based on patient IDs
}
\details{
Result is \code{TRUE} with probability \code{p} and \code{FALSE} with probability \code{1-p}.
\code{p} is equal to \cr \code{ceiling(length(id)*proportion)/length(id)}, which is equal to \code{proportion} when
\cr \code{length(id)*proportion} is an integer, and slightly higher otherwise.
Patients are selected in ascending order of patient ID until the sampling proportion is met.
}
