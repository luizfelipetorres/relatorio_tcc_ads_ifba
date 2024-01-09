%% Template para TCC no modelo relatório do curso de ADS do IFBA - Campus Salvador
%% versao 1.0
%% (c) 2024 Luiz Felipe Tôrres Farias
%% https://github.com/luizfelipetorres/relatorio_tcc_ads_ifba.git

% ------------------------------------
% Identification 
% ------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{relatorio_tcc_ads_ifba}[2024/01/08]

% ------------------------------------
% Preliminary declarations
% ------------------------------------
\LoadClassWithOptions{article}

% --- Packages
\RequirePackage{graphicx} % Necessário para inserir imagens 
\RequirePackage{xcolor} % Necessário para alterar cores
\RequirePackage[utf8]{inputenc} % Permite a utilização de caracteres UTF-8
\RequirePackage[brazil]{babel} % Altera o idioma para PT-BR
\RequirePackage[a4paper, margin=2.54cm]{geometry} % Definir a margem do documento
\RequirePackage{helvet} % Package with arial font 
\RequirePackage{textcase} % Caso seja necessário alterar a caixa do texto
\RequirePackage[num, abnt-repeated-title-omit=yes, abnt-emphasize=bf]{abntex2cite} % Utilizzado para as referências no padrão ABNT
\citebrackets[] 

% --- Constants
\gdef\orientadorMasculino{Orientador}
\gdef\orientadorFeminino{\orientadorMasculino{}a}
\gdef\coorientadorMasculino{Co\MakeTextLowercase{\orientadorMasculino}}
\gdef\coorientadorFeminino{Co\MakeTextLowercase{\orientadorFeminino}}
\gdef\@notdefined{N\~{A}O DEFINIDO}

% --- Commands
\renewcommand{\familydefault}{\sfdefault} % Change default font to arial
\newcommand{\titulo}[1]{\title{#1}}
\newcommand{\aluno}[1]{\author{#1}}
\newcommand{\orientador}[2][m]{
    \def\tituloOrientador{
        \ifx#1m
            \orientadorMasculino
        \else
            \orientadorFeminino
        \fi
    }   
    \gdef\nomeOrientador{#2} 
}
\orientador{\@notdefined}
\newcommand{\coorientador}[2][m]{
    \def\tituloCoorientador{
        \ifx#1m
            \coorientadorMasculino
        \else
            \coorientadorFeminino
        \fi
    }
    \gdef\nomeCoorientador{#2}
}
\newcommand{\pretextual}{
    \thispagestyle{empty}
    \begin{center}
        \begin{figure}
            \centering
            \includegraphics[width=3.35cm, height=4cm]{src/images/ads-vertical.png}
            \label{fig:enter-label}
            \vskip 13em%
        \end{figure}
        
        \Huge{\@title}
        \vskip 1.5em%
        \huge Trabalho de Conclusão de Curso \\
        \vskip 1.5em%

        \Large{
            \@author
            \vskip 1.5em%
            \nomeOrientador\ \\
            \tituloOrientador 
            \vskip 1.5em%
            \ifx\nomeCoorientador\empty
                \null
            \else
                \nomeCoorientador \\
                \tituloCoorientador
            \fi
        }
        
        
    \end{center}
    \thispagestyle{empty}
    \vspace*{\fill}
    \begin{center}
        \vskip 4em%
        Instituto Federal da Bahia - IFBA \\
        Curso de Análise e Desenvolvimento de Sistemas \\
        Campus Salvador \\
        \vskip 4em%
        Salvador, Bahia, Brasil \\
        \@date
    \end{center}

    % Página vazia
    \newpage
    \null
    \thispagestyle{empty}

    % Sumário
    \newpage
    \thispagestyle{empty}
    \tableofcontents
    \newpage
    \setcounter{page}{1}
}



