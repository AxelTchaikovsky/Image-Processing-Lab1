function [result] = DCT_inverse(freq_map, M, N)
%compute the discrete fourier transform
Q=max(M,N);

freq=im2double(freq_map);

if M>N
    freqqxq = [freq zeros(M,M-N)];
elseif M<N
    freqqxq = [freq ; zeros(N-M,N)];
else
    freqqxq = freq;
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

result=(FnB_matrix * freqqxq * FnB_matrix');

result=result(1:M , 1:N);

%figure1
subplot(2,3,5)
imshow(result)
title('Retrived Picture')

end