function result = convolve(A,lengthA,indexA, B, lengthB, indexB)
    result = zeros(1,401);
    calcIndex = 0;
    for i = indexA:lengthA
        for j = indexB:lengthB
            k = A(i)*B(j);
            result(j + calcIndex) = result(j + calcIndex) + k;
        end
    calcIndex = calcIndex + 1;
    end