# Machine Learning Setup Docker & Tensorflow for image classification
How to create a docker with tensorflow


SETUP TENSORFLOW DOCKER

Run the following command at the prompt, in the same Terminal session:
docker run -it -p 8888:8888 gcr.io/tensorflow/tensorflow

This will download tensorflow and will take a few minutes (~ 8 minutes)
Make a note of the URL that is given. It will be of the form:

If you are using a Mac or Linux machine, create a script called startDocker.sh in your bin directory: 
Create a Script to Start Docker Automatically

#! /bin/bash
docker run -it -p 8888:8888 gcr.io/tensorflow/tensorflow
Make your script executable:

chmod +x startDocker.sh

--NEXT--

Start Jupiter

Jupiter is an application that runs in a browser and presents the user a virtual disk where the user can create folders and write programs.

To start the Jupiter connected to Docker, open your browser and enter the URL that was given to you in the previous step.
http://localhost:8888/tree?token=someLongSeriesOfHexadecimalDigits

If you get an error message, replace localhost by the IP given next to the whale logo, above (I got 192.168.99.100 when I started Docker).
http://192.168.99.100:8888/tree?token=someLongSeriesOfHexadecimalDigits


In Jupyter, create a new notebook and add the Test example file to find out confirm it's working.

Test.py

---NEXT-- Once you have confirmed the docker is setup. Setup The Image Classifire

# Tensorflow Image Classifier

This is the code for 'Image Classifier in TensorFlow 

## Requirements

* [docker](https://www.docker.com/products/docker-toolbox)

## Usage 

You just need to make a "classifier" directory with a directory "data" inside it with all your images
For example
```
 [any_path]/my_own_classifier/
 [any_path]/my_own_classifier/data
 [any_path]/my_own_classifier/data/car
 [any_path]/my_own_classifier/data/moto
 [any_path]/my_own_classifier/data/bus
```
 and then put your image on it. 
 This "classifier" directory will have your samples but also trained classifier after execution of "train.sh". 

## Train process
 
Just type
```
 ./train.sh [any_path]/my_own_classifier
``` 
And it will do anything for you !

## Guess process

Just type for a single guess
```
 ./guess.sh [any_path]/my_own_classifier /yourfile.jpg
```

To guess an entire directory
```
./guessDir.sh [any_path]/classifier [any_path]/srcDir [any_path]/destDir
```

## Example of result
```
# ./guess.sh /synced/tensor-lib/moto-classifier/ /synced/imagesToTest/moto21.jpg
moto (score = 0.88331)
car (score = 0.11669)
```

