#!/usr/bin/python3
## -*- coding: latin-1 -*-

# This script is stored in O:/media/IonTrap/Device Control Scripts/Agilent DSO-X 3034A/new

# Change log
# v1_00: Initial version
# v2_00: To execute TDS220 object in a separate thread, QT signal is
#   added, and the structure is modified to accomodate separate thread

import os
import subprocess
import io
import time
import socket
import numpy as np


class TCP_TEST:

    def __init__(self, defaultIPAddress = '192.168.1.10', defaultTCPPort = 7):
        self.IPAddress = defaultIPAddress
        self.TCPPort = defaultTCPPort


    def connect(self):
        """ Opens the device.
        
        Args:
            None
        
        Returns:
            None
        """
        print(self.IPAddress)
        print(self.TCPPort)
        self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.socket.connect((self.IPAddress,self.TCPPort))
        self.socket.settimeout(20)
        
        
    def disconnect(self):
        self.socket.close()
        
    def write(self, commandWithoutNewline):
        """ Send the command.
        
        Args:
            commandWithoutNewline (unicode string): '\n' is automatically added,
                so it should not be added to the argument
        
        Returns:
            None
        """
        self.socket.send(bytes('w:' + commandWithoutNewline, 'latin-1'))

        #self.inst.write(commandWithoutNewline)
        
        

    def read(self):
        """ Reads data from the device.
        
        Args:
            None
        
        Returns:
            unicode string: received string
        """
        return (self.socket.recv(10000).decode('latin-1'))
        #return (self.inst.read())[:-1] # Stripping '\n'
    

if __name__ == "__main__":    
    tcp = TCP_TEST()
    tcp.connect()
    print("Done")
    tcp.write("hello")
    print(tcp.read())
    while(1):
        a = input()
        tcp.write(a)
        print(tcp.read())
        if( a == 'q'):
            break
    
