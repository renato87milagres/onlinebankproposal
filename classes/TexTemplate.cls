\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{textemplate-abntex2}[2015/05/15 v1.0 modelo baseado em abnTeX2]

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

% alterando a capa
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    {\ABNTEXchapterfont\Large Pontif\'icia Universidade Cat\'olica de Minas Gerais}

    \vspace*{1cm}

    {\ABNTEXchapterfont\large\imprimirautor}

    \vspace*{\fill}
    {\ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo}
    \vspace*{\fill}

    {\large\imprimirlocal}
    \par
    {\large\imprimirdata}

    \vspace*{1cm}
  \end{capa}
}


% folha de rosto

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}
{\ABNTEXchapterfont\Large Pontif\'icia Universidade Cat\'olica de Minas Gerais}

    \vspace*{1cm}

{\ABNTEXchapterfont\large\imprimirautor}

\vspace*{\fill}\vspace*{\fill}

{\ABNTEXchapterfont\bfseries\Large\imprimirtitulo}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
  \imprimirpreambulo
  \end{minipage}%
  \vspace*{\fill}
}%

{\large\imprimirorientadorRotulo~\imprimirorientador\par}

\abntex@ifnotempty{\imprimircoorientador}{%
  {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
}%

\vspace*{\fill}

{\abntex@ifnotempty{\imprimirinstituicao}{\imprimirinstituicao\vspace*{\fill}}}

{\large\imprimirlocal}

\par

{\large\imprimirdata}
\vspace*{1cm}
\end{center}
}

\makeatother
