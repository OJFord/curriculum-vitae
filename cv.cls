\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}

\LoadClass{awesome-cv/awesome-cv}

%
% Modifications
%

% change default colour
\colorlet{awesome}{awesome-darknight}

% disable section colour
\setbool{acvSectionColorHighlight}{false}

% make smaller
\renewcommand*{\skilltypestyle}[1]{\fontsize{8pt}{1em}\bodyfont\bfseries\color{darktext} {#1}}

% change layout
\renewcommand*{\cventry}[5]{
  \vspace{-2.0mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{4.5cm} L{\textwidth - 4.5cm}}
    \entrydatestyle{#4} & \entrytitlestyle{#2} \\
    \entrylocationstyle{#3} & \entrypositionstyle{#1} \\
    & \descriptionstyle{#5}
  \end{tabular*}
}

% rename cvhonors -> cvawards; change column sizing
\renewenvironment{cvhonors}{\undefined}{}
\newenvironment{cvawards}{
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2mm}
  \begin{center}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} C{2.0cm} L{\textwidth - 5.5cm} R{3.5cm}}
}{
    \end{tabular*}
  \end{center}
}

% rename cvhonor -> cvaward
\let\cvhonor\undefined
\newcommand*{\cvaward}[4]{
  \honordatestyle{#4} & \honorpositionstyle{#1}, \honortitlestyle{#2} & \honorlocationstyle{#3} \\
}

% change layout
\renewenvironment{cvskills}{
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2.0mm}
  \begin{center}
    \setlength\tabcolsep{1ex}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} R{4.5cm * \real{0.9}} L{{\textwidth - 4.5cm} * \real{0.9}}}
}{
    \end{tabular*}
  \end{center}
}

% change alignment
\renewenvironment{cvitems}{
  \vspace{-4.0mm}
  \begin{justify}
    \begin{itemize}[rightmargin=2ex, nosep, noitemsep]
      \setlength{\parskip}{0pt}
      \renewcommand{\labelitemi}{\bullet}
}{
    \end{itemize}
  \end{justify}
  \vspace{-4.0mm}
}

%
% Additions
%

% like \cventry, but reduced to just company & (added) overview - useful for \cventryrole
\newcommand*{\cventryjob}[2]{
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{4.5cm} L{\textwidth - 4.5cm}}
    & \entrytitlestyle{#1} \\
    & \descriptionstyle{#2}
  \end{tabular*}
}

% as original \cventry, but layout changed & squashed up to meet more recent role above; no company/overview.
\newcommand{\cventryrole}[4]{
  \vspace{-3.0mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{4.5cm} L{\textwidth - 4.5cm}}
    \entrydatestyle{#2}\newline\entrylocationstyle{#3} & \entrypositionstyle{#1} \\
    & \descriptionstyle{#4}
  \end{tabular*}
}
