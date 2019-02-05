test_num = 10000
resl = zeros(1,4)
tic
N = input('Enter a window size');
%Nv = [4 8 16 32];
%for k = 1:1:4
%N = Nv(k) 
w_s1 = (32 / N)^2;
resl_dat = zeros(50000,(w_s1*3));
pred_data = zeros(test_num,1);
act_dat = zeros(test_num,1);

 %tic
% %Dont need repetation
  for i = 1:50000
      resl_dat(i,:) = cifar_10_feature(tr_data(i,:),N);
  end
  [mu,sigma,p] = cifar_10_bayes_learn(resl_dat, tr_labels,w_s1)
%  %till that point
%%
% *Classify calling*
%code for classify
 for i = 1:test_num
     test_pic = cifar_10_feature(te_data(i,:),N);
     pred_data(i) = cifar1_10_bayes_classify(test_pic,mu,sigma,p);
     act_dat(i) = te_labels(i);
 end
 
 
 %%
 % *Evaliation*
%resl(k) = cifar_10_evaluate(pred_data,act_dat);
 cifar_10_evaluate(pred_data,act_dat);
toc
%end
%plot(resl)