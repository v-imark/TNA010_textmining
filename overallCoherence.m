function Q = overallCoherence(C, II, lengths, k)
% Function that calculates the overall coherence Q
% by the sum of the coherence of each cluster where
% coherence is the sum of distances to centroid of the cluster.

Q = 0;
q = 0;
for j = 1:k
    pi = II(:,1:lengths(j), j);
    [~,n] = size(pi);
    for i = 1:n
        q = q + norm(II(:,i)-C(:,j));
    end
    Q = Q + q;
end

end