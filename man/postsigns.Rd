\name{postsigns}
\alias{postsigns}
\title{Post speed limit signs to Wikispeedia.}
\usage{
postsigns(input = NULL, type = list("args", "list", "df"), mlat = NA,
  mlon = NA, malt_meters = NA, mmph = NA, mkph = NA, mtag = NA,
  mcog = NA, mhours = NA, memail = NA, style = "POST",
  curl = getCurlHandle())
}
\arguments{
  \item{input}{Input R object to the function to post
  signs: list or data.frame.}

  \item{type}{Type of input: a single point (args), a list
  containing more than one point (list), or a data.frame
  (df).}

  \item{mlat}{Latitude of the point in degree decimal.}

  \item{mlon}{Longitude of the point in degree decimal.}

  \item{malt_meters}{Altidue of the point in meters.}

  \item{mmph}{Speed of speed limit sign in mph.}

  \item{mkph}{Speed of speed limit sign in kph.}

  \item{mtag}{Name of the sign.}

  \item{mcog}{Course over ground in degrees.}

  \item{mhours}{Optional field, not used presently.}

  \item{memail}{Email address of submitter.}

  \item{curl}{curl handle}

  \item{style}{"GET" or "POST"}
}
\value{
Returns success message if post succesful.
}
\description{
Post speed limit signs to Wikispeedia.
}
\examples{
\dontrun{
# Post a single sign
postsigns(mlat=49.87, mlon=-145.05, malt_meters=20, mmph=60, mtag="scotttest18", mcog=0, memail="johndoe@gmail.com", type = 'args')

# Post many signs
sign1 <- list(mlat=59.87, mlon=-115.05, malt_meters=20, mmph=60, mtag="testlist1", mcog=0, memail="johndoe@gmail.com")
sign2 <- list(mlat=59.87, mlon=-125.05, malt_meters=20, mmph=60, mtag="testlist2", mcog=0, memail="johndoe@gmail.com")
mysigns <- list(sign1, sign2)
postsigns(input = mysigns, type = 'list')

# Reading in data from spreadsheet (create your own following format of one below)
dat <- read.csv("~/github/SChamberlain/rwikispeedia/data/signs.csv")
postsigns(input = dat, type = 'df')
}
}

