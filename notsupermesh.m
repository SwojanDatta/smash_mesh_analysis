

function [newbox1,newbox2] = notsupermesh(n,i,box1,box2)
newbox1= box1;
newbox2= box2;

for j=1:4
    if j==n
        newbox1(n,j)=1;
    else
        newbox1(n,j)=0;
    end
end
newbox2(n)=i;

end

