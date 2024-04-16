\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fischdocument}[2023/05/02 FiSch Document Layout]
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
\RequirePackage{mathtools}

\definecolor{lightred}{RGB}{255, 136, 136}

\renewcommand{\customtitle}[2]{
    \addtokomafont{pagenumber}{\fontfamily{lmss}\selectfont}
    \fontfamily{lmss}\selectfont
    \setlength\parindent{0pt}
    \begin{flushleft}
        \makebox[\columnwidth]{
            \begin{tikzpicture}
                \draw (0, 0) node[inner sep=5] {\includegraphics[width=\paperwidth]{title-background-var.png}};
                \draw (0, 0.5) node[align = right,text width=\paperwidth-1cm] {\huge\textbf{#1}};
                \draw (0, -0.5) node[align = right,text width=\paperwidth-1cm] {\large\textbf{#2}};
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
    \vspace{3mm}
    \noindent\Large\textbf{#1}\normalsize

    \noindent\hrulefill

    \vspace{1mm}
}

\renewcommand{\epsilon}{
    \varepsilon
}