function [result] = DCT_blk_inverse(freq_blk, M, N)
%compute the discrete fourier transform
Q=8;

freq=im2double(freq_blk);

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

result=(FnB_matrix * freq * FnB_matrix');

end