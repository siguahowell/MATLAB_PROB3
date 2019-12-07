function prob3(x)
X = x(1:10,1);
Y = x(1:10,2);
%-----Pre-allocation&Initialization----%
nurm=zeros(1,10);
i=1;
%------Get the least norm of every degree----%
while i <= 10
    polfit = polyfit(X,Y,i);
    polval = polyval(polfit,X);
    nurm(i) = norm(Y-polval);
    i=i+1;
end
%----------get the lowest norm error------%
[values,Index] = min(nurm);
%------------get the index of the lowest error-----%
clear values;
Index=min(Index);
coefficients = polyfit(X,Y,Index);
%----------outputs----------%
disp('The coefficients are: \n ')
disp(coefficients)
disp('according to the norm:')
disp(nurm)