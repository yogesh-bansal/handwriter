% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BatchProcessing.R
\name{process_batch_list}
\alias{process_batch_list}
\title{Process Batch List}
\usage{
process_batch_list(images, output_dir, return_result = TRUE)
}
\arguments{
\item{images}{A vector of image file paths}

\item{output_dir}{A directory to save the processed images}

\item{return_result}{TRUE/FALSE whether to return the result. If TRUE, the
processed documents with be saved and a list of the processed documents
will be returned. If FALSE, the processed documents will be saved, but
nothing will be returned.}
}
\value{
A list of processed documents
}
\description{
Process a list of handwriting samples saved as PNG images:
(1) Load the image and convert it to black and white with \code{\link[=readPNGBinary]{readPNGBinary()}}
(2) Thin the handwriting to one pixel in width with \code{\link[=thinImage]{thinImage()}}
(3) Run \code{\link[=processHandwriting]{processHandwriting()}} to split the handwriting into parts called \emph{edges} and place \emph{nodes} at the ends of
edges. Then combine edges into component shapes called \emph{graphs}.
(4) Save the processed document in an RDS file.
(5) Optional. Return a list of the processed documents.
}
\examples{
\dontrun{
images <- c('path/to/image1.png', 'path/to/image2.png', 'path/to/image3.png')
process_batch_list(images, "path/to/output_dir", FALSE)
docs <- process_batch_list(images, "path/to/output_dir", TRUE)
}

}
