------------------------------------------------------------------------------------
General Information
	Software   :   Deblurring2016.exe
	Version    :   1.0  01/02/2016
        3rd party  :   OpenCV
	Author Name:   Jaylee
 	Email      :   leejaysysu@qq.com
	Address    :   Sysu, Guangzhou, China 
	Brief description :  This software can deblurred the motion blurred pictures  
        Reference article :  1. *****ready for publishing******
                             2. Deblurring Text Images via L0-Regularized Intensity and Gradient Prior
        Runable    :   window 7 (32 or 64 bits) or higher 

------------------------------------------------------------------------------------
Getting Started
	The software pack consists of the following components:
            a. Bat file       :  RunMe.bat
            b. Main executable:  Deblurring2016.exe
	    c. 3rd party lib  :  opencv_core248.dll, opencv_highgui248.dll, opencv_imgproc248.dll
           
        To start the application, we just need to edit the specific parameters in RunMe.bat file and then double-click this file. 
        Here we introduce the 14 parameters in the RunMe.bat file, parameter index:     
            1.  *.exe       : the name of the main executable file, fixed as Deblurring2016.exe
            2.  showImage   : if you want to show the result set it to 1, otherwise 0
            3.  filename    : the blurred image name, like:  test1.png, test2.jpg, test3.tif. The suffix are needed
            4.  scale       : resize the input blurred image to suitable size H, where size H = input blurred size * scale
            5.  gamma       : gamma correction. fixed with 1
            6.  iterations  : iteration times in each scale. Usually set to 5, range 3 to 10
            7.  min_k_size  : the minimal kernel size in pyramid mode. Usually set to 8, range 8 to 30
            8.  k_size      : kernel size, which depend on the specific blurred situation. Usually set to 53, range 31 to 151
            9.  k_threshold : in the kernel matrix, less than k_threshold are set to 0. Usually set to 20, range 8 to 30
            10. lambda_grad : weight value for the gradient of latent image in latent image x estimation process. Usually set to 6e-3, range 1e-2 to 1e-4
            11. weight_k0   : weight value for the kernel in kernel k estimation process. Usually set to 1e-4, range 1e-2 to 1e-5
            12. para_tv     : weight value for the latent image in the final non-blind deblurring process. Usually set to 1e-3, range 1e-2 to 1e-4
            13. reserved    : reserved parameter, no use, fixed to 0
            14. reserved    : reserved paremeter, no use, fixed to 0 
        There exist two results and they are named by the way:
            input:        filename.bmp
            reslut:       filename_delubr.png, filename_kernel.png
        where filename_delubr.png stand for the delburred image, filenmae_kernel.png stand for the estimated kernel.               
------------------------------------------------------------------------------------
Testing
        JUST RUN THE: RunMe.bat, TRY FIRST.
 
        In the pack file, we supply some blurred images. like: car_k35.bmp. We create or clear the the RunMe.bat file and edit it like below, 
        where spaces exist between the different parameters.
        eg:
        Deblurring2016.exe     1     ./image/car.bmp     1      1       5     8     53      20      6e-3      1e-4      1e-3    0   0  
        Double click the RunMe.bat, then the delubbring process stared. The results are showed in two different windows named: Deblurred_image and kernel, 
        and they are saved as car_deblur.png and car_kernel.png, correspondely.
        For the case of batch process, we just set the showImage to 0, and set the sutable parameters then double click the RunMe.bat. 
        eg:
           Deblurring2016.exe     0     ./image/car_k35.bmp    1    1      5     8     35      10      6e-3      1e-4      1e-3     0    0 
           Deblurring2016.exe     0     ./image/boys_k87.jpg   1    1      5     8     87      20      6e-3      1e-4      1e-3     0    0    
           Deblurring2016.exe     0     ./image/flag_k35.png   1    1      5     8     35      10      6e-3      1e-4      1e-3     0    0    
-----------------------------------------------------------------------------------

