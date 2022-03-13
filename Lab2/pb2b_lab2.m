a = input('Enter the required value for a:');




function l = pb2b_lab2(n,t)
l = 0.0;
for k = 0:n
l = l + nchoosek(n,k)*nchoosek(n+k,k)*(((t-1)/2).^k);
end
end
t = -1:0.01:1;
hold on
for i = 1:a
y = P(i,t);
plot(t,y,"Linewidth",1,"Color",'g');
end

