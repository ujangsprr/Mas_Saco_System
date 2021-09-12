from flask import *
import cv2
import numpy as np
import time
import imutils, socket
import base64

BUFF_SIZE = 65536
client_socket = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
client_socket.setsockopt(socket.SOL_SOCKET,socket.SO_RCVBUF,BUFF_SIZE)
host_name = socket.gethostname()
host_ip = socket.gethostbyname(host_name)
print(host_ip)
port = 9999
message = b'Hello'

# ======= Web Socket =======
app = Flask(__name__)
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/video')
def video_feed():
    return Response(test_video(), mimetype='multipart/x-mixed-replace; boundary=frame')

def test_video():
    
    while True:
        client_socket.sendto(message,(host_ip,port))
        packet,_ = client_socket.recvfrom(BUFF_SIZE)
        data = base64.b64decode(packet,' /')
        npdata = np.fromstring(data,dtype=np.uint8)
        img = cv2.imdecode(npdata,1)

        frame = cv2.imencode('.JPEG', img,[cv2.IMWRITE_JPEG_QUALITY,20])[1].tobytes()
        time.sleep(0.016)
        yield(b'--frame\r\n'b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n')

if __name__ == '__main__':
    # app.run(debug=True,threaded=True)
    app.debug = True
    app.run(host="0.0.0.0")