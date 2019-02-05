test_num = 10000
resl_dat = zeros(test_num,1);
act_dat = zeros(test_num,1);
% for j = 2:2:16
%     fprintf('value of power is %d', j);
tic
for i = 1:test_num
    resl_dat(i) = cifar_10_rand(te_data(i,:));
    act_dat(i) = te_labels(i);
end
toc
%disp(resl_dat);
%g = te_labels(1:test_num,:)
cifar_10_evaluate(resl_dat,act_dat);
% end