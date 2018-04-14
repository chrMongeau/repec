# repec

[R](https://www.r-project.org/) package to interact with the RePEc API.

See: https://ideas.repec.org/api.html

## Installation

You can install it by using the `devtools` package:

```r
# install.packages('devtools') # If not already installed

devtools::install_github('chrMongeau/repec')
```

## Configuration

You will need to ask for an access code (see link above) that is linked
to a specific IP. The code will then needs to be used when calling most
of the functions by using the `code` parameter (see below). One way to
avoid passing explicitly the code is to create the `REPEC_API_KEY`
environment variable. The code below can be put in your `.RProfile` so
that it's always available when you start R:

```r
# YOURCODE is your personal access code
Sys.setenv(REPEC_API_KEY = 'YOURCODE')
```

## Usage

The functions generally accept a Short-ID (e.g., pmo915)  or a string.

### Functions with string

* getauthorshortid

### Functions with Short-ID

* getauthornep
* getauthorrecordfull
* getauthorrecordraw
* getauthortwitter

There is a generic function (`repec_api_with_id`) that can be used to call
one of the methods that use a Short-ID and is not yet available in the
package:

```r
repec_api_with_id(id = 'pmo915', method = 'somemethod', code = 'YOURCODE')
```

In the previous example `somemethod` is the name of the method you want
to call (e.g., `getauthornep`, `getauthortwitter`).

### Other functions

* areyouthere
* testip
* whatismyip
