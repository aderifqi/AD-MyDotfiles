#!/bin/env python

# import getopt
# import sys

import os
import pathlib
import subprocess # run linux 
import re
import sys
from glob import glob # Unix style pathname
import inspect
from datetime import datetime as dtm
import psutil

class BaseProgram:
    __statusbar = ''
    envronment = "BLOCK_BUTTON" #button

    ## mouse button
    #  button1    = left button  
    #  button2    = midle button
    #  button3    = right button
    #  button4    = scroll up 
    #  button5    = scroll down

    def __init__(self, one, two=None, three=None,four=None, five=None):
        self.one = one
        self.two = two
        self.three = "$TERMINAL -e $EDITOR {}".format(three)
        self.four = four
        self.five = five

    def __repr__(self):
        return self.__statusbar

    # what button clicked
    def click(self, options):
        if options == '1':
            self.execute(self.one)

        if options == '2':
            self.execute(self.two)

        if options == '3':
            self.execute(self.three)

        if options == '4':
            self.execute(self.four)

        if options == '5':
            self.execute(self.five)

    def execute(self, command):
        if command is not None:
            try:
                os.system(command)
            except:
                print('failed execute shell command')

    @property
    def statusbar(self):
        pass
    @statusbar.setter
    def statusbar(self, input):
        self.__statusbar += input

    ## read file
    def get_file(self, filelocation):
        readFile = self.read_file(filelocation)

        # if file not exist return '' && write error to stderr
        if isinstance(readFile, FileNotFoundError):
            sys.stderr.write(str(readFile)+"\n")
            return False
        return readFile

    def read_file(self, filelocation):
        try :
            fileLoc = filelocation
            with open(fileLoc) as file :
                file = file.readline()
                return file.strip()
        except FileNotFoundError as e :
            return e

    def run(self):
        try :
            ### if clicked
            if self.envronment in os.environ:
                # get button 
                getBtn = os.environ["BLOCK_BUTTON"]

                # click
                self.click(getBtn)

            # show status
            print(self.__statusbar)
        except Exception as e :
            print(e)


