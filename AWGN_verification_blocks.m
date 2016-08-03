
%AWGN Verification Using MATLAB 
%(each Verilog block has been separately
%verified with the corresponding blocks below)

%---------------------------------------------------------------

%Tausworthe-block - generating u0 & u1

taus_input1='11111110000000000111111111111111';
taus_input2='11111111111110000000001111111111';

u0=[taus_input1(1:32) taus_input2(1:16)];
u1=taus_input2(17:32);

%---------------------------------------------------------------

%Log block
%Finding leading zeros
flag =0;
i=1;
while flag==0
   if (u0(i)=='1')
       exp_e=int64(i);
       flag=1;
   end
   i=i+1;
end
% Range Reduction
x_e=dec2bin(bin2dec(u0(exp_e:48))*2^(exp_e-1));

%Polynomial approximation
%coeffecient analysis for logarithm
x=linspace(1,2,100000);
y=log(x);
p=polyfit(x,y,2);
%converting coeffs to int64 for better accuracy
pa=int64(p*2^30);
xp=int64(0:1:255);
%fraction bit accuracy is 13 bits
c2=int64(pa(1)*2^-16);
c2_log=dec2bin(abs(c2));
%fraction bit accuracy is 22 bits
c1=int64(xp * pa(1) /(2^14)  + pa(2)/(2^8));
c1_log=dec2bin(c1);
%fraction bit accuracy is 30 bits
c0= pa(3) + (pa(2).*xp *2^-7) + (pa(1).* (xp.^2) *2^-14);
c0_log=dec2bin(abs(c0));
x1=x_e;
s1=size(x1);
%diving the input into xa and xb
xa=bin2dec(x1(1:8));
xb=int64(bin2dec(x1(9:s1(2))));
y_e=(((c2*xb*2^-(2*(s1(2)-1)) + c1(xa+1))* xb * 2^-(s1(2)-1)) + c0(xa+1))*2^-6;

%Range Reconstruction
ln2=int64(log(2)*2^24);
e1=(exp_e)*ln2;
e12=dec2bin(((e1-(y_e))*2),31);
%e_ans=(double(e1-(y_e))*2)*2^-24
e=(e12(1:31));

%---------------------------------------------------------------

%Square Root Block
%Range Reduction
flag =0;
i=1;
while flag==0
   if (e(i)=='1')
       lzd=i;
       flag=1;
   end
   i=i+1;
end

exp_f=6-lzd;
sign=exp_f<0;
x_f=dec2bin(bin2dec(e(lzd:31))*2^(lzd-1));

exp_fb=(dec2bin(abs((exp_f)),5));
exp_f0=exp_fb(5);

%Co-efficients in the intervals (1,2) and (2,4)
i12=linspace(1,2,10000);
i24=linspace(2,4,10000);
y12=sqrt(i12);
y24=sqrt(i24);

p12=int64(polyfit(i12,y12,1)*2^32);
p24=int64(polyfit(i24,y24,1)*2^32);

%Transformed co-efficients in the intervals (1,2) and (2,4)
x1=int64(0:1:63);
c1_12 = int64(p12(1)/ 2^6);
c1_12_sqrt=dec2bin(c1_12*2^-13);
c1_12_red=int64(c1_12*2^-13);
c0_12 = int64(p12(1) * x1 * 2^-4 + p12(2));
c0_12_sqrt=dec2bin(c0_12*2^-14);
c0_12_red=int64(c0_12*2^-14);

c1_24 = int64(p24(1)/ 2^6);
c1_24_sqrt=dec2bin(c1_24*2^-13);
c1_24_red=int64(c1_24*2^-13);
c0_24 = int64(p24(1) * x1 * 2^-4 + p24(2));
c0_24_sqrt=dec2bin(c0_24*2^-14);
c0_24_red=int64(c0_24*2^-14);

%Square root polynomial approximation

if (exp_f0 == '1')
x1=dec2bin((bin2dec(x_f)*0.5),31);
exp_f1=(exp_f+1)/2;
else
x1=x_f;
exp_f1=(exp_f)/2;
end

x12=(bin2dec(x1)*2^-29);
xa= bin2dec(x1(1:6));
xb= int64(bin2dec(x1(7:31)));

if (x1(1) == '1')
    y = (c1_24_red * xb *2^-24 + c0_24_red(xa+1))*2^-5;
else
    y = (c1_12_red * xb *2^-24 + c0_12_red(xa+1))*2^-5;
end

%y_ans=double(y)*2^(exp_f1)*2^-13
%sqrt(bin2dec(e)*2^-24)
y_f=dec2bin(double(y)*2^(exp_f1),17);

%---------------------------------------------------------------

%Sine-Cos Block

%co-efficients
x=linspace(0,1,100000);
y=cos(x*pi/2);
p=int64(polyfit(x,y,1)*2^29);
x1=int64(0:1:127);
c1=int64(p(1)/ 2^7);
c0=int64(p(1) * x1 * 2^-7 + p(2));

c1_red=c1*2^-11;
c0_red=c0*2^-11;
c0_sincos = dec2bin(c0_red,18);
c1_sincos = dec2bin(abs(c1_red),11);

%range reduction
xp_a=u1;
xp_a1=int64(bin2dec(xp_a(3:16)));
xp_a2=int64((bin2dec('11111111111111')))-xp_a1;
xp_b=dec2bin(xp_a2,16);
  
xa_c= int64(bin2dec(xp_a(3:9)));
xa_s= int64(bin2dec(xp_b(3:9)));

xb_c= int64(bin2dec(xp_a(10:16)));
xb_s= int64(bin2dec(xp_b(10:16)));

%sine cosine approximation
y_c = (c1_red * xb_c*2^-7 + c0_red(xa_c+1))*2^-3;
y_s = (c1_red * xb_s*2^-7 + c0_red(xa_s+1))*2^-3;

if (xp_a(1:2)=='00')
    g1=['0' dec2bin(y_c,16)];
    g0=['0' dec2bin(y_s,16)];
   
else if (xp_a(1:2)=='01')
    g1=['1' dec2bin(y_s,16)];
    g0=['0' dec2bin(y_c,16)];
    
else if (xp_a(1:2)=='10')
    g1=['1' dec2bin(y_c,16)];
    g0=['1' dec2bin(y_s,16)];

    else
    g1=['0' dec2bin(y_s,16)];
    g0=['1' dec2bin(y_c,16)];
        
    end
    end
end

g11 = bin2dec(g1(2:16))*2^-15;
g01 = bin2dec(g0(2:16))*2^-15;

c=cos((pi/2)*(double(xp_a1))*2^-14);
s=sin((pi/2)*(double(xp_a1))*2^-14);

%---------------------------------------------------------------

%Output Block

f=bin2dec(y_f(1,1:17));
x0int=f*g01;

%(16,15) output 1
x0=[g0(1) dec2bin(x0int,15)]
%(16,15) output 2
x1int=f*g11;
x1=[g1(1) dec2bin(x1int,15)]

%---------------------------------------------------------------


