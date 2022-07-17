# Machine Learning for Speech and Computer Vision (MLSCV)
This GitHub Repository contains all the source codes for exercises and case studies for course Machine Learning for Speech and Computer Vision by Prof. [Nataraj K S](https://github.com/natarajLilly) at the Department of Electronics & Communications Engineering, Indian Institute of Information Technology Dharwad, KA, IN


## Casestudy 1 : Speech Processing and Digital Signal Processing Basics

**Question 1** : Record the utterance “My name is “your-name” in your own voice with a sampling frequency of 16 kHz. Normalize the speech data to lie between -1 and +1. Plot the signal waveform accordingly, and save a .wav file for your speech sample.

**Question 2** : Record two utterances in your own voice: the first utterance is three cardinal vowels a, i, u uttered in sequence, the second utterance is “She had your dark suit in greasy wash water all year” Obtain a spectrogram (use the FFT function to obtain after splitting the speech signal into frames) for both the utterances using Hamming window of length 30 ms (narrowband spectrogram) and 5 ms (wideband spectrogram) for window shift of 5 ms and FFT length of 512.

**Question 3** : Obtain the time-domain features for the second utterance recorded in question 2.

**Question 4** : Obtain the first 13 MFCC, delta MFCC, and delta-delta MFCC features for the first utterance recorded in question 2 using the method described in the class with 26 mel-filters, window length of 25 ms, and window shift of 10 ms. Use T=2 for calculating the delta and delta-delta coefficients, and α=0.9 for pre-emphasis. You should explain the code for MFCC computation if asked during evaluation.

**Question 5** : Obtain the linear prediction coefficients at the center frame for three cardinal vowel sounds using the first utterance of question 2. Use the “lpc” function of MATLAB to compute the coefficients. Obtain the LPC spectrum for three vowels at the center frame using the vocal tract transfer function assuming G=1.


## Casestudy 2 : Basics of Computer Vision, Image Processing, and Feature Extraction and Image Classification using Linear Models

**Question 1** : Create a noisy image by adding a random noise to the original image 'originallenna.jpg'. Disply the noisy image. Now add multiple noisy images to obtain a clean image. Display the clean image.

**Question 2** : Resize the input image to 256x256 using nearest neighbour interpolation and obtain the laplacian of the image 'originallenna.jpg' and display the image. Describe in two sentences what you observe in the laplacian image.

**Question 3** : Obtain the histogram equalization of the low contrast image 'lowContrast.png'. 
	a) Use cv2.equalizeHist function to obtain the histogram equalized function. Display the image before and after the equalization. 
	b) You have to fill the code in appropriate places for the histogram equalization. Display the image after equalization.

**Question 4** : Apply the opening operation ( erosion followed by dilation) on the 'FingerPrint.png' to remove the speckle noise.

**Question 5** : The training samples available for mapping from number of pauses to the MMSE score discussed in the class. Obtain the error function and its derivatives. Apply the gradient descent to obtain the weight parameters of the model. Use random initialization for the weight parameters for gradient descent based solution. Use the following models:  
1. y = w0 + w1x1
2. y = w0 + w1x1 + w2(x1^2)
3. y = w0 + w1x1 + w2(x1^2) + w3(x1^3) + w4(x1^4)

**Question 6** :  Classification of X-ray scans of a chest as that of a chest that is normal or has pneumonia using GLCM features.
Famous Chest X-ray Data Set to be used with Question 6 :
* [CheXpert](https://stanfordmlgroup.github.io/competitions/chexpert/)
* [ChestX-ray14](https://paperswithcode.com/dataset/chestx-ray14)
* [NIH Chest X-rays](https://www.kaggle.com/datasets/nih-chest-xrays/data)
* [Chest X-Ray Images (Pneumonia)](https://data.mendeley.com/datasets/rscbjbr9sj/2)
Note : Not uploading Chest X Ray DataSet on GitHub due to huge size.


## Casestudy 3 : Face recognition using Principal Component Analysis

**Question 1** : Compute a PCA (eigenfaces) on the face dataset (treated as unlabeled dataset): unsupervised feature extraction / dimensionality reduction and then Take your own image, resize it to 50x37, and use this image as an input to PCA.


