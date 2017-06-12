
from picamera.array import PiRGBArray
from picamera import PiCamera
import time
import cv2
from datetime import datetime

camera = PiCamera()
rawCapture = PiRGBArray(camera)

camera.resolution = (640,480)

cv2.namedWindow('Image',cv2.WINDOW_NORMAL)
#cv2.resizeWindow('Image',600,600)

# allow camera to warm up
time.sleep(1.0)

# grab an image
running = True
while (running):
    camera.capture(rawCapture, format="bgr")
    image = rawCapture.array
   
    curtime = datetime.now().strftime("%Y-%m-%d-%H-%M-%S.%f") 
    print curtime
    cv2.imwrite("images/" + curtime + ".jpg",image)
    cv2.imshow("Image", image)
    
    # empty array between captures to avoid error
    rawCapture.truncate(0)
    k = cv2.waitKey(100) # wait 1ms
    if k == 27: # esc key i guess
        cv2.destroyAllWindows()
        running = False
        break
