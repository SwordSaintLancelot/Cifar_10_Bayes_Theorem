function f = cifar_10_feature(x,N1)
w_s = (32 / N1)^2;
f = zeros(1,(w_s * 3));
vect = 1024 / w_s;
init_r = 1;
init_g = 1025;
init_b = 2049;
for i = 1:1:w_s
    f(i) = mean(x(1,(init_r:((init_r + vect)-1))));
    f(i+w_s) = mean(x(1,(init_g:((init_g + vect)-1))));
    f(i+(w_s*2)) = mean(x(1,(init_b:((init_b + vect)-1))));
    init_r = init_r + vect;
    init_g = init_g + vect;
    init_b = init_b + vect;
end
    
