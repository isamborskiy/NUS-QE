\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nus-student-qe}[2018/03/13 v0.9]
%\RequirePackage{showframe} % DEBUG ONLY

\LoadClass[12pt, a4paper]{extreport}

\RequirePackage{mathptmx}
\RequirePackage[labelsep=period]{caption}
\RequirePackage{floatrow}

\RequirePackage{afterpage}

\RequirePackage{hyperref}
\hypersetup{
	colorlinks,
	citecolor=black,
	filecolor=black,
	linkcolor=black,
	urlcolor=black
}

\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}

\RequirePackage{url}
\def\UrlBreaks{\do\/\do-}

\RequirePackage[top=2cm, bottom=2cm, left=2.54cm, right=2.54cm]{geometry}

\RequirePackage{fancyhdr}

\RequirePackage[inline,shortlabels]{enumitem}
\setlist{nosep}

\RequirePackage{setspace}
\onehalfspace

\setlength{\parindent}{1.25cm}

\RequirePackage{tabu}

\RequirePackage{graphicx}

\RequirePackage{algorithm}
\RequirePackage{algorithmicx}
\RequirePackage{algpseudocode}

\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage[table,x11names]{xcolor}
\lstset{
	numbers=left,
	stepnumber=1,
	showstringspaces=false,
	tabsize=1,
	breaklines=true,
	breakatwhitespace=false,
	escapechar=|
}

\RequirePackage{etoolbox}

\interfootnotelinepenalty=10000

\patchcmd{\@makechapterhead}{\vspace*{50\p@}}{\vspace*{0pt}}{}{}
\patchcmd{\@makeschapterhead}{\vspace*{50\p@}}{\vspace*{0pt}}{}{}

\def\@makechapterhead#1{
	\vspace*{50\p@}
	{\parindent \z@ \raggedright \normalfont
		\interlinepenalty\@M
		\Huge\bfseries  \thechapter.\quad #1\par\nobreak
		\vskip 40\p@
}}

\floatsetup[figure]{style=plain, capposition=bottom}
\floatsetup[table]{style=plain, capposition=top}
\floatsetup[algorithm]{style=plain, capposition=top}
\floatsetup[listing]{style=plain, capposition=top}

%%% commands declaration

% author
\renewcommand{\author}[1]{
	\providecommand{\theauthor}{~}
	\renewcommand{\theauthor}{#1}
}

% supervisor
\newcommand{\supervisor}[1]{\newcommand{\thesupervisor}{#1}}

% title
\renewcommand{\title}[1]{\newcommand{\thetitle}{#1}}

% publish date
\newcommand{\thepublishdate}{\today}
\newcommand{\publishdate}[3]{\renewcommand{\thepublishdate}{#2~#1,~#3}}

% department
\newcommand{\thedepartment}{School of Computing}
\newcommand{\department}[1]{\renewcommand{\thedepartment}{#1}}

% title generation
\renewcommand{\maketitle}{
	\begin{titlepage}
		\center
		\vspace*{1cm}
		\includegraphics[scale=0.7]{images/nus-logo}\\[1.5cm]
		
		\textsc{\Huge QUALIFYING EXAMINATION PAPER}\\[3cm]
		
		\Huge \textbf{\thetitle}\\
		\Large \theauthor\\[2cm]
		
		\Large Supervisor: \thesupervisor\\[1cm]
		
		\Large \thedepartment\\
		\Large National University of Singapore\\[3cm]
		
		
		{\large \thepublishdate}\\
		\vfill
	\end{titlepage}
}

\newcommand{\blankpage}{
	\null
	\thispagestyle{empty}
	\addtocounter{page}{-1}
	\newpage
}

\renewcommand{\abstract}{
	\chapter*{Abstract}\label{chapter:abstract}
}

\newcommand{\acknowledgments}{
	\chapter*{Acknowledgments}\label{chapter:acknowledgments}
}

\newcommand{\figures}{
	\let\LaTeXStandardClearpage\clearpage
	\let\clearpage\relax
	\listoffigures
	\let\clearpage\LaTeXStandardClearpage
}

\newcommand{\tables}{
	\let\LaTeXStandardClearpage\clearpage
	\let\clearpage\relax
	\listoftables
	\let\clearpage\LaTeXStandardClearpage
}

\renewcommand\lstlistlistingname{List of Listings}

\newcommand{\listings}{
	\let\LaTeXStandardClearpage\clearpage
	\let\clearpage\relax
	\lstlistoflistings
	\let\clearpage\LaTeXStandardClearpage
}

\newcommand{\algorithms}{
	\let\LaTeXStandardClearpage\clearpage
	\let\clearpage\relax
	\listofalgorithms
	\let\clearpage\LaTeXStandardClearpage
}

\newcommand{\printmainbibliography}[1]{
	\addcontentsline{toc}{chapter}{Bibliography}
	\bibliographystyle{plainurl}
	\bibliography{#1} 
}
