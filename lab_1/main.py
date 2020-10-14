import numpy as np
from tree import Node
from queue import Queue

depth = 0
limitdepth = 100
stepscount = 0


def IDFS(StartState):
    global stepscount
    global depth
    while depth <= limitdepth:
        tree = Node(state=StartState)
        current = tree
        queue = Queue()
        flag = True
        while flag:
            stepscount = stepscount + 1
            current.expand()
            if current.goaltest():
                result = []
                while current.depth != 0:
                    result.append(current)
                    current = current.prev
                result.append(tree)
                return result
            childs = current.getchild()
            queue.Queueing_Fn(childs)
            if not queue.IsQueusEmpty():
                current = queue.RemoveFront()
                if current.depth > depth:
                    while current.depth > depth and flag == True:
                        if not queue.IsQueusEmpty():
                            current = queue.RemoveFront()
                        else:
                            flag = False
            else:
                flag = False
        depth = depth + 1
    return 1


def DFS(StartState):
    global stepscount
    tree = Node(state=StartState)
    current = tree
    while True:
        stepscount = stepscount + 1
        current.expand()
        if current.goaltest():
            result = []
            while current.depth != 0:
                result.append(current)
                current = current.prev
            result.append(tree)
            return result
        current = current.getchild()[0]
        if current.depth > limitdepth:
            print("The limit depth has been reached, no success")
            return 1


def main():
    startstate = np.array([0, 4, 3, 6, 2, 1, 7, 5, 8])
    global stepscount, depth, limitdepth

    limitdepth = int(input("Enter limit depth: "))

    print("DFS: ")
    stepscount = 0
    result = DFS(StartState=startstate)
    if result != 1:
        print("Success!")
        print("step's count is: ", stepscount)
        for current in result:
            current.getstate()
    else:
        print("The solution is not found")
    print("IDDFS: ")
    stepscount = 0
    depth = 0
    result = IDFS(StartState=startstate)
    if result != 1:
        print("Success!")
        print("step's count is: ", stepscount)
        for current in result:
            current.getstate()
    else:
        print("The solution is not found")


if __name__ == "__main__":
    main()
