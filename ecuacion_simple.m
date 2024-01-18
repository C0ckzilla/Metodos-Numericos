function  Solucion_RK ()
  N=10;
  xinicial=0;
  xfinal=4;
  yinicial=1;
  h=0.5;
  x=[xini:h:xfin]';

   printf("|    RK    |   RK3   |   RK4   |\n");
   printf("|  x   y   |  x   y  |  x   y  |\n\n");
  [x1,y1]=RK(xinicial,yinicial,h,N,@ecuacion);
  [x2,y2]=RK3(xinicial,yinicial,h,N,@ecuacion);
  [x3,y3]=RK4(xinicial,yini,h,N,@ecuacion);
  [x1,y1,x2,y2,x3,y3]
endfunction
