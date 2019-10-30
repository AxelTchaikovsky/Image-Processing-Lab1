function [result] = DCT(img_origin, M, N)
%compute the discrete fourier transform
Q=max(M,N);

image=im2double(img_origin);

if M>N
    imgqxq = [image zeros(M,M-N)];
elseif M<N
    imgqxq = [image ; zeros(N-M,N)];
else
    imgqxq = image;
end
    
result=zeros(Q,Q);

for m=1:Q
    for k=1:Q
        if k==1
            FnB_matrix(m,k)=sqrt(1/Q)*cos((2*m-1)*(k-1)*pi/(2*Q));
        else
            FnB_matrix(m,k)=sqrt(2/Q)*cos((2*m-1)*(k-1)*pi/(2*Q));
        end
    end
end

result=(FnB_matrix' * imgqxq * FnB_matrix);

result=result(1:M , 1:N);

%figure1
subplot(2,3,2)
imshow(result);
title('Freqency Spectrum Map Without Modifying')

%figure2
subplot(2,3,3)
imshow(log(result)+5)
title('Freqency Spectrum Map After Modifying')



end
