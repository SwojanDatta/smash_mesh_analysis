function [newbox1,newbox2] = supermesh(n1,n2,i,box1,box2)
newbox1= box1;
newbox2= box2;

for j=1:4
    newbox1(n1,j)=newbox1(n1,j)+newbox1(n2,j);
    newbox1(n2,j)=0;
end
newbox2(n1)=newbox2(n1)+newbox2(n2);
newbox2(n2)=0;

newbox1(n2,n1)=1;
newbox1(n2,n2)=-1;
newbox2(n2)=i;

end

