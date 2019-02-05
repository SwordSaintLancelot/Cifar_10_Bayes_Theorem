function cifar_10_evaluate(pred , actu)
accu = sum(pred==actu)/length(actu);
% match_element = sum(accu == 0,1);
% disp(length(accu));
% perce_accuracy = (match_element / length(accu)) * 100;
% disp(['The accuracy percentage is  ', num2str(perce_accuracy)]);
disp(accu)

% if pred == actu
%     disp('the label is correctly defined')
% else
%     disp('the predicted and actual value are not equal')
% end