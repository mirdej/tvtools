# Crop faces for SchulTV Badges

# Place raw pictures in "in" folder
# Use visual studio code, activate virtual env, control-F5 -> BAM!!!


import cv2
import numpy as np
import pathlib

TARGETSIZE = (21.7, 28) # mm
TARGETDPI = 300
SCALE = 1.5
RATIO = TARGETSIZE[0] / TARGETSIZE [1]
TARGETPIXELS = np.rint(np.multiply(TARGETSIZE, TARGETDPI / 25.4)).astype('int16')

print ("Image Ratio %0.2f" %RATIO)
print ("Target Image Size: ", TARGETPIXELS)

def check_bounds(image, start, end):
    size = image.shape
    if (start[0] < 0):
        return 0
    if (start[1] < 0):
        return 0
    if (end[0]>size[1]):
        return 0
    if (end[1]>size[0]):
        return 0
    return 1


def process_image(imagePath, outPath):

    img = cv2.imread(imagePath)
    gray_image = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    face_classifier = cv2.CascadeClassifier(
        cv2.data.haarcascades + "haarcascade_frontalface_default.xml"
    )
    face = face_classifier.detectMultiScale(
        gray_image, scaleFactor=1.1, minNeighbors=5, minSize=(40, 40)
    )
    cropped_image = img

    for (x, y, w, h) in face:
        center = (x+round(w/2), y + round(h/2))
       
        if (h > 300):       # weird small second faces ?

            w = h * RATIO
            myscale = SCALE
            size = (round(myscale * w / 2),round(myscale * h / 2))
            start = np.subtract(center,size)
            end = np.add(center,size)

            while (check_bounds(img,start,end) == 0):
                myscale = myscale - .05
                print ("Adjust size",myscale)
                size = (round(myscale * w / 2),round(myscale * h / 2))
                start = np.subtract(center,size)
                end = np.add(center,size)
                   
            # cv2.rectangle(img, start, end, (0, 255, 0), 4)

            cropped_image = img[start[1]:end[1], start[0]:end[0]] # Slicing to crop the image

    resized_image = cv2.resize(cropped_image, TARGETPIXELS)
    cv2.imwrite(outPath, resized_image)



if __name__ == '__main__':    
 
    current_dir = pathlib.Path(".")
    full_path = current_dir.absolute()
    in_dir = full_path /  "in"
    out_dir = full_path /  "out"
    print("Current Path: {}".format(current_dir))
    print("Full Path:    {}".format(full_path))
    print("In Path:    {}".format(in_dir))
    print("Out Path:    {}".format(out_dir))


    counter = 0
    for obj in in_dir.iterdir():
        if obj.is_file() and obj.suffix.lower() == ".jpg":
            counter += 1
            print("Processing {:04} - {}".format(counter, obj))
            new_name = out_dir / obj.name
            process_image(obj, new_name)  