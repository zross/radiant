% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/visualize.R
\name{visualize}
\alias{visualize}
\title{Visualize data using ggplot2 \url{http://docs.ggplot2.org/current/}}
\usage{
visualize(dataset, xvar, yvar = "none", type = "hist", facet_row = ".",
  facet_col = ".", color = "none", bins = 10, smooth = 1, check = "",
  axes = "", data_filter = "", shiny = FALSE)
}
\arguments{
\item{dataset}{Dataset name (string). This can be a dataframe in the global environment or an element in an r_data list from Radiant}

\item{xvar}{One or more variables to display along the X-axis of the plot}

\item{yvar}{Variable to display along the Y-axis of the plot (default = "none")}

\item{type}{Type of plot to create. One of Histogram ('hist'), Density ('density'), Scatter ('scatter'), Line ('line'), Bar ('bar'), or Box-plot ('box')}

\item{facet_row}{Create vertically arranged subplots for each level of the selected factor variable}

\item{facet_col}{Create horizontally arranged subplots for each level of the selected factor variable}

\item{color}{Adds color to a scatter plot to generate a heat map. For a line plot one line is created for each group and each is assigned a different colour}

\item{bins}{Number of bins used for a histogram (not accessible in Radiant)}

\item{smooth}{Adjust the flexibility of the loess line for scatter plots (not accessible in Radiant)}

\item{check}{Add a regression line ("line"), a loess line ("loess"), or jitter ("jitter") to a scatter plot}

\item{axes}{Flip the axes in a plot ("flip") or apply a log transformation (base e) to the y-axis ("log_y") or the x-axis ("log_x")}

\item{data_filter}{Expression used to filter the dataset. This should be a string (e.g., "price > 10000")}

\item{shiny}{Did the function call originate inside a shiny app}
}
\value{
Generated plots
}
\description{
Visualize data using ggplot2 \url{http://docs.ggplot2.org/current/}
}
\details{
See \url{http://vnijs.github.io/radiant/base/visualize.html} for an example in Radiant
}
\examples{
visualize("diamonds", "carat", "price", type = "scatter", check = "loess")
visualize("diamonds", "price:x", type = "hist")
visualize("diamonds", "carat:x", yvar = "price", type = "scatter")
diamonds \%>\% visualize(c("price","carat","depth"), type = "density")
}

