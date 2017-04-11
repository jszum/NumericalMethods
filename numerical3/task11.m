a=[40; 10; 5; 3; 2; 1; 1];

%Coefficients
x=1:1:14;
X = x';
A = [X.^0 X.^1 X.^2 X.^3 X.^4 X.^5 X.^6];
%sample x values
y=40+10*x+5*x.^2+3*x.^3+2*x.^4+x.^5+x.^6;

C = tsvd(A,y',10)
C_exact = A\y'

y
stddev=1:1:100;

%for i= 1:100
%  y_noised(i,:) = y + awgn(x, 0, i);
%  Cn = tsvd(A,y_noised(i,:)',10);
%  y_calculated(:,i) = (A * Cn);
%  
%  error_y(i) = norm(y_calculated(:,i)' .- y,2);
%endfor
%
%
%
%
%plot(stddev,error_y);
%xlabel('Standard deviation');
%ylabel('Normalized Euclidean error');

%Calculating the new y's
c = C;
y_2=c(1)+c(2).*x+c(3).*x.^2+c(4).*x.^3+c(5).*x.^4+c(6).*x.^5+c(7).*x.^6;
%generating noises
stddev=0:1:1000;
stddev=stddev';
for i=1:length(stddev)
y_n(:,i) = stddev(i).^2 * randn(length(y),1); 
%#ok<*SAGROW>
end
y_n=y_n+repmat(y_2,1,length(y_n));
y_n_corrected=abs(repmat(y,1,length(y_n))-y_n);
error_y=sqrt(sum(y_n_corrected.^2,1))/norm(y);
err_i=find(error_y>10e-6);
plot(stddev,error_y);
xlabel('Standard deviation');
ylabel('Normalized Euclidean error')