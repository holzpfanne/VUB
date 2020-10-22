function luminance = RGB2luminance(RGB)
    luminance = RGB(:,:,1) * 0.3 + RGB(:,:,2) * 0.59 + RGB(:,:,3) * 0.11;
end

