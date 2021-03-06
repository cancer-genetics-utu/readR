\name{read.to.list}
\alias{read.to.list}
\title{Read various input file formats into a list of data frames. Wrapper function for 'read2list' to automate
  reading further and avoid errors due to missing folders or files.}
\usage{
  read.to.list(dat, type, folder, nsheets = 1, sheet = NULL, skip = 0,
               sep = NULL, lines = FALSE, dec = NULL, ..., verbose = TRUE,
               x.verbose = FALSE)
}
\arguments{
  \item{dat}{\code{character}. File path.}

  \item{type}{\code{character}. File extension to be read: one of ".txt", ".tsv", ".csv", ".vcf", ".gtf", ".gff", ".xls", ".xlsx", ".xdr", ".RData".}

  \item{folder}{\code{character}. Folder where the file is found.}

  \item{nsheets}{\code{integer}. Number of sheets to be read if file is of type ".xls" or ".xlsx". All sheets starting from 1 up to the
    given number in the respective data file will be read. If more than one file is read this must be be an integer vector with the
    numbers of sheets in exactly the same order as the files.}

  \item{sheet}{\code{integer}. Sheet(s) to be read if file is of type ".xls" or ".xlsx". One sheet defined by the given integer in the
    respective data file will be read. If more than one file is read this must be be an integer vector with the sheet numbers in exactly
    the same order as the files.}

  \item{skip}{\code{integer}. Number of lines to skip from the top of the file.}

  \item{sep}{\code{character}. Field delimiter passed to 'read.delim' when reading text files.}

  \item{lines}{\code{lines}. Should the file be read line by line into a character vector by readLines()?}

  \item{dec}{\code{character}. The decimal separator for numbers.}

  \item{...}{Additional arguments passed to 'read2list()'.}

  \item{verbose}{\code{logical}. Should verbose output be printed?}

  \item{x.verbose}{\code{logical}. Should extended verbose output be printed?}
}
\value{
  A list of data frames.
}
\description{
  \command{read.to.list} is meant to act as a universal reading function as it attempts to read
  a number of different file formats into a list of data frames.
}
\seealso{
  \code{\link[base]{readLines}}

  \code{\link[utils]{read.delim}}

  \code{\link[gdata]{read.xls}}

  \code{\link[base]{load}}

  \code{\link[R.utils]{loadObject}}
}
\keyword{utilities}
