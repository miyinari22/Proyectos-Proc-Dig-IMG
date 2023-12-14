function F=im_estirar_histograma(v)
  v=double(v);
  m=min(v(:));
  M=max(v(:));
  F=(v-m)*255/(M-m);
  F=uint8(F);
