function [mu,sig,p] = cifar_10_bayes_learn(c_train, label,N2)
mu = zeros(10,(N2*3));
%sig = zeros(10,3)  %task1
sig = zeros((N2*3),(N2*3),10); %task2
p = zeros(10,1);
for i = 1:1:10
    [row] = find(label==i-1);
    for j = 1:1:N2
        mu(i,j) = mean(c_train((row),j));
        mu(i,j+N2) = mean(c_train((row),j+N2));
        mu(i,(j+(2*N2))) = mean(c_train((row),(j+(2*N2))));
    end
%     sigma_r = cov(c_train((row),1));  %task1
%     sigma_g = cov(c_train((row),2));  %task1
%     sigma_b = cov(c_train((row),3));  %task1
    sig(:,:,i) = cov(c_train((row),:))  %task2
%    sig(i,:) = [sigma_r sigma_g sigma_b]   %task1
    p(i) = (length(row) / length(c_train))
end
    
    