#!/usr/bin/python3
## -*- coding: latin-1 -*-

# Change log
# v1_00: Initial version

import os
import subprocess
import io
import time
import socket
import numpy as np

S00_AXIS_TDATA=0x0
S00_AXIS_TVALID=0x1
DAC00_FAST_SHUTDOWN=0x2
DAC00_PL_EVENT=0x3
DAC00_NCO_FREQ=0x4
DAC00_NCO_PHASE=0x5
DAC00_NCO_PHASE_RST=0x6
DAC00_NCO_UPDATE_EN=0x7
DAC0_NCO_UPDATE_REQ=0x8
DAC0_SYSREF_INT_GATING=0x9
DAC0_SYSREF_INT_REENABLE=0xA
UPDATE=0xF


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
        self.socket.send(bytes(commandWithoutNewline, 'latin-1'))

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
    tcp.write("#DAC00#write_fifo#0x0000000000000005#"+str((DAC00_FAST_SHUTDOWN<<32)+(255<<40))+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a) 
    
    tcp.write("#DAC00#write_fifo#0x0000000000000010#"+str((DAC00_PL_EVENT << 32 ) + (  255 << 40 ))+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000020#"+str((DAC00_NCO_FREQ << 32 ) + (  255 << 40 ))+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000030#"+str((DAC00_NCO_PHASE << 32 ) + (  255 << 40 ))+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000040#"+str((DAC00_NCO_PHASE_RST << 32 ) + (  255 << 40 ))+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000050#"+str((DAC0_SYSREF_INT_GATING << 32 ) + (  255 << 40 ))+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000060#"+str((DAC0_SYSREF_INT_REENABLE << 32 ) + (  255 << 40 ))+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000065#"+str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x00000000000000C0#"+str((S00_AXIS_TDATA << 32 ) + (  255 << 40 ) + 0x00007fff)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x00000000000000D0#"+str((S00_AXIS_TVALID << 32 ) + (  255 << 40 ) + 0x00000001)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x00000000000000E0#"+str((DAC00_NCO_FREQ << 32 ) + (  1 << 40 ) + 0x00000000)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x00000000000000F0#"+str((DAC00_NCO_FREQ << 32 ) + (  2 << 40 ) + 0x00000010)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000100#"+str((DAC00_NCO_UPDATE_EN << 32 ) + (  255 << 40 ) + 7)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000110#"+str((DAC0_NCO_UPDATE_REQ << 32 ) + (  255 << 40 ) + 0x0020)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000140#"+str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000600#"+str((DAC00_NCO_FREQ << 32 ) + (  1 << 40 ) + 0x00000000)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000610#"+str((DAC00_NCO_FREQ << 32 ) + (  2 << 40 ) + 0x00000001)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000620#"+str((DAC0_NCO_UPDATE_REQ << 32 ) + (  244 << 40 ) + 0x0020)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000630#"+str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
   	
    #Change frequency
       
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000A00#"+str((DAC00_NCO_FREQ << 32 ) + (  1 << 40 ) + 0x00000000)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000A10#"+str((DAC00_NCO_FREQ << 32 ) + (  2 << 40 ) + 0x00000010)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000A20#"+str((DAC0_NCO_UPDATE_REQ << 32 ) + (  255<< 40 ) + 0x0020)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000A30#"+str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
       	
    #Change Amplitude
       
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000B00#"+str((S00_AXIS_TDATA << 32 ) + (  255 << 40 ) + 0x00000000)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000B10#"+str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000D00#"+str((S00_AXIS_TDATA << 32 ) + (  255 << 40 ) + 0x00007fff)+"#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#DAC00#write_fifo#0x0000000000000D10#"+str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
       	
    #TimeController
       
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#TIME_CONT#write_fifo#0#2#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
    tcp.write("#TIME_CONT#write_fifo#0#9#!EOL")
    time.sleep(0.1)
    a = tcp.read()
    print(a)
    
       	
    #a = input()
    #tcp.write(a)
    #print(tcp.read())
    #if( a == 'q'):
    #    break
    
