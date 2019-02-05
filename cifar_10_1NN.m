function [label] = cifar_10_1NN(x,trdata,trlabels)
neigh_dist = sum(((trdata - x(1,:)).^2),2);
% sq = neigh_dist.^2;
% final = sum(sq,2);
[M,I] = min(neigh_dist);
label = trlabels(I);
