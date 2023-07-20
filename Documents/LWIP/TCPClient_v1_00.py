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

        
        

    def read(self):
        """ Reads data from the device.
        
        Args:
            None
        
        Returns:
            unicode string: received string
        """
        return (self.socket.recv(10000).decode('latin-1'))

class RFSoC:
    def __init__(self):    
        self.tcp = TCP_TEST()
        
    def connect(self):
        self.tcp.connect()
        print("Done")
        
    def initialize(self):
        self.tcp.write("#DAC00#write_fifo#0x0000000000000005#"+str((DAC00_FAST_SHUTDOWN<<32)+(255<<40))+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a) 
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000010#"+str((DAC00_PL_EVENT << 32 ) + (  255 << 40 ))+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000020#"+str((DAC00_NCO_FREQ << 32 ) + (  255 << 40 ))+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000030#"+str((DAC00_NCO_PHASE << 32 ) + (  255 << 40 ))+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000040#"+str((DAC00_NCO_PHASE_RST << 32 ) + (  255 << 40 ))+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000050#"+str((DAC0_SYSREF_INT_GATING << 32 ) + (  255 << 40 ))+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000060#"+str((DAC0_SYSREF_INT_REENABLE << 32 ) + (  255 << 40 ))+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000065#"+str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x00000000000000C0#"+str((S00_AXIS_TDATA << 32 ) + (  255 << 40 ) + 0x00007fff)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x00000000000000D0#"+str((S00_AXIS_TVALID << 32 ) + (  255 << 40 ) + 0x00000001)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x00000000000000E0#"+str((DAC00_NCO_FREQ << 32 ) + (  1 << 40 ) + 0x00000000)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x00000000000000F0#"+str((DAC00_NCO_FREQ << 32 ) + (  2 << 40 ) + 0x00000010)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000100#"+str((DAC00_NCO_UPDATE_EN << 32 ) + (  255 << 40 ) + 7)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000110#"+str((DAC0_NCO_UPDATE_REQ << 32 ) + (  255 << 40 ) + 0x0020)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000140#"+str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000600#"+str((DAC00_NCO_FREQ << 32 ) + (  1 << 40 ) + 0x00000000)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000610#"+str((DAC00_NCO_FREQ << 32 ) + (  2 << 40 ) + 0x00000001)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000620#"+str((DAC0_NCO_UPDATE_REQ << 32 ) + (  244 << 40 ) + 0x0020)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000630#"+str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        #Change frequency
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000A00#"+str((DAC00_NCO_FREQ << 32 ) + (  1 << 40 ) + 0x00000000)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000A10#"+str((DAC00_NCO_FREQ << 32 ) + (  2 << 40 ) + 0x00000010)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000A20#"+str((DAC0_NCO_UPDATE_REQ << 32 ) + (  255<< 40 ) + 0x0020)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000A30#"+str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        #Change Amplitude
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000B00#"+str((S00_AXIS_TDATA << 32 ) + (  255 << 40 ) + 0x00000000)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000B10#"+str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000D00#"+str((S00_AXIS_TDATA << 32 ) + (  255 << 40 ) + 0x00007fff)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#0x0000000000000D10#"+str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
    def auto_start(self):
        #TimeController
        self.tcp.write("#TIME_CONT#write_fifo#0#2#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#TIME_CONT#write_fifo#0#9#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
    def set_amp(self,timestamp,amp):
        amp_binary = int(amp * (1 << 15)) & 0x7fff
        self.tcp.write("#DAC00#write_fifo#" + str(timestamp) + "#" + str((S00_AXIS_TDATA << 32 ) + (  255 << 40 ) + 0x00000000)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#" + str(timestamp + 10) + "#" + str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
    def set_freq(self,timestamp,freq):
        #Change frequency
        freq_float = freq/(6.4E9)
        freq_binary = int(freq_float * (1 << 48)) & 0xffffffffffff
        self.tcp.write("#DAC00#write_fifo#" + str(timestamp) + "#" + str((DAC00_NCO_FREQ << 32 ) + (  1 << 40 ) + freq_binary & 0xffffffff)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#" + str(timestamp + 10) + "#" + str((DAC00_NCO_FREQ << 32 ) + (  2 << 40 ) + ( freq_binary >> 32 ) & 0x0000ffff)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#" + str(timestamp + 20) + "#" + str((DAC0_NCO_UPDATE_REQ << 32 ) + (  255<< 40 ) + 0x0020)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
        
        self.tcp.write("#DAC00#write_fifo#" + str(timestamp + 30) + "#" + str((UPDATE << 32 ) + (  255 << 40 ) + (  1 << 36 ) + 1)+"#!EOL")
        time.sleep(0.1)
        a = self.tcp.read()
        print(a)
    

if __name__ == "__main__": 
    RFSoC = RFSoC()
    
    for i in range(40):
        RFSoC.set_amp(0x1000000*( 1 + i ), i/40 )
    
    for i in range(40):
        RFSoC.set_amp(0x1000000*( 51 + i ), i/40 * 10E7 )
       	
    #a = input()
    #tcp.write(a)
    #print(tcp.read())
    #if( a == 'q'):
    #    break
    
