A = [1 1 1;
    -1 0 1;
    -1 -1 0;
    -1 0 0]
y1 = [1,-1,-1,-1] - [2,0,0,0]
w1 = y1/norm(y1)
Q1 = I - 2w1*w1'

Q1*A

y2 = [0,0,-1,0] - [0,1,0,0]
w2 = y2/norm(y2)
Q2 = I - 2w2*w2'

Q2*Q1*A

y3 = [0,0,0,-1] - [0,0,1,0]; w3 = y3/norm(y3)
Q3 = I - 2w3*w3'


Q3*Q2*Q1*A

(Q3*Q2*Q1)'


R = [1 1; 
     0 1; 
     0 0;]

v_2 = [0,sqrt(3)/2,-1/2]; Q_2 = I - 2v_2*v_2';
Q_2*R

sqrt(3)/2

v_1 = [sqrt(2/3),0,-1/sqrt(3)]; Q_1 = I-2v_1*v_1';
Q_1*Q_2*R

2sqrt(2)/3

v_1 = [1/sqrt(2),1/2,-sqrt(2)/4,sqrt(2)/4]
norm(v_1)

v_1 = [sqrt(7)/4,1/2,-sqrt(2)/4,sqrt(2)/4]

1//16 + 1//4 + 1//4 + 7//16

(I - 2v_1*v_1') * [1,0,0,0]

[1,0,0,0]
1/4 + 2/8

x = [2,2,-2,2]; x + [norm(x),0,0,0]
norm(x)
4v_1

norm(v_1)

A = [-1 0;
     2 0;
     -2 3]


A = [-1 0;
     2 0;
     -2 3]

x1 = A[:,1]; y1 = x1 - [norm(x1),0,0]; w1 = y1/norm(y1);
@test w1 ≈ 1/sqrt(6) * [-2,1,-1]
Q1 = I - 2w1*w1'

@test Q1*A ≈ [3 -2; 0 1; 0 2]

x2 = [1,2]; y2 = x2 + [norm(x2),0]; @test norm(y2) ≈ sqrt(10 + 2sqrt(5))
w2 = [0;y2]/norm(y2);
@test w2 ≈ [0,1+sqrt(5),2] / sqrt(10 + 2sqrt(5))
Q2 = I - 2w2*w2'

Q2*Q1*A




A = [1 -1;
     2 3;
     0 2]

x1 = A[:,1]; y1 = x1 + [norm(x1),0,0]; w1 = y1/norm(y1);

Q1 = I-2w1*w1'; Q1*A


A = [1  2 1; 
     -1 0 1; 
     1  2 0;
     -1 2 0]

y1 = [1,-1,1,-1] - [2,0,0,0]; w1 = y1/norm(y1)
Q1 = I-2w1*w1'; Q1*A


R = [1 1;
     0 1;
     0 0]

x1 = [0,-1/sqrt(2),1/sqrt(2)]; Q1 = (I-2x1*x1')
x2 = [1/sqrt(2),0,1/sqrt(2)]; Q2 = (I-2x2*x2')
A = Q2*Q1*R

Q1*A

norm(x1)

16 + 9