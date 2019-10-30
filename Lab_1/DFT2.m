function [result] = DFT2(img_origin, M, N)
%compute the discrete fourier transform
image=im2double(img_origin);
result=zeros(M,N);
for u=1:M
    for x=1:M
       front_matrix(u,x)=exp(-2j*pi*(u-1)*(x-1)/M);
    end
end

for v=1:N
    for y=1:N
       bottom_matrix(v,y)=exp(-2j*pi*(v-1)*(y-1)/N);
    end
end

result=(front_matrix * image * bottom_matrix)/(M*N);
%figure1
subplot(2,3,2)
imshow(result)
title('Freqency Spectrum Map Without Modifying')
result_after=log(result*M*N);
%figure2
subplot(2,3,3)
imshow(result_after)
title('Freqency Spectrum Map After Modifying')

end