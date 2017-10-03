## Synopsis

Using the provided [dataset](https://questionnaire-148920.appspot.com/swe/), the goal was to extract the numerical information of the salaries to determine the qualifying offer (QO) for free agents. The QO is calculated by taking the average of top 125 salaries from the dataset.

## Installation

The file will work was done on RStudio. It will require 2 external packages, both available on CRAN. The packages are [dplyr](https://cran.r-project.org/web/packages/dplyr/index.html) and [rvest](https://cran.r-project.org/web/packages/rvest/index.html).

## Methods

(1) Since the data changes on every page load, it was imperative that the  the data was scraped and imported to R, that way in future reloads of the data, the solution would reflect the updated data.

(2) The grepl method was used extract the numerical information, ignoring the entries where there were multiple and singular dollar signs, commas and text (“no salary data”).

(3) Using the top_n from dplyr, a new dataset of the top 125 salaries (not players, since there could be ties) was made, and then the average was taken from the top 125 salaries.

## Data

The players' salaries was provided in the questionnaire composed from the Philadelphia Phillies analytics team 
