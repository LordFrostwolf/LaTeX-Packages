\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fischexercise}[2023/05/02 FiSch Exercise Layout]
\LoadClass{scrartcl}

\RequirePackage{fischmacros}
\RequirePackage{listings}
\RequirePackage{wasysym}
\RequirePackage{tikz}

%\renewcommand{\section}[1]{
%    \hrule
%    \large #1
%    \hrule
%}

\renewcommand{\customtitle}[3]{
    \begin{flushleft}
        \makebox[\columnwidth]{
            \begin{tikzpicture}
                \draw (0, 0) node[inner sep=5] {\includegraphics[width=\paperwidth]{Title-background-export.png}};
                \draw (0, 1.25) node[align = right,text width=\paperwidth-1cm] {\LARGE\textbf{Hausübung X}};
                \draw (0, 0.25) node[align = right,text width=\paperwidth-1cm] {\large\textbf{Aussagenlogik und Prädikatenlogik SoSe23}};
                \draw (0, -0.75) node[align = right,text width=\paperwidth-1cm] {\textbf{Finn Schubert}};
            \end{tikzpicture}
        }
    \end{flushleft}
}
