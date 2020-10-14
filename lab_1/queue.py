from tree import Node
import numpy as np

class Queue:

    Nodes = []

    # checking the queue for empty space
    def IsQueusEmpty(self):
        if not self.Nodes:
            return True
        else:
            return False

    # getting the first point of the queue
    def RemoveFront(self):
        result = self.Nodes[0]
        self.Nodes.pop(0)
        return result

    # adding a node to queue
    def Queueing_Fn(self, elements):
        for elem in elements:
            self.Nodes.insert(0, elem)