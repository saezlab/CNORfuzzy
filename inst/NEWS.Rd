
\title{NEWS}
\name{CNORfuzzy NEWS}

\section{CHANGES IN VERSION 0.99.8}{
    \itemize{
        \item{add NEWS.Rd in inst/}
        \item{move tests in inst/unitTests/}
    }
}

\section{CHANGES IN VERSION 0.99.7}{
    \itemize{
        \item{USE CNOlist class from CellNOptR}
    }
}

\section{CHANGES IN VERSION 0.99.6}{
    \itemize{
        \item{REFACTORING}

            \itemize{
                \item{emove indexList and simList where possible. }
                \item{use preprocessing function inside CNORwrapFuzzy}
                \item{CNOList argument renamed in CNOlist}
            }

        \item{CODE}
            \itemize{
                \item{add hashtable in gaDiscrete useful for small model.}
            }
    }
}

\section{CHANGES IN VERSION 0.99.5}{
    \itemize{
        \item{UNIFORMISATION of NAMES/ARGUMENTS}
            \itemize{
                \item{made after the same uniformisation was done in CellNOptR 1.3.19}
                \item{Update manual/vignettes accordingly}
           }
    }
}

\section{CHANGES IN VERSION 0.99.4}{
    \itemize{
        \item{add computeScoreFuzzy function.}
    }
}

\section{CHANGES IN VERSION 0.99.3}{
    \itemize{
        \item{complete vignette.}
    }
}

\section{CHANGES IN VERSION 0.99.1}{
    \itemize{
        \item{complete manual}
    }
}

\section{CHANGES IN VERSION 0.99.0}{

    \itemize{
        \item{SIGNIFICANT USER-VISIBLE CHANGES}
            \itemize{
                \item{CNORwrapFuzzy is the main user interface function. }
                \item{Tutorial completed}
            }

        \item{NEW FEATURES}
            \itemize{
                \item{parameters of the optimisation procedure in
                    getRefinedModel can be set by the user}
                \item{defaultParametersFuzzy ease the creation of a structure to
                    handle all the parameters}
                \item{removed readMIDAS and makeCNOlist, which are now called
                    directly from CellNOptR. Similarly, prep4simFuzzy calls CellNOptR prep4sim
                    instead of rewritting it.}
            }
    }

}
