#!/usr/bin/env python

######################################################################
#
#  Python module to read ADAMS requests files
#    No unit handling
#    Load entire file into memory
#
#  Usage: (See test harness at bottom)
#    file = ReqRead (file_name)
#    data = file(id, component)
#
######################################################################

import sys, string

######################################################################
class Request:
  "Hold onto the Request definition"
  def __init__ (self, id, type, i, j, title):
    self.id     = int (id)
    self.type   = int (type)
    self.i      = int (i)
    self.j      = int (j)
    self.title  = title
    self.data   = [[],[],[],[],[],[]]

######################################################################
class Component:
  "Used as the second parameter of the read method of ReqRead"
  X     = 0
  Y     = 1
  Z     = 2
  Psi   = 3
  Theta = 4
  Phi   = 5

######################################################################
class ReqRead:
  def __init__ (self, fname):
    self.fname    = fname
    self.times    = []
    self.requests = []

    self.read ()

  def get_a_line (self):
    return self.file.readline()

  def read_header (self):
    self.header = self.get_a_line()[:-1]

  def read_title (self):
    self.title = self.get_a_line()[:-1]

  def read_requests (self):
    "read the request definitions"
    line = self.get_a_line()
    for count in range (int (line[:10])):
      line  = self.get_a_line()
      id, type, i, j, ntitle = line.split ()
      if int (ntitle) > 0:
        title = self.get_a_line()
      else:
        title = None
      self.requests.append (Request (id, type, i, j, title))

  def float (self, val):
    "convert string to float, handling nonstandard formats"
    val = val.replace ("D", "E") # Fortran output
    if val[7] in '+-':                   # PC format 3.89000-200
      val = val[:7] + 'E' + val[7:]
    return float (val)

  def read_steps (self):
    "get the time data"
    time = self.get_a_line()
    while time:
      if len (time) > 4 and time[:4] == "<++>": # seperator
        return
      self.times.append (self.float (time))
      for request in self.requests:
        comps = self.get_a_line().split ()
        for idx in (0,1,2,3,4,5):
          request.data[idx].append (self.float(comps[idx]))
      time = self.get_a_line()
       
  def read (self):
    "read the file into this class"
    self.file = open (self.fname)

    self.read_header   ()
    self.read_title    ()
    self.read_requests ()
    self.read_steps    ()

    self.file.close()

  def data (self, id, component):
    "return the data for the requested id/component"
    for request in self.requests:
      if request.id == id:
        return request.data[component]
    print("No request %d:%d found" % (component, id))

  def comment(self, id):
    "return the comment (title) for the request id"
    for request in self.requests:
      if request.id == id:
        return request.title
    print("No request %d found" % id)

#############################################################################
# if __name__ == '__main__':
# 
#   # ReqRead file_name [request_id] [request_component]
#   # request_component = 0-5
# 
#   #file_name = sys.argv[1]
#   file_name = 'MarksStudy_BHA11_out.req'
#   file = ReqRead(file_name)
# 
#   if len (sys.argv) == 2:
#     print(file.times)
#   elif len (sys.argv) ==3: 
#     id        = int(sys.argv[2])
#     print("Request",id,"has title",file.comment(id))
#     print(file.data(id,Component.X))
#   else:
#     id        = int(sys.argv[2])
#     comp      = int (sys.argv[3])
#     print(file.data (id, comp))