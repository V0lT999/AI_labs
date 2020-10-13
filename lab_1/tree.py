import numpy as np


class Node:

    GoalState = np.array([1, 2, 3, 4, 0, 5, 6, 7, 8])

    def __init__(self, state, action=np.NaN, prev=np.NaN, depth=0):
        self.State = state
        self.Prev = prev
        self.Depth = depth
        self.Action = action
        self.Childs = []

    def goaltest(self):
        if np.array_equal(self.State, self.GoalState):
            return True
        else:
            return False

    def getchild(self):
        return self.Childs

    def getstate(self):
        for i in range(3):
            print(self.State[i*3:i*3 + 3])
        print("\n")

    def actionproof(self, action):
        return not np.abs(self.Action - action) == 1

    def expand(self):
        IndexZero = np.where(self.State == 0)[0]
        if IndexZero[0] % 3 > 0 and self.actionproof(0):
            NewState = self.State.copy()
            NewState[IndexZero], NewState[IndexZero - 1] = NewState[IndexZero - 1], NewState[IndexZero]
            self.Childs.append(Node(state=NewState, action=0, prev=self, depth=self.Depth+1))
        if IndexZero[0] % 3 < 2 and self.actionproof(1):
            NewState = self.State.copy()
            NewState[IndexZero], NewState[IndexZero + 1] = NewState[IndexZero + 1], NewState[IndexZero]
            self.Childs.append(Node(state=NewState, action=1, prev=self, depth=self.Depth+1))
        if IndexZero[0] // 3 < 2 and self.actionproof(3):
            NewState = self.State.copy()
            NewState[IndexZero], NewState[IndexZero + 3] = NewState[IndexZero + 3], NewState[IndexZero]
            self.Childs.append(Node(state=NewState, action=3, prev=self, depth=self.Depth+1))
        if IndexZero[0] // 3 > 0 and self.actionproof(4):
            NewState = self.State.copy()
            NewState[IndexZero], NewState[IndexZero - 3] = NewState[IndexZero - 3], NewState[IndexZero]
            self.Childs.append(Node(state=NewState, action=4, prev=self, depth=self.Depth+1))
