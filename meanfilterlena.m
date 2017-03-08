% NAME - SHRAVIKA MITTAL
% ROLL NUMBER - 2016093
% PROBABILITY AND STATISTICS ASSIGNMENT - 1
% MEAN FILTER FOR LENA
clc;
clear all;
close all;
variance = input('enter the value of variance: ');%value of variance
window = input('enter the window size: ');%window size
im = imread('lena256.tif');
im = im2double(im);
q = imnoise(im , 'gaussian',0,variance);
q = im2double(q);
[a,b] = size(q);
y = zeros(a,b);
for i = 1:a
    for j = 1:b
        y(i,j) = q(i,j);
    end
end
c = zeros(a,b);
%3*3 window size and variance = 0.05
if ( variance==0.05 && window==3)
    for k = 2:a-1
        for l = 2:b-1
            c(k,l)=(((0.000164*y(k-1,l-1))+(0.012475*y(k-1,l))+(0.000164*y(k-1,l+1))+(0.012475*y(k,l-1))+(0.949444*y(k,l))+(0.012465*y(k,l+1))+(0.000164*y(k+1,l-1))+(0.012475*y(k+1,l))+(0.000164*y(k+1,l+1)))/1);
        end
    end
%%3*3 window size and variance = 0.1
elseif( variance==0.1 && window==3)
    for k = 2:a-1
        for l = 2:b-1
            c(k,l)=((((0.003225*y(k-1,l-1))+(0.050341*y(k-1,l)+(0.003225*y(k-1,l+1))+(0.050341*y(k,l-1))+(0.785733*y(k,l))+(0.050341*y(k,l+1))+(0.003225*y(k+1,l-1))+(0.050341*y(k+1,l))+(0.003225*y(k+1,l+1)))/0.999997)));
        end
    end
%3*3 window size and variance = 0.2
elseif(variance==0.2 && window==3 )
    for k = 2:a-1
        for l = 2:b-1
            c(k,l)=(((0.017258*y(k-1,l-1))+(0.096854*y(k-1,l)+0.017258*y(k-1,l+1))+(0.096854*y(k,l-1)+0.543551*y(k,l))+(0.096854*y(k,l+1))+(0.017258*y(k+1,l-1))+(0.096854*y(k+1,l))+(0.017258*y(k+1,l+1)))/0.999999);
        end
    end
%5*5 window size and variance = 0.05
elseif( variance==0.05 && window==5 )
    for k = 3:a-2
        for l = 3:b-2
            c(k,l)=((0*y(k-2,l-2)+0*y(k-2,l-1)+0*y(k-2,l)+0*y(k-2,l+1)+0*y(k-2,l+2)+0*y(k-1,l-2)+0.000164*y(k-1,l-1)+0.012475*y(k-1,l)+0.000164*y(k-1,l+1)+0*y(k-1,l+2)+0*y(k,l-2)+0.012475*y(k,l-1)+0.949444*y(k,l)+0.012475*y(k,l+1)+0*y(k,l+2)+0*y(k+1,l-2)+0.000164*y(k+1,l-1)+0.012475*y(k+1,l)+0.000164*y(k+1,l+1)+0*y(k+1,l+2)+0*y(k+2,l-2)+0*y(k+2,l-1)+0*y(k+2,l)+0*y(k+2,l+1)+0*y(k+2,l+2))/1);
        end
    end
%5*5 window size and variance = 0.1
elseif( variance == 0.1 && window == 5 )
    for k = 3:a-2
        for l = 3:b-2
            c(k,l)=((0*y(k-2,l-2)+0*y(k-2,l-1)+0.000001*y(k-2,l)+0*y(k-2,l+1)+0*y(k-2,l+2)+0*y(k-1,l-2)+0.003225*y(k-1,l-1)+0.050341*y(k-1,l)+0.003225*y(k-1,l+1)+0*y(k-1,l+2)+0.000001*y(k,l-2)+0.050341*y(k,l-1)+0.78573*y(k,l)+0.050341*y(k,l+1)+0.000001*y(k,l+2)+0*y(k+1,l-2)+0.003225*y(k+1,l-1)+0.050341*y(k+1,l)+0.003225*y(k+1,l+1)+0*y(k+1,l+2)+0*y(k+2,l-2)+0*y(k+2,l-1)+0.000001*y(k+2,l)+0*y(k+2,l+1)+0*y(k+2,l+2))/0.999998);
        end
    end
%5*5 window size and variance = 0.2
elseif( variance == 0.2 && window == 5 )
    for k = 3:a-2
        for l = 3:b-2
            c(k,l)=((0*y(k-2,l-2)+0.000052*y(k-2,l-1)+0.000292*y(k-2,l)+0.000052*y(k-2,l+1)+0*y(k-2,l+2)+0.000052*y(k-1,l-2)+0.017231*y(k-1,l-1)+0.096701*y(k-1,l)+0.017231*y(k-1,l+1)+0.000052*y(k-1,l+2)+0.000292*y(k,l-2)+0.096701*y(k,l-1)+0.542692*y(k,l)+0.096701*y(k,l+1)+0.000292*y(k,l+2)+0.000052*y(k+1,l-2)+0.017231*y(k+1,l-1)+0.096701*y(k+1,l)+0.017231*y(k+1,l+1)+0.000052*y(k+1,l+2)+0*y(k+2,l-2)+0.000052*y(k+2,l-1)+0.000292*y(k+2,l)+0.000052*y(k+2,l+1)+0*y(k+2,l+2))/1.000004);
        end
    end
%7*7 window size and variance = 0.05
elseif( variance == 0.05 && window == 7 )
    for k = 4:a-3
        for l = 4:b-3
            c(k,l)= (((0*y(k-3,l-3)+0*y(k-3,l-2)+0*y(k-3,l-1)+0*y(k-3,l)+0*y(k-3,l+1)+0*y(k-3,l+2)+0*y(k-3,l+3)+0*y(k-2,l-3)+0*y(k-2,l-2)+0*y(k-2,l-1)+0*y(k-2,l)+0*y(k-2,l+1)+0*y(k-2,l+2)+0*y(k-2,l+3)+0*y(k-1,l-3)+0*y(k-1,l-2)+0.000164*y(k-1,l-1)+0.012475*y(k-1,l)+0.000164*y(k-1,l+1)+0*y(k-1,l+2)+0*y(k-1,l+3)+0*y(k,l-3)+0*y(k,l-2)+0.012475*y(k,l-1)+0.949444*y(k,l)+0.012475*y(k,l+1)+0*y(k,l+2)+0*y(k,l+3)+0*y(k+1,l-3)+0*y(k+1,l-2)+0.000164*y(k+1,l-1)+0.012475*y(k+1,l)+0.000164*y(k+1,l+1)+0*y(k+1,l+2)+0*y(k+1,l+3)+0*y(k+2,l-3)+0*y(k+2,l-2)+0*y(k+2,l-1)+0*y(k+2,l)+0*y(k+2,l+1)+0*y(k+2,l+2)+0*y(k+2,l+3)+0*y(k+3,l-3)+0*y(k+3,l-2)+0*y(k+3,l-1)+0*y(k+3,l)+0*y(k+3,l+1)+0*y(k+3,l+2)+0*y(k+3,l+3)))/1);
        end
    end
%7*7 window size and variance = 0.1
elseif( variance == 0.1 && window == 7 )
    for k = 4:a-3
        for l = 4:b-3
            c(k,l)= (((0*y(k-3,l-3)+0*y(k-3,l-2)+0*y(k-3,l-1)+0*y(k-3,l)+0*y(k-3,l+1)+0*y(k-3,l+2)+0*y(k-3,l+3)+0*y(k-2,l-3)+0*y(k-2,l-2)+0*y(k-2,l-1)+0.000001*y(k-2,l)+0*y(k-2,l+1)+0*y(k-2,l+2)+0*y(k-2,l+3)+0*y(k-1,l-3)+0*y(k-1,l-2)+0.003225*y(k-1,l-1)+0.050341*y(k-1,l)+0.003225*y(k-1,l+1)+0*y(k-1,l+2)+0*y(k-1,l+3)+0*y(k,l-3)+0.000001*y(k,l-2)+0.050341*y(k,l-1)+0.78573*y(k,l)+0.050341*y(k,l+1)+0.000001*y(k,l+2)+0*y(k,l+3)+0*y(k+1,l-3)+0*y(k+1,l-2)+0.003225*y(k+1,l-1)+0.050341*y(k+1,l)+0.003225*y(k+1,l+1)+0*y(k+1,l+2)+0*y(k+1,l+3)+0*y(k+2,l-3)+0*y(k+2,l-2)+0*y(k+2,l-1)+0.000001*y(k+2,l)+0*y(k+2,l+1)+0*y(k+2,l+2)+0*y(k+2,l+3)+0*y(k+3,l-3)+0*y(k+3,l-2)+0*y(k+3,l-1)+0*y(k+3,l)+0*y(k+3,l+1)+0*y(k+3,l+2)+0*y(k+3,l+3)))/0.999998);
        end
    end
%7*7 window size and variance = 0.2
elseif( variance == 0.2 && window == 7 )
    for k = 4:a-3
        for l = 4:b-3
            c(k,l)= (((0*y(k-3,l-3)+0*y(k-3,l-2)+0*y(k-3,l-1)+0*y(k-3,l)+0*y(k-3,l+1)+0*y(k-3,l+2)+0*y(k-3,l+3)+0*y(k-2,l-3)+0*y(k-2,l-2)+0.000052*y(k-2,l-1)+0.000292*y(k-2,l)+0.000052*y(k-2,l+1)+0*y(k-2,l+2)+0*y(k-2,l+3)+0*y(k-1,l-3)+0.000052*y(k-1,l-2)+0.017231*y(k-1,l-1)+0.096701*y(k-1,l)+0.017231*y(k-1,l+1)+0.000052*y(k-1,l+2)+0*y(k-1,l+3)+0*y(k,l-3)+0.000292*y(k,l-2)+0.096701*y(k,l-1)+0.542692*y(k,l)+0.096701*y(k,l+1)+0.000292*y(k,l+2)+0*y(k,l+3)+0*y(k+1,l-3)+0.000052*y(k+1,l-2)+0.017231*y(k+1,l-1)+0.096701*y(k+1,l)+0.017231*y(k+1,l+1)+0.000052*y(k+1,l+2)+0*y(k+1,l+3)+0*y(k+2,l-3)+0*y(k+2,l-2)+0.000052*y(k+2,l-1)+0.000292*y(k+2,l)+0.000052*y(k+2,l+1)+0*y(k+2,l+2)+0*y(k+2,l+3)+0*y(k+3,l-3)+0*y(k+3,l-2)+0*y(k+3,l-1)+0*y(k+3,l)+0*y(k+3,l+1)+0*y(k+3,l+2)+0*y(k+3,l+3)))/1.000004);
        end
    end
end
figure;
imshow(q, []);%noised image
figure;
imshow(c, []);%denoised image
PSNR(im,c)%psnr value
%function for calculating psnr value
function PSNR(A,B)

% PURPOSE: To find the PSNR (peak signal-to-noise ratio) between two
%          intensity images A and B, each having values in the interval
%          [0,1]. The answer is in decibels (dB).
%
%          There is also a provision, in EXAMPLE 3 below, for images 
%          stored in the interval [0,255], i.e. 256 gray levels. 
%
% SYNOPSIS: PSNR(A,B)
%
% DESCRIPTION: The following is quoted from "Fractal Image Compression",
%              by Yuval Fisher et al.,(Springer Verlag, 1995),
%              section 2.4, "Pixelized Data".
%
%              "...PSNR is used to measure the difference between two
%              images. It is defined as
%
%                           PSNR = 20 * log10(b/rms)
%
%              where b is the largest possible value of the signal
%              (typically 255 or 1), and rms is the root mean square
%              difference between two images. The PSNR is given in
%              decibel units (dB), which measure the ratio of the peak 
%              signal and the difference between two images. An increase
%              of 20 dB corresponds to a ten-fold decrease in the rms
%              difference between two images.
%              
%              There are many versions of signal-to-noise ratios, but
%              the PSNR is very common in image processing, probably
%              because it gives better-sounding numbers than other
%              measures."
%
% EXAMPLE 1: load clown
%            A = ind2gray(X,map); % Convert to an intensity image in [0,1].
%            B = 0.95 * A;        % Make B close to, but different from, A.
%            PSNR(A,B)            % ---> "PSNR = +33.49 dB"
%
% EXAMPLE 2: A = rand(256); % A is a random 256 X 256 matrix in [0,1].
%            B = 0.9 * A;   % Make B close to, but different from, A.
%            PSNR(A,B)      % ---> "PSNR = +24.76 dB (approx)"
%
% EXAMPLE 3: For images with 256 gray levels: this function PSNR was 
%            originally written for matrix-values between 0 and 1,
%            because of MATLAB's preference for that interval.
%
%            However, suppose the matrix has values in [0,255]. Taking
%            Example 1 above, we could change the image to 256 gray levels.
%         
%            load clown
%            A = ind2gray(X,map); % Convert to intensity image in [0,1]
%            AA = uint8(255*A);   % Change to integers in [0,255]
%            BB = 0.95*AA;        % Make BB close to AA.
%
%            Now we must alter the code for this new case. Comment out the
%            existing program (using %) and uncomment the alternative 
%            underneath it.
%
%            PSNR(AA,BB)          % ---> "PSNR = +33.56 dB"
%
%            Note the slightly different result from Example 1, because
%            decimal values were rounded into integers.

if A == B
   error('Images are identical: PSNR has infinite value')
end

max2_A = max(max(A));
max2_B = max(max(B));
min2_A = min(min(A));
min2_B = min(min(B));

if max2_A > 1 || max2_B > 1 || min2_A < 0 || min2_B < 0
   error('input matrices must have values in the interval [0,1]')
end

error_diff = A - B;
decibels = 20*log10(1/(sqrt(mean(mean(error_diff.^2)))));
disp(sprintf('PSNR = +%5.2f dB',decibels))
end
% if A == B
%    error('Images are identical: PSNR has infinite value')
% end

% max2_A = max(max(A));
% max2_B = max(max(B));
% min2_A = min(min(A));
% min2_B = min(min(B));
%
% if max2_A > 255 || max2_B > 255 || min2_A < 0 || min2_B < 0
%   error('input matrices must have values in the interval [0,255]')
% end

% error_diff = A - B;
% decibels = 20*log10(255/(sqrt(mean(mean(error_diff.^2)))));
% disp(sprintf('PSNR = +%5.2f dB',decibels))
