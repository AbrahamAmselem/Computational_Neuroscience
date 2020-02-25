
h=[-15:15]
output_1=g(h,0,0.1)

plot(h,output_1)

function output=g(h,T,beta)
output=zeros(1,length(h));
for i=1:length(h)
    if (h(i)<=T)
         output(i)=0;
   
    elseif (T<h(i)&& h(i)<=(T+1/beta))
        output(i)=beta*(h(i)-T);
    
    elseif(h(i)>(T+(1/beta)))
        output(i)=1;
    end
end 

end