% case box4 %
clc
clear all

r1=10;
r2=10;
r3=10;
r4=10;
r5=10;
r6=10;
r7=10;
r8=10;
r9=10;

v1=05;
v2=0;
v3=05;
v4=0;
v5=05;
v6=05;
v7=0;
v8=0;
v9=0;

i1=0;
i2=02;
i3=0;
i4=02;
i5=0;
i6=0;
i7=02;
i8=0;
i9=0;


i=i1+i2+i3+i4+i5+i6+i7+i8+i9;

box1= [   r1+r2   -r2           0          0           ;...
           -r2    r2+r3+r4      -r4        0           ;...
            0     -r4           r4+r5+r6   -r6         ;...
            0     0             -r6        r6+r7       ];
box2= [   v2-v1 ;  v4-v2-v3    ;  v5+v6-v4    ;  v7-v6 ];




if i==0
    box3 = inv(box1)*box2
else
    if i1~=0
        [box1,box2] = notsupermesh(1,-i1,box1,box2);
    end
    if i3~=0
        [box1,box2] = notsupermesh(2,-i3,box1,box2);
    end
    if i5~=0
        [box1,box2] = notsupermesh(3,i5,box1,box2);
    end
    if i7~=0
        [box1,box2] = notsupermesh(4,i7,box1,box2);
    end
    
    if i2~=0
        [box1,box2] = supermesh(2,1,-i2,box1,box2);
    end
    if i4~=0
        [box1,box2] = supermesh(3,2,-i4,box1,box2);
    end
    if i6~=0
        [box1,box2] = supermesh(4,3,-i6,box1,box2);
    end
    
    box3 = inv(box1)*box2
end


