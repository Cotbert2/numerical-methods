syms h;

taylor_exp = taylor(exp(h), 'Order', 5);
taylor_cos = taylor(cos(h), 'Order', 7);


disp('Taylor series for e^h:');
disp(taylor_exp);
disp('Taylor series for cos(h):');
disp(taylor_cos);


combined_sum = taylor_exp + taylor_cos;
disp('Taylor series for e^h + cos(h):');
disp(combined_sum);

combined_product = taylor(exp(h)*cos(h), 'Order', 7);
disp('Taylor series for e^h * cos(h):');
disp(combined_product);

order_sum = feval(symengine, 'degree', combined_sum, h);
order_product = feval(symengine, 'degree', combined_product, h);

fprintf('Order of approximation for e^h + cos(h): O(h^%d)\n', order_sum + 1);
fprintf('Order of approximation for e^h * cos(h): O(h^%d)\n', order_product + 1);
