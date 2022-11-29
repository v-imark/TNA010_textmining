function [lsi_precision, lsi_recall, c_precision, c_recall] = getPrecAndRec(Hk, lsi_qk, Gk, c_qk, relevantDocs, tol)
Nr = length(relevantDocs);

lsi_precision = 1:length(tol);
lsi_recall = lsi_precision;
c_precision = lsi_recall;
c_recall = lsi_precision;

for i = 1:length(tol)
    docsLSI = cosineSimilarity(Hk, lsi_qk, tol(i));
    docsClust = cosineSimilarity(Gk, c_qk, tol(i));
    
    DtLSI = length(docsLSI);
    DrLSI = length(intersect(docsLSI, relevantDocs));
    DtClust = length(docsClust);
    DrClust = length(intersect(docsClust, relevantDocs));

    lsi_precision(i) = DrLSI/DtLSI; 
    lsi_recall(i) = DrLSI/Nr;
    c_precision(i) = DrClust/DtClust;
    c_recall(i)= DrClust/Nr;
end
end