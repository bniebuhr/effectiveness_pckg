% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/effectiveness.R
\name{effectiveness}
\alias{effectiveness}
\title{Function to plot effectiveness landscapes.}
\usage{
effectiveness(q1, q2, group = NA, label = NA, nlines = 10,
  myxlab = "QtComp", myylab = "QltComp")
}
\arguments{
\item{q1}{the "quantitative component", to plot on the X axis.}

\item{q2}{the "qualitative component", to plot on the Y axis.}

\item{group}{a grouping variable to set point shapes (e.g., family).}

\item{label}{a label for the individual points (e.g., spcies acronym).}

\item{nlines}{specify the number of isolines.}

\item{myxlab}{optional label for axis X.}

\item{myylab}{optional label for axis Y.}
}
\value{
A ggplot2 object.
}
\description{
Function to plot effectiveness landscapes.
}
\details{
The script plots effectiveness landscapes as described in Schupp, E. W., Jordano, P. and Gómez, J.M. 2010. Seed dispersal effectiveness revisited: a conceptual review. New Phytologist 188: 333-353.
}
\examples{
#------------------------------------------------------------------------
# Based on a dataset of Prunus mahaleb frugivores.
# In this example we build the effectiveness landscape just for the 
# quantitative component, plotting its two subcomponents, visitation 
# rate and per-visit effectiveness.
#------------------------------------------------------------------------
data(prunus)
effectiveness(prunus$visits, prunus$eff_per_vis, 
   prunus$group, prunus$animal, 10, 
   myxlab= "No. visits/10h", 
   myylab="Effectiveness/vis (No. fruits handled)")
#------------------------------------------------------------------------
}

