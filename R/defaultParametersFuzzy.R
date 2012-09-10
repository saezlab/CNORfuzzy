#
#  This file is part of the CNO software
#
#  Copyright (c) 2011-2012 - EBI - Massachusetts Institute of Technology
#
#  File author(s): CNO developers (cno-dev@ebi.ac.uk)
#
#  Distributed under the GPLv2 License.
#  See accompanying file LICENSE.txt or copy at
#      http://www.gnu.org/licenses/gpl-2.0.html
#
#  CNO website: http://www.ebi.ac.uk/saezrodriguez/software/cno
#
##############################################################################
# $id: defaultParametersFuzzy.R 675 2012-03-09 11:43:44Z cokelaer $

defaultParametersFuzzy<-function(data=NA, model=NA){


    # data is a CNOlist as returned by makeCNOlist or CNOlist class from
    # CellNOptR
    paramsList<-list()
    paramsList$data<-data
    paramsList$model<-model

    # These are the parameters for the transfer functions. nrow indicates the
    # number of transfer functions.
    #  * column 1 is the parameter G
    #  * column 2 is the parameter N
    #  * column 3 is the parameter K
    # The parameters are chosen so that EC50 is 0.2,0.3,0.4,0.5,0.6,0.7 and 0.5
    paramsList$type1Funs<-matrix(data = NaN,nrow=7,ncol=3)
    paramsList$type1Funs[,1]=1
    paramsList$type1Funs[,2]=c(rep(3, 6), 1.01)
    paramsList$type1Funs[,3]=c(0.2, 0.3, 0.4, 0.55, 0.72,1.03, 68.5098)


    paramsList$type2Funs<-matrix(data = NaN,nrow=7,ncol=3)
    paramsList$type2Funs[,1]=c(0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8)
    paramsList$type2Funs[,2]=1
    paramsList$type2Funs[,3]=1

    #paramsList$type2Funs<-matrix(data = NaN,nrow=6,ncol=3)
    #paramsList$type2Funs[,1]=c(0.2, 0.3, 0.4, 0.5, 0.6, 0.7)
    #paramsList$type2Funs[,2]=1
    #paramsList$type2Funs[,3]=1

    paramsList$redThresh = c(0, 0.0001, 0.0005, 0.001, 0.003, 0.005, 0.01)

    paramsList$doRefinement = TRUE

    # GA parameters
    paramsList$sizeFac<-1e-04
    paramsList$NAFac<-1
    paramsList$popSize<-50
    paramsList$pMutation<-0.5
    paramsList$maxTime<-3*60
    paramsList$maxGens<-500
    paramsList$stallGenMax<-100
    paramsList$selPress<-1.2
    paramsList$elitism<-5
    paramsList$relTol<-0.1
    paramsList$verbose<-FALSE

    # optimisation parameters in getRefinedModel
    paramsList$optimisation = list(algorithm='NLOPT_LN_SBPLX', xtol_abs=0.001,maxEval=10000, maxTime=5*60)

    return(paramsList)
}

