fileId = fopen("H:/Documents/es3f1/es3f1_camera/coursework_images/out.txt", 'r');

formatSpec = '%d %d %d';
sizeA = [1 Inf];
A = fscanf(fileId, formatSpec, sizeA);

% group_of_people 1570x2671x3
% face 409x615x3
B = uint8(reshape(A, [409, 615, 3]));

imshow(B);

fclose(fileId);