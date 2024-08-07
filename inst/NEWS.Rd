\name{NEWS}
\title{News for package \pkg{GeneNMF}}

\section{Version 0.6.0}{
New in this version:
\itemize{
    \item We updated how meta-programs (MPs) are calculated from individual programs. Instead of extracting gene sets for each program and then calculating a consensus, we keep the full vector of gene weights and calculate cosine similarities between the vectors. Consensus gene weights are then calculated as the average over all programs in a MP. 
    \item To impose sparsity in the decomposition, we include a `specificity.weight` parameter, which is used to re-normalize NMF loadings based on how specific a gene is for a given program. 
    \item To determine the number of genes to be included in a MP, we calculate the cumulative distribution for the gene weights in a given MP. Only genes that cumulatively explain up to a fraction of the total weight (`weight.explained` parameter) are included in the MP gene set.
    \item The definition and default of `min.confidence` has changed. The confidence of a gene in a given MP is calculated as the fraction of programs in which the gene has been determined to be part of the invidual program (using `weight.explained=0.8`).
    \item The parameter `nprograms` in the function `getMetaPrograms()` has been renamed to `nMP`, to avoid confusion
    \item New defaults: expression matrices are now by default not scaled or centered (the behavior can be altered using the `scale` and `center` parameters)
}}

\section{Version 0.4.0}{
\itemize{
    \item First stable version
}}
