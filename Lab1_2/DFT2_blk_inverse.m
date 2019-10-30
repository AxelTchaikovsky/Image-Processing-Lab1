function [result] = DFT2_blk_inverse(freq_map)
%compute the discrete fourier transform
Q=8;
freq_map_after=im2double(freq_map);
result=zeros(Q,Q);
for u=1:Q
    for x=1:Q
       front_matrix(u,x)=exp(2j*pi*(u-1)*(x-1)/Q);
    end
end

result=front_matrix * freq_map_after * front_matrix;

end