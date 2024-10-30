%@authors: Mateo Garcia

%Vectors definition
x = [10 25 70 100]
y = [25 50 75 100]


%get the analityc function
fun = Newton(y,x);
fun = fun - 60

%compute roots around 70 (aprox value)
newtonRaphson(71, fun)