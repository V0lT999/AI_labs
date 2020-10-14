import numpy as np
from tree import Node
from queue import Queue

N = 14
limitdepth = 100

def IDDFS(StartState):
    tree = Node(state=StartState)
    current = tree
    queue = Queue()
    while True:
        current.getstate()
        current.expand()
        if current.goaltest():
            print("Success!")
            return "Success"
        childs = current.getchild()
        queue.Queueing_Fn(childs)
        if not queue.IsQueusEmpty():
            current = queue.RemoveFront()
            if current.depth > N:
                while current.depth > N:
                    current = queue.RemoveFront()
        else:
            return "Unlucky"


def DFS(StartState):
    tree = Node(state=StartState)
    current = tree
    while True:
        current.getstate()
        current.expand()
        if current.goaltest():
            print("Success!")
            return 'Success'
        current = current.getchild()[0]
        if current.depth > limitdepth:
            print("limit depth, no success")
            break


def main():
    startstate = np.array([0, 4, 3, 6, 2, 1, 7, 5, 8])
    print("DFS: ")
    DFS(StartState=startstate)
    print("IDDFS: ")
    IDDFS(StartState=startstate)


if __name__ == "__main__":
    main()
