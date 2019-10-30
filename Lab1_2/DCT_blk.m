function [result] = DCT_blk(img_blk)
%compute the discrete fourier transform
Q = 8;

image=im2double(img_blk);
    
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

result=(FnB_matrix' * image * FnB_matrix);

for u = 1:Q
    for v = 1:Q
        if (u+v>7)
            result(u,v)=0;
        end
    end
end

end

