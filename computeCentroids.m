function  C = computeCentroids(II, M, lengths, k)
% Calculates the centroids of the clusters by taking the
% sum of all columns and dividing by total elements in the cluster.

C = zeros(M,k);

for j = 1:k
    pi = II(:,1:lengths(j), j);
    [m,n] = size(pi);
    C(:,j) = sum(pi,2)./n;
    C(:,j) = C(:,j)./norm(C(:,j));
end

end