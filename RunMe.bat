@echo off

::paraInfor->   *exe                 showImage  filename                              scale  reserved  iterations  min_k_size  k_size  k_threshold  lambda_grad  weight_k0  para_tv  reserved   reserved
           ::  Deblurring2016.exe     1        ./image/Ksize=55-dragon_patch_use.png  1      1         5           12          55      12           6e-3         1e-4        1e-3       0          0  
               Deblurring2016.exe     1        ./image/Ksize=55-blurred_cho.png       1      1         5           12          55      12           6e-3         1e-4        1e-3       0          0  
           ::  Deblurring2016.exe     1        ./image/Ksize=55-car.bmp               1      1         5           12          53      10           6e-3         1e-4        1e-3       0          0  
           ::  Deblurring2016.exe     1        ./image/Ksize=55-toy.jpg               1      1         5           8           87      20           6e-3         1e-4        1e-3       0          0      
           ::  Deblurring2016.exe     1        ./image/Ksize=85-boys.jpg              1      1         5           8           35      10           6e-3         1e-4        1e-3       0          0 
           ::  Deblurring2016.exe     1        ./image/Ksize=85-pavilion.jpg          1      1         5           8           87      20           6e-3         1e-4        1e-3       0          0
           ::  Deblurring2016.exe     1        ./image/Ksize=85-Roma.png              1      1         5           8           87      10           6e-3         1e-4        1e-3       0          0 