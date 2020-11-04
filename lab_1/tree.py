import numpy as np

status = np.array(204)

class Node:

    goalstate = np.array([1, 2, 3, 4, 0, 5, 6, 7, 8])
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

    def get_key(self, state):
        index = 0
        for i in range(9):
            index = index + state[i] * i
        return index

    def add_to_status(self, state):
        global status
        index = self.get_key(state=state)
        for i_state in status[index]:
            if state == i_state:
                return 1
        status[index] = np.append(status[index], self.state)
        return 0

    def hfunc(self):
        s = 0
        for i in range(len(self.goalstate)):
            if self.goalstate[i] == self.state[i]:
                s +=1
        return s

    # return child nodes
    def getchild(self):
        return self.childs

    # the output node
    def getstate(self):
        print("depth is: ", self.depth)
        for i in range(3):
            print(self.state[i*3:i*3 + 3])

    # The check of the repeating of the action
    def actionproof(self, action):
        return not np.abs(self.action - action) == 1

    # getting child nodes
    def expand(self):
        indexzero = np.where(self.state == 0)[0]
        if indexzero[0] % 3 > 0 and self.actionproof(0):
            newstate = self.state.copy()
            newstate[indexzero], newstate[indexzero - 1] = newstate[indexzero - 1], newstate[indexzero]
            if self.add_to_status(newstate) == 0:
                self.childs.append(Node(state=newstate, action=0, prev=self, depth=self.depth+1))
        if indexzero[0] % 3 < 2 and self.actionproof(1):
            newstate = self.state.copy()
            newstate[indexzero], newstate[indexzero + 1] = newstate[indexzero + 1], newstate[indexzero]
            if self.add_to_status(newstate) == 0:
                self.childs.append(Node(state=newstate, action=1, prev=self, depth=self.depth+1))
        if indexzero[0] // 3 < 2 and self.actionproof(3):
            newstate = self.state.copy()
            newstate[indexzero], newstate[indexzero + 3] = newstate[indexzero + 3], newstate[indexzero]
            if self.add_to_status(newstate) == 0:
                self.childs.append(Node(state=newstate, action=3, prev=self, depth=self.depth+1))
        if indexzero[0] // 3 > 0 and self.actionproof(4):
            newstate = self.state.copy()
            newstate[indexzero], newstate[indexzero - 3] = newstate[indexzero - 3], newstate[indexzero]
            if self.add_to_status(newstate) == 0:
                self.childs.append(Node(state=newstate, action=4, prev=self, depth=self.depth+1))