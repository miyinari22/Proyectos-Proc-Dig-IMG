function C=convolucion(I,M); %Definida en tonos de gris
  [NF,NC]=size(I);        %En octave o matlab existe la funcion conv2
  [m,n]=size(M);
  C=uint8(zeros(size(I)))
  %round(m/2);
  %round(n/2);
    for y=round(m/2):1:NF-round(m/2);
      for x=round(n/2):1:NC-round(n/2);
        R=I(y-round(m/2)+1:y+round(m/2)-1,x-round(n/2)+1:x+round(n/2)-1);
        Cp=R.*M;
        C(y,x)=sum(Cp(:));
      end
    end
