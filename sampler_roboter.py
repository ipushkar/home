import os
import sys
import string

class samples_roboter():
    def hello_robot(self, key):
      print >> sys.stderr, key
      return "PASS"
if __name__=='__main__':
  sr=samples_roboter()
  print sr.hello_robot("HELLO FROM ROBOT!")
