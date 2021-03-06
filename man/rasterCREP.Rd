% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rasterConcentrationResponse.R
\name{rasterCREP}
\alias{rasterCREP}
\title{Raster Concentration Response Enhanced Program}
\usage{
rasterCREP(sl = endlist, pollutant = "PM10", cconc = year.brick,
  ppopr = people, bbase.conc = 10, iincidence.rate = NULL,
  rrisk.only = TRUE, verbose = FALSE, ...)
}
\arguments{
\item{sl}{Sicklist containing end point info}

\item{pollutant}{Character vector. The reference pollutant}

\item{cconc}{A ranster of concentration values}

\item{ppopr}{A raster of population numbers}

\item{bbase.conc}{A scalar giving the base concentration of the pollutant}

\item{iincidence.rate}{The incidence rate of the outcome of concern.}

\item{rrisk.only}{Logical. Returns the RR raster if TRUE}

\item{verbose}{Logical. Display messages or not.}

\item{...}{Arguments to be passed to/from other methods}
}
\description{
Function uses rasterConcentrationResponse, but adds specific names and categories
}

