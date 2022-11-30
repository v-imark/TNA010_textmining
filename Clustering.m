function [Gk,qk] = Clustering(A, query, k)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%Get Ck
[~,C] = kmeans(A',k);
C = C';
C = C./norm(full(C));

%QR
[Pk, ~] = qr(C, 0);

%Get Gk
Gk = Pk'*A;

%Get qk
qk = Pk'*query;

% Ak = Pk * Gk;
% x = norm(full(data.A)- Ak, "fro")/norm(full(data.A), "fro")

%relevantDocs = cosineSimilarity(Gk,qk, tol);
end

