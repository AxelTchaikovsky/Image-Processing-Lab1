function [result] = DFT2_inverse(freq_map, M, N)
%compute the discrete fourier transform
freq_map_after=im2double(freq_map);
result=zeros(M,N);
for u=1:M
    for x=1:M
       front_matrix(u,x)=exp(2j*pi*(u-1)*(x-1)/M);
    end
end

for v=1:N
    for y=1:N
       bottom_matrix(v,y)=exp(2j*pi*(v-1)*(y-1)/N);
    end
end

result=front_matrix * freq_map_after * bottom_matrix;

%figure1
subplot(2,3,5)
imshow(result)
title('Retrived Picture')

end
