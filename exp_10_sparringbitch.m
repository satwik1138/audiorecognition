
     esdav1(k,1) = esdk(k,40+l)+ esdav1(k,1);
    esdav2(k,1) = esdk(k,40*2+l)+ esdav2(k,1);
    esdav3(k,1) = esdk(k,40*3+l)+ esdav3(k,1);
    esdav4(k,1) = esdk(k,40*4+l)+ esdav4(k,1);
    esdav5(k,1) = esdk(k,40*5+l)+ esdav5(k,1);
    esdav6(k,1) = esdk(k,40*6+l)+ esdav6(k,1);
    esdav7(k,1) = esdk(k,40*7+l)+ esdav7(k,1);
    esdav8(k,1) = esdk(k,40*8+l)+ esdav8(k,1);
    esdav9(k,1) = esdk(k,40*9+l)+ esdav9(k,1);



    subplot(2,1,1);
plot(esdav0);
title('average of zero');
subplot(2,1,2);
plot(esd1);
title('just zero')


