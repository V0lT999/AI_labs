import numpy as np
from tree import Node
from queue import Queue, Aqueue
import sys

limitdepth = 100
stepscount = 0
weight = 0
heuristic = 0

def IDFS(StartState):
    global stepscount, weight
    Node.h = {}
    depth = 0
    # Cycle through depth to the maximum depth
    while depth <= limitdepth:
        Node.h = {}
        # tree initialisation
        current = Node(state=StartState)
        # queue initialisation
        queue = Queue()
        flag = True
        # depth cycle
        while flag:
            # step's counting
            stepscount = stepscount + 1
            # the decomposition of the node
            if current.depth < depth:
                current.expand()
            # if a solution is found, output the results
            if current.goaltest():
                weight = weight + sys.getsizeof(queue)
                result = [current]
                while current.depth != 0:
                    current = current.prev
                    result.append(current)
                return result
            # getting child nodes
            childs = current.getchild()
            # adding child nodes to queue
            queue.Queueing_Fn(childs)
            # getting the next node from the queue
            if not queue.IsQueusEmpty():
                weight = weight + sys.getsizeof(current)
                current = queue.RemoveFront()
            else:
                flag = False
        # increasing the depth
        depth = depth + 1
    # return 1 if we can't find solution
    return 1


def DFS(StartState):
    global stepscount
    Node.h = {}
    # tree initialisation
    current = Node(state=StartState)
    # queue initialisation
    queue = Queue()
    # start of search
    while True:
        # step's counting
        stepscount = stepscount + 1
        # the decomposition of the node
        current.expand()
        # if a solution is found, output the results
        if current.goaltest():
            result = [current]
            while current.depth != 0:
                current = current.prev
                result.append(current)
            return result
        # getting child nodes
        childs = current.getchild()
        # adding child nodes to queue
        queue.Queueing_Fn(childs)
        # getting the next node from the queue
        if not queue.IsQueusEmpty():
            current = queue.RemoveFront()
        else:
            return 1
        # stopping the search if depth's limit was reached
        if current.depth > limitdepth:
            print("The limit depth has been reached, no success")
            return 1

def Apathfind(StartState):
    global weight, stepscount, heuristic
    aqueue = Aqueue(Node(state=StartState))
    Node.h = {}
    Aqueue.heuristic = heuristic
    print(aqueue.Nodes)
    #aqueue.Queueing_Fn([])

    while True:
        stepscount = stepscount + 1
        current = aqueue.RemoveFront()
        #input()
        #print(aqueue.Nodes)
        #current.getstate()
        if current.goaltest():
            weight = weight + sys.getsizeof(aqueue)
            result = [current]
            while current.depth != 0:
                current = current.prev
                result.append(current)
            return result
        current.expand()
        aqueue.Queueing_Fn(current.getchild())


def main():
    # initialisation of variables
    startstate = np.array([0, 4, 3, 6, 2, 1, 7, 5, 8])
    global stepscount, limitdepth, weight, heuristic

    # The input of the death's limit
    limitdepth = int(input("Enter limit depth: "))

    #DFS
    print("DFS: ")
    stepscount = 0
    weight =0
    result = DFS(StartState=startstate)
    if result != 1:
        print("Success!")
        print("step's count is: ", stepscount)
        # for current in result:
        #     current.getstate()
    else:
        print("The solution is not found")

    # IDFS
    print("IDDFS: ")
    stepscount = 0
    weight = 0
    result = IDFS(StartState=startstate)
    if result != 1:
        print("Success!")
        print("step's count is: ", stepscount)
        print("size is: ", weight)
        # for current in result:
        #     current.getstate()
    else:
        print("The solution is not found")

    for i in range(2):
        print("A* (h{0}): ".format(i))
        heuristic = i
        stepscount = 0
        weight = 0
        result = Apathfind(StartState=startstate)
        if result != 1:
            print("Success!")
            print("step's count is: ", stepscount)
            print("size is: ", weight)
            # for current in result:
            #     current.getstate()
        else:
            print("The solution is not found")


# start of the program
if __name__ == "__main__":
    main()
