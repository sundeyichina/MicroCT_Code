% this is the process of removing very small particles from the system
clc
clear
%% read the data
start_num = 0;
end_num = 1033;
binary_stack = [];
for i = start_num:1:end_num
    if i <10
        filename = ['slice0000',num2str(i),'.tiff'];
    elseif i >=10 && i <100
        filename = ['slice000',num2str(i),'.tiff'];
    elseif i>=100 && i <1000
        filename = ['slice00',num2str(i),'.tiff'];
    else
        filename = ['slice0',num2str(i),'.tiff'];
    end
    temp = imread(['Segmented/Dec02Scan_OTSU/',filename]);
    %size(temp)
    binary_stack = cat(3, binary_stack, temp(:,:,1));
end

%% remove the small particles
