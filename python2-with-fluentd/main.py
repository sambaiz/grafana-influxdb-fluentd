from twisted.internet import task, reactor
import logging
import json
import random
import datetime

INTERVAL = 0.1 # sec
logging.basicConfig(filename='test.log', format='%(message)s', level=logging.INFO)

def somethingHappend():
  d = datetime.datetime.today()
  data = {
    "time": d.strftime("%Y-%m-%d %H:%M:%S.%f"),
    "value": random.randint(0, 100),
    "event": "something"
  }
  logging.info(json.dumps(data))  

if __name__ == '__main__':
    instance = task.LoopingCall(somethingHappend)
    instance.start(INTERVAL)
    reactor.run()
