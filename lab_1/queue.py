from tree import Node
import numpy as np

class Queue:

    Nodes = []

    def IsQueusEmpty(self):
        if not self.Nodes:
            return True
        else:
            return False

    def RemoveFront(self):
        result = self.Nodes[0]
        self.Nodes.pop(0)
        return result

    def Queueing_Fn(self, elements):
        for elem in elements:
            self.Nodes.append(elem)