# repec

[![GitHub release](https://img.shields.io/github/release/chrmongeau/repec.svg)](https://github.com/chrMongeau/repec/releases)
[![CRAN](https://www.r-pkg.org/badges/version/repec)](https://cran.r-project.org/package=repec)

[R](https://www.r-project.org/) package to interact with the RePEc API.

See: https://ideas.repec.org/api.html

## Installation

This package is on [CRAN](https://cran.r-project.org/package=repec). To
install it, type in your R console:

```r
install.packages('repec')
```

To install the latest version, you can use the `devtools` package:

```r
# install.packages('devtools') # If not already installed

devtools::install_github('chrMongeau/repec')
```

## Configuration

You will need to ask for an access code (see link above) that is linked
to a specific IP. The code will be needed when calling most
of the functions by using the `code` parameter (see below). One way to
avoid passing explicitly the code is to create the `REPEC_API_KEY`
environment variable. The code below can be put in your `.RProfile` so
that it is always available when you start R:

```r
# YOURCODE is your personal access code
Sys.setenv(REPEC_API_KEY = 'YOURCODE')
```

## Usage

The functions generally accept a Short-ID (e.g., pmo915) or a string.

### Functions with string

* `getauthorshortid`

### Functions with Short-ID

* `getauthornep`
* `getauthorrecordfull`
* `getauthorrecordraw`
* `getauthorstats`
* `getauthortwitter`
* `getfirstpubyear`
* `getgenealogy`
* `gethindex`
* `getinstrecord`
* `getjelforitem`

There is a generic function (`repec_api_with_id`) that can be used to call
one of the methods that use a Short-ID and is not yet available in the
package:

```r
repec_api_with_id(id = 'pmo915', method = 'somemethod', code = 'YOURCODE')
```

In the previous example `somemethod` is the name of the method you want
to call (e.g., `getauthornep`, `getauthortwitter`).

### Other functions

* `areyouthere`
* `testip`
* `whatismyip`

### Functions aliases

Functions were named according to the API method, but they have underscored
aliases that make them more readable. For instance, `getauthornep(...)` can
be called as `get_author_nep(...)`, `whatismyip(...)` as `what_is_my_ip(...)`,
etc. You probably get the point.

### Additional functions

Not all the API methods are available in the package. Unfortunately I have
not access to all of them, thus I don't know what they actually do. If you
want a function to be added, and know what it returns, please open an issue.
