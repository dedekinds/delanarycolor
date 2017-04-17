% function delanarycolor()
clear
I=imread('23.jpg'); 
[row,col,~]=size(I);
X=[1+round((col-1)*rand(3000,1)),1+round((row-1)*rand(3000,1))]; 
tri = delaunay(X); 
ns=length(tri);%
I=double(I); 
for i=1:ns 
    patch(X(tri(i,:),1),col*ones(3,1)-X(tri(i,:),2),[I(X(tri(i,2),2),X(tri(i,2),1),1)/255, ... 
        I(X(tri(i,2),2),X(tri(i,2),1),2)/255, I(X(tri(i,2),2),X(tri(i,2),1),3)/255],'edgecolor','none');
end
% X(tri(i,:),1)������ĺ�����
% col*ones(3,1)-X(tri(i,:),2)���ӵĻ��ͻᷴת
%tri(i,2)ΪʲôҪ2�أ���ʵ������
% axis equal;
axis off
figure
I=uint8(I);
imshow(I)
