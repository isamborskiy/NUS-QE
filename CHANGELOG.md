# v0.9 (2018-03-13)
### Fixes
* fix issue with split footnote

# v0.8 (2018-03-02)
### Changes
* increase space at the top of title page

### New features
* add command to insert blank page (`\afterpage{\blankpage}`)

# v0.7 (2018-02-27)
### Fixes
* fix long urls (now they do not get out of the page)
* fix style of caption for listing

### New features
* add commands to generate list of listings (`\listings`) and algorithms (`\algorithms`)

# v0.6 (2018-02-03)
### Fixes
* fix caption for tables and algorithms

### Improvements
* add package for code listings
* add ability to use inline enumirate lists
* add ability to use short labels definition in itemize and enumirate lists

### Changes
* reduce gap between paper author and supervisor name on title page to support long titles

# v0.5 (2018-01-19)
### Fixes
* change bibliography style from `ieeetr` to `plainurl` (to support `url` attribute of bibtex entries and sorting by first author name)

# v0.4 (2018-01-17)
### New features
* add commands to generate list of figures (`\figures`) and tables (`\tables`)

# v0.3 (2018-01-17)
### Improvements
* make links in table of contents clickable

# v0.2 (2018-01-16)
### Changes
* change page margin (left and right from 2cm to 2.54cm)
* change work name on title page to "QUALIFYING EXAMINATION PAPER"

# v0.1 (2017-08-07)
### First release
This inaugural release implements the following things:
* title generation
* definitions of abstract and acknowledgments chapters
* ability to print bibliography from file
