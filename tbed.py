import tinydb
import os
import sys


db=tinydb.TinyDB("./normal.txt")
table=db.table('login')
#table.insert({'name':'kalaiyarasan','number':'20066420'})
while 1:
    web=raw_input('enter the link:')
    name=raw_input('enter the user:')
    number=raw_input('enter the number:')
    table.insert({'link':web,'name':name,'number':number})
    cont=raw_input('enter  c to continue')
    if cont.__eq__("c"):
        print "done:added"
    else:
        sys.exit(0) 


