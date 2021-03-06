% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CreateGlobalAbundanceFields.R
\name{CreateGlobalAbundanceFields}
\alias{CreateGlobalAbundanceFields}
\title{Create global abundance dispersion field maps from local data frame
and shapefiles}
\usage{
CreateGlobalAbundanceFields(local_data, shapefiles_dir = NULL,
  raster_latlim = c(5, 50), raster_longlim = c(50, 120),
  raster_resolution = 5, base_local = 2, optional_species_names = NULL)
}
\arguments{
\item{local_data}{abundance counts site-species matrix/data frame.}

\item{shapefiles_dir}{The directory that contains shapefiles for all the
species in the data}

\item{raster_latlim}{The latitudinal range of the dispersion field}

\item{raster_longlim}{the longitudinal range of the dispersion field}

\item{raster_resolution}{The scale.resolution of the raster.
The higher the reason, the finer the raster is}

\item{base_local}{If the count of a species in a site is less than base_local,
it is assumed to be absent from the site. The default is 0.
Non zero values may result from obsrvational or data
recording errors}

\item{optional_species_names}{If the column name corresponding to some species
does not match with the shapefiles, the user might need
to replace it by another species close to it. In such a
scenario, instead of using column names, the user can
enter a new vector of names, which may be slight
modification on the species from the column of the data,
taking account of issues with non-matching bird species
between shape files and the local data frame.}
}
\value{
Returns a list with the names of the elements of the list given by the
row names of the input data matrix (sites). Each element of the list is the
dispersion field matrix generated corresponding to the bird species present
in the specific site to which it corresponds.
}
\description{
Reads a data frame or a matrix of local site-species abundance,
with rows being sites and columns being species, along with shapefiles for
each of the bird species (may be more too) ocurring in the data file and then
produces global dispersion field of abundance pattern for a user-specified
latitudinal and longitudinal range for each site, driven by the species
present in that site.
}
\keyword{counts}
\keyword{data,}
\keyword{dispersion}
\keyword{field}
\keyword{global}
\keyword{local}
\keyword{site-species}

