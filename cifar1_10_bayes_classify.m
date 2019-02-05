function c = cifar1_10_bayes_classify(f,mu1,sigma1,p1)
prob = zeros(10,1);
for i = 1:1:10;
%     norm_r = normpdf(f(1),mu1(i,1),sigma1(i,1));
%     norm_g = normpdf(f(2),mu1(i,2),sigma1(i,2));
%     norm_b = normpdf(f(3),mu1(i,3),sigma1(i,3));
%     prob(i) = norm_r * norm_g * norm_b * p1(i);
      prob(i) = (mvnpdf(f,mu1(i,:),sigma1(:,:,i)))*p1(i);
end
disp(prob)
[m,I] = max(prob);
c = I-1;