% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TopicMetaDiversity.R
\name{TopicMetaDiversity}
\alias{TopicMetaDiversity}
\title{A bi-Y plot of topic proportions and a distance metric across sites, ordered by a metadata}
\usage{
TopicMetaDiversity(annotation, margin = c(5, 5, 2, 5), col.pts = "red3",
  pch.pts = 20, lwd.pts = 3, lty.pts = 1, cex.axis = 0.5,
  col.segments = "blue", lwd.segments = 2, lty.segments = 1, las = 2,
  text.x = "X", text.y1 = "Y", text.y2d = "Y2d", ylim = NULL,
  y2dlim = NULL, line.x = 3, line.y = 3, line.y2d = 3, round_off = 0,
  legend.pos = "topleft")
}
\description{
a bi-Y axis plot of topic proportions (or any site metadata) across sites arranged
preserving relative ordering of some metadata of interest (say elevation) along one Y axis
and a distance metric between adjacent sites plotted as segments. The goal is to figure out
drop/jump in topic proportions across sites is related to the distance between adjacent sites

 @param annotation A data frame that contains four objects
         \itemize{
              \item{\code{x_names}} {is a N vector of site names}
              \item{\code{x}} {a N vector of metadata that we use to order sites along x axis}
              \item{\code{y}} {a N vector of topic grades of membership or metadata plotted along one of the Y axis}
              \item{\code{y2d}}{ a N-1 vector of distances between adjacent sites plotted as segments connecting the two sites}
          }

 @param  margin  The values of the margin on the bottom, left, top and right.
 @param  col.pts The color of the points for \code{annotation$y}.
 @param  pch.pts The size of the points. Defaults to 20.
 @param  lwd.pts The lwd of the points plot. Defaults to 3.
 @param  lty.pts The lty of the points plot. Defaults to 1
 @param  cex.axis The size of the X axis labels
 @param  col.segments The color of the segments generated from distance metric
 @param  lwd.segments The lwd of the segments plotted.
 @param  lty.segments The lty of the segments plotted
 @param  las Orientation of the X axis labels. Defaults to 2.
 @param  text.x The X-axis label
 @param  text.y The label on the first Y axis
 @param  text.y2d The label on the second Y axis.
 @param  ylim   The range of values for the first Y axis. Defaults to NULL in which case
                the range is determined from data
 @param  y2dlim The range of values for the second Y axis. Defaults to NULL in which case
                the range is determined from data
 @param  line.x The gap between the X-axis label and the axis.
 @param  line.y The gap between the first Y-axis label and the first Y-axis
 @param  line.y2d The gap between the second Y-axis label and the second Y axis
 @param  round_off the rounding factor used to report the X-axis metadata with names
 @param  legend.pos the position of the legend

 @return Produces a bi-Y plot of \code{annotation$y} and segments of \code{annotation$y2d}
         against \code{annotation$x} in the X-axis.

 @examples
 annotation = data.frame(x_names = c(paste0("A",1:5), paste0("B",1:5)),
 x = c(0.5,2.0, 3.2, 4.6, 6.3,  23.5, 26.4, 28.5, 29.6, 31.8),
 y1 = c(0.4, 0.3, 0.4, 0.35, 0.4, 0.8, 0.85, 0.9, 0.8, 0.75),
 y2d =c(5, 6.6, 4, 5.2, 20, 3.4, 5.6, 4.5, 8, 10))

 TopicMetaDiversity(annotation)

 @export
}

