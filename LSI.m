function documentsNumber = LSI(A, query, k, tol)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%SVD of document matrix
[Uk,Sk,Vk] = svds(A, k);

%Function for gettig Hk
Hk = Sk*Vk';

%Get qk
qk = Uk'*query;

%Approximation error
%Ak = Uk * Hk;
%x = norm(full(data.A)- Ak, "fro")/norm(full(data.A), "fro")

%Get cosineSimilarity in sorted order
documentsNumber = cosineSimilarity(Hk,qk, tol);
end

