function [result] = DFT2(img_blk)
%compute the discrete fourier transform
Q=8;
image=im2double(img_blk);

result=zeros(Q,Q);

for u=1:Q
    for x=1:Q
       front_matrix(u,x)=exp(-2j*pi*(u-1)*(x-1)/Q);
    end
end

result=(front_matrix * image * front_matrix)/(Q*Q);

for u = 1:Q
    for v = 1:Q
        if (u+v>7)
            result(u,v)=0;
        end
    end
end

end