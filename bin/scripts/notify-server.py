#!/usr/bin/env python3

import sys
import socket
from threading import Thread
import gi
import base64
import binascii

gi.require_version('Notify', '0.7')
from gi.repository import Notify

def notify_send(input_string):
    try:
        app_name, urgency, category, summary, body = input_string.split('|')
    except ValueError:
        print("Split the five parametered msg via pipe")
        return False

    Notify.init(app_name)
    notification = Notify.Notification.new(summary, body)
    notification.set_urgency(int(urgency))
    notification.show()
    del notification
    Notify.uninit()

    return True

def client_thread(conn, ip, port, MAX_BUFFER_SIZE = 4096):

    # the input is in bytes, so decode it
    input_from_client_bytes = conn.recv(MAX_BUFFER_SIZE)

    # MAX_BUFFER_SIZE is how big the message can be
    # this is test if it's sufficiently big
    siz = sys.getsizeof(input_from_client_bytes)
    if  siz >= MAX_BUFFER_SIZE:
        print("The length of input is probably too long: {}".format(siz))

    # decode input and strip the end of line
    input_from_client = input_from_client_bytes.decode("utf8").rstrip()

    # provide desktop notification
    notify_send(input_from_client)

    conn.close()  # close connection
    print('Connection ' + ip + ':' + port + " ended")

def start_server():
    soc = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    # this is for easy starting/killing the app
    soc.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    print('Socket created')

    try:
        soc.bind(("127.0.0.1", 7106))
        print('Socket bind complete')
    except socket.error as msg:
        import sys
        print('Bind failed. Error : ' + str(sys.exc_info()))
        sys.exit()

    #Start listening on socket
    soc.listen(10)
    print('Socket now listening')

    # this will make an infinite loop needed for 
    # not reseting server for every client
    while True:
        conn, addr = soc.accept()
        ip, port = str(addr[0]), str(addr[1])
        print('Accepting connection from ' + ip + ':' + port)
        try:
            Thread(target=client_thread, args=(conn, ip, port)).start()
        except:
            print("Terible error!")
            import traceback
            traceback.print_exc()
    soc.close()

start_server()
