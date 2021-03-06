import numpy as np


class Node:
    goalstate = np.array([1, 2, 3, 4, 0, 5, 6, 7, 8])
    h = {}

    # Initialisation of a node
    def __init__(self, state, action=np.NaN, prev=np.NaN, depth=0):
        self.state = state
        self.prev = prev
        self.depth = depth
        self.action = action
        self.childs = []

    # The check of the result's getting
    def goaltest(self):
        if np.array_equal(self.state, self.goalstate):
            return True
        else:
            return False

    def h1func(self):
        s = 0
        for i in range(len(self.goalstate)):
            if self.goalstate[i] != self.state[i]:
                s += 1
        return s

    def h2func(self):
        s = 0
        for i in range(len(self.state)):
            index, = np.where(self.goalstate == self.state[i])
            s += abs((index[0] //3 - i // 3)) + abs((index[0] % 3- i % 3))
        return s

    # return child nodes
    def getchild(self):
        return self.childs

    # the output node
    def getstate(self):
        print("depth is: ", self.depth)
        for i in range(3):
            print(self.state[i * 3:i * 3 + 3])

    # The check of the repeating of the action
    def actionproof(self, action):
        return not np.abs(self.action - action) == 1

    # getting child nodes
    def expand(self):
        # self.h[hash(bytes(self.state))] = self
        indexzero = np.where(self.state == 0)[0]
        i = 0
        if indexzero[0] % 3 > 0 and self.actionproof(0):
            newstate = self.state.copy()
            newstate[indexzero], newstate[indexzero - 1] = newstate[indexzero - 1], newstate[indexzero]
            if (self.h.get(hash(bytes(newstate)))):
                if self.h.get(hash(bytes(newstate))).depth >= self.depth + 1:
                    self.h[hash(bytes(newstate))].prev = self
            else:
                newnode = Node(state=newstate, action=0, prev=self, depth=self.depth + 1)
                i += 1
                self.childs.append(newnode)
                self.h[hash(bytes(newstate))] = newnode
        if indexzero[0] % 3 < 2 and self.actionproof(1):
            newstate = self.state.copy()
            newstate[indexzero], newstate[indexzero + 1] = newstate[indexzero + 1], newstate[indexzero]
            if (self.h.get(hash(bytes(newstate)))):
                if self.h.get(hash(bytes(newstate))).depth >= self.depth + 1:
                    self.h[hash(bytes(newstate))].prev = self
            else:
                newnode = Node(state=newstate, action=1, prev=self, depth=self.depth + 1)
                self.childs.append(newnode)
                i += 1
                self.h[hash(bytes(newstate))] = newnode
        if indexzero[0] // 3 < 2 and self.actionproof(3):
            newstate = self.state.copy()
            newstate[indexzero], newstate[indexzero + 3] = newstate[indexzero + 3], newstate[indexzero]
            if (self.h.get(hash(bytes(newstate)))):
                if self.h.get(hash(bytes(newstate))).depth >= self.depth + 1:
                    self.h[hash(bytes(newstate))].prev = self
            else:
                newnode = Node(state=newstate, action=3, prev=self, depth=self.depth + 1)
                self.childs.append(newnode)
                i += 1
                self.h[hash(bytes(newstate))] = newnode
        if indexzero[0] // 3 > 0 and self.actionproof(4):
            newstate = self.state.copy()
            newstate[indexzero], newstate[indexzero - 3] = newstate[indexzero - 3], newstate[indexzero]
            if (self.h.get(hash(bytes(newstate)))):
                if self.h.get(hash(bytes(newstate))).depth >= self.depth + 1:
                    self.h[hash(bytes(newstate))].prev = self
            else:
                newnode = Node(state=newstate, action=4, prev=self, depth=self.depth + 1)
                self.childs.append(newnode)
                i += 1
                self.h[hash(bytes(newstate))] = newnode
        return i