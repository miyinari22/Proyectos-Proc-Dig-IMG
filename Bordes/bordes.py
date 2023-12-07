import cv2

img=cv2.imread(r'C:\Users\usuario\Documents\OpenCV\miku.jpg')
img2=cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

img3= cv2.resize(img2, (500,500))
img4=cv2.Canny(img3, 100,100)
img5=cv2.Sobel(img3,cv2.CV_64F,0,1,ksize=3)

#img6=cv2.bitwise_and(img4,img5)



cv2.imshow('Imagen Original', img)
cv2.imshow('Escala Grises', img2)
cv2.imshow('Imagen escalada', img3)
cv2.imshow('Imagen Canny', img4)
cv2.imshow('Imagen sobel', img5)

cv2.waitKey(0)

