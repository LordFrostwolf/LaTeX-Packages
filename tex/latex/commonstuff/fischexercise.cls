\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fischexercise}[2023/05/02 FiSch Exercise Layout]
\LoadClass{scrartcl}[12pt]

\RequirePackage{fischmacros}
\RequirePackage{listings}
\RequirePackage{wasysym}
\RequirePackage{tikz}
\RequirePackage{xcolor}
\RequirePackage[T1]{fontenc}
\RequirePackage{enumitem}
\RequirePackage{forest}
\RequirePackage{lstlangarm}
\RequirePackage{MnSymbol}

\definecolor{lightred}{RGB}{255, 136, 136}

\renewcommand{\customtitle}[3]{
    \addtokomafont{pagenumber}{\fontfamily{lmss}\selectfont}
    \fontfamily{lmss}\selectfont
    \setlength\parindent{0pt}
    \begin{flushleft}
        \makebox[\columnwidth]{
            \begin{tikzpicture}
                \draw (0, 0) node[inner sep=5] {\includegraphics[width=\paperwidth]{title-background-var.png}};
                \draw (0, 1.25) node[align = right,text width=\paperwidth-1cm] {\LARGE\textbf{#1}};
                \draw (0, 0.25) node[align = right,text width=\paperwidth-1cm] {\large\textbf{#2}};
                \draw (0, -0.75) node[align = right,text width=\paperwidth-1cm] {\textbf{#3}};
            \end{tikzpicture}
        }
    \end{flushleft}

}

\renewcommand{\section}[1]{
    \begin{flushright}
        \makebox[\columnwidth]{
            \begin{tikzpicture}
                \draw (0, 0) node[inner sep=5] {\includegraphics[width=\paperwidth]{section-background.png}};
                \draw (0, 0) node[align = left,text width=\paperwidth-1cm] {\large\color{white}\textbf{#1}};
            \end{tikzpicture}
        }
    \end{flushright}
}

\renewcommand{\subsection}[1]{
    \vspace{5mm}
    \noindent\textbf{#1}
    \vspace{1mm}\\
}
