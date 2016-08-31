from twisted.internet import task, reactor
import logging
import json
import random

INTERVAL = 5 # sec
logging.basicConfig(filename='test.log', format='%(message)s', level=logging.INFO)

def somethingHappend():
  data = {
    "value": random.randint(0, 100),
    "event": "something"
  }
  logging.info(json.dumps(data))  

if __name__ == '__main__':
    instance = task.LoopingCall(somethingHappend)
    instance.start(INTERVAL)
    reactor.run()
