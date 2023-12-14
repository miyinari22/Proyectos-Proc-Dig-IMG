function R=rotacion (A, theta)
  [f,c,p]=size (A);
  n=uint8(zeros(f,c,p));
  [x,y]=meshgrid(1:c,1:f);
  Rot=[ cos(theta), sin(theta);
       -sin(theta), cos(theta)];
 xy=[X(:)',Y(:)'];
 xyt=round(Rot*xy);
 XT=reshape(xyt(1,:),f,c);
 YT=reshape(xyt(2,:),f,c);

 for i=1:f
   for j=1:c
     if (YT(i,j)>=1) & (YT(i,j)<=f) & (XT(i,j)>=1) &(XT(i,j)<=c)
       for k=1:p
         R(i,j,p)=A(YT(i,j),XT(i,j),p);
       end
     end
   end
 end

