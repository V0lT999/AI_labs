import numpy as np


class Node:
    State = np.array([])
    Prev = np.NaN
    Childs = []
    GoalState = np.array([1, 2, 3, 4, 0, 5, 6, 7, 8])
    Action = np.NaN
    Depth = 0

    def __init__(self, state, action=np.NaN, prev=np.NaN, depth=0):
        self.State = state
        self.Prev = prev
        self.Depth = depth
        self.Action = action

    def goaltest(self):
        if self.State == self.GoalState:
            return True
        else:
            return False

    def getstate(self):
        for i in range(3):
            print(self.State[i*3:i*3 + 2])

    def actionproof(self, action):
        return not self.Action - action == np.abs(1)

    def expand(self):
        IndexZero = np.where(self.State == 0)
        if IndexZero[0] % 3 > 0 and self.actionproof(0):
            NewState = self.State.swap(IndexZero[0], IndexZero - 1)
            # NewState =
            self.Childs.append(Node(state=NewState, action=0, prev=self, depth=self.Depth+1))
        if IndexZero[0] % 3 < 2 and self.actionproof(1):
            NewState = self.State.swap(IndexZero[0], IndexZero + 1)
            self.Childs.append(Node(state=NewState, action=1, prev=self, depth=self.Depth+1))
        if IndexZero[0] // 3 < 2 and self.actionproof(2):
            NewState = self.State.swap(IndexZero[0], IndexZero + 3)
            self.Childs.append(Node(state=NewState, action=2, prev=self, depth=self.Depth+1))
        if IndexZero[0] // 3 > 0 and self.actionproof(3):
            NewState = self.State.swap(IndexZero[0], IndexZero - 3)
            self.Childs.append(Node(state=NewState, action=3, prev=self, depth=self.Depth+1))
