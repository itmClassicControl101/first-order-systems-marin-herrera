function[]=tfunction
txt = ['A: ';'B: ';'C: ';'D: '];
coef=x_mdialog('Sea H(s) = (As+B)/(Cs+D), Ingrese:',txt,['';'';'';''])
A=evstr(coef(1));
B=evstr(coef(2));
C=evstr(coef(3));
D=evstr(coef(4));
t1=0:0.01:10;
y=B/D+((A*D-B*C)/C*D)*exp((-D/C)*t1);
c1=A*D-B*C;
c2=C*D;
ce= (-D)/C;
t= %t;
printf("La función en el dominio del tiempo es: %d/%d +(%d/%d)*exp(%d*t)",B,D,c1,c2,ce);
plot(t1,y)
endfunction
