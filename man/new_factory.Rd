% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/new_factory.R
\name{new_factory}
\alias{new_factory}
\title{Create a new report factory}
\usage{
new_factory(
  factory = "new_factory",
  path = ".",
  report_sources = "report_sources",
  outputs = "outputs",
  move_in = TRUE,
  create_README = TRUE,
  create_example_report = TRUE,
  create_data_folders = TRUE,
  create_scripts_folder = TRUE,
  use_here = TRUE,
  use_rproj = TRUE,
  create_gitignore = TRUE
)
}
\arguments{
\item{factory}{The name of the report factory to be created.}

\item{path}{The folder where the report factory should be created.  This
will default to the current directory.}

\item{report_sources}{The name of the folder to be used for report
templates; defaults to 'report_sources/'.}

\item{outputs}{The name of the folder to be used for saving the built
reports; defaults to 'outputs/'.}

\item{move_in}{A \code{logical} indicating if the current session should move into
the created factory; defaults to \code{TRUE}. If \code{use_rproj} is also TRUE and
RStudio is being used then the corresponding project will be opened.}

\item{create_README}{A \code{logical} indicating if a 'README' file should be
created; defaults to TRUE.}

\item{create_example_report}{A \code{logical} indicating if \code{new_factory()} should
create an example report in the 'report_sources' folder along with some
example data in the 'data/raw' folder; defaults to TRUE.}

\item{create_data_folders}{a \code{logical} indicating if \code{new_factory()} should
create folders to store data; defaults to TRUE.}

\item{create_scripts_folder}{a \code{logical} indicating if \code{new_factory()} should
create folders to store R scripts; defaults to TRUE.}

\item{use_here}{a \code{logical} indicating if \code{new_factory()} should create
a \code{.here} file that can be used with \code{here::here()}; defaults to TRUE.}

\item{use_rproj}{a \code{logical} indicating if \code{new_factory()} should create
a \code{.Rproj} file that can be used with RStudio; defaults to TRUE.}

\item{create_gitignore}{a \code{logical} indicating if \code{new_factory()} should create
a minimal '.gitignore' file; defaults to TRUE.}
}
\value{
the report factory folder location (invisibly)
}
\description{
This function can be used to create a new report factory. By default, the
factory is created with a template of report, and the working environment is
moved to the newly created factory.
}
\details{
Assuming the default names are used then \code{new_factory} will create a report
factory folder (called "new_factory") that includes:
\itemize{
\item \code{report_sources}: a folder for storing the .Rmd reports
\item \code{outputs}: a folder storing the compiled reports
\item \code{factory_config}: a control file used to anchor a report factory
}

Depending on the values of the logical arguments, the factory may also
include:
\itemize{
\item \code{README.md}: Example README with instructions on how to use report factory.
\item \code{.gitignore}: a file used to tell git to ignore certain files including the
produced outputs in \code{outputs()}.
\item \verb{data/raw/}: a folder for storing raw data
\item \code{data/raw/example_data.csv}: a set of data for use with the example report
\item \verb{data/clean/}: a folder for storing cleaned data
\item \verb{scripts/}: a folder to store additional code that may be called in reports
\item \code{report_sources/example_report.Rmd}: an example .Rmd report template
\item \code{.here}: a file to anchor calls to \code{here::here()}
}
}
\examples{
\dontshow{.old_wd <- setwd(tempdir())}
f1 <- new_factory("new_factory_1", move_in = FALSE)
f2 <- new_factory("new_factory_2", move_in = TRUE)
\dontshow{
unlink(f1, recursive = TRUE)
unlink(f2, recursive = TRUE)
setwd(.old_wd)
}

}
