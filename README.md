# NUS [PhD Qualifying Examination](https://mysoc.nus.edu.sg/pg/research-based-qualifying-examination/) style v0.6
(tested for TeX Live 2017 + bibtex 0.99d)

## General data definition commands
* `\author{<full name>}` --- sets full name of the author;
* `\supervisor{<full name}` --- sets full name of the supervisor;
* `\title{<text>}` --- sets work title;
* `\department{<text>}*` --- sets student department (default: "School of Computing");
* `\publishdate{<day>}{<month>}{<year>}*` --- sets date (default: current date).

## Page markup commands
* `\maketitle` --- generates title page using [predefined data](#general-data-definition-commands);
* `\abstract` --- switches the chapter numbering to "Abstract";
* `\acknowledgments` --- switches the chapter numbering to "Acknowledgments";
* `\printmainbibliography` --- creates a bibliography list (with a correct title, also add it to the table of contents).
* `\figures` --- generates list of figures
* `\tables` --- generates list of tables

## Example
Check [this example](https://github.com/Nilera/NUS-QE/blob/master/grp-report.tex) for more information.
