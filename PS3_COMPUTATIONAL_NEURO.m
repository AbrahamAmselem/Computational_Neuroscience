%Euler Method 
I=[9 11 15];

for s=1:length(I)  

  
    T=10;
    R=1;
    %I=9;

    h=1; %time step at 1 ms
    x=0:h:99; %range of x
    y=zeros(size(x));
    n=numel(y); %number of y values
        for i=1:n-1
            f=(-y(i)+R*I(s))/T
            y(i+1)=y(i)+h*f
            if y(i+1)>10
                y(i+1)=0
            end
                
         
        end   
        
  
     plot(x,y);hold on 
     legend('current 9','current 11','current 15')
    
end



