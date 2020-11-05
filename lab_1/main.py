import numpy as np
from tree import Node
from queue import Queue, Aqueue
import sys

stepscount = 0
weight = 0
heuristic = 0
mode = 0


def IDFS(StartState):
    global stepscount, weight, mode
    # Update hashtable
    Node.h = {}
    # Install current depth
    depth = 0
    # Cycle through depth to the maximum depth
    while True:
        Node.h = {}
        # tree initialisation
        current = Node(state=StartState)
        # queue initialisation
        queue = Queue()
        flag = True
        # depth cycle
        while flag:
            # show current condition for step mode
            if mode == 1:
                print(current.getstate())
                input("Press enter to continue...")
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


def DFS(StartState):
    global stepscount, mode
    # Update hashtable
    Node.h = {}
    # tree initialisation
    current = Node(state=StartState)
    # queue initialisation
    queue = Queue()
    # start of search
    while True:
        # show current condition for step mode
        if mode == 1:
            print(current.getstate())
            input("Press enter to continue...")
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


def Apathfind(StartState):
    global weight, stepscount, heuristic
    # Initialisation of queue for A*
    aqueue = Aqueue(Node(state=StartState))
    # Update hashtable
    Node.h = {}
    # Set current heuristic function
    Aqueue.heuristic = heuristic

    while True:
        # steps counting
        stepscount = stepscount + 1
        # getting the next element
        current = aqueue.RemoveFront()
        # if a solution is found, output the results
        if current.goaltest():
            weight = weight + sys.getsizeof(aqueue)
            result = [current]
            while current.depth != 0:
                current = current.prev
                result.append(current)
            return result
        # the decomposition of the node
        current.expand()
        # adding child nodes to queue
        aqueue.Queueing_Fn(current.getchild())
        # show current condition for step mode
        if mode == 1:
            print(current.getstate())
            # if heuristic == 0:
            #     for i in aqueue.Nodes:
            #         print(i.h1func())
            # else:
            #     for i in aqueue.Nodes:
            #         print(i.h1func())
            s = ""
            for i in aqueue.Nodes:
                s += (str(i[1]) + " ")
            print(s)
            input("Press enter to continue...")


def main():
    # initialisation of variables
    startstate = np.array([0, 4, 3, 6, 2, 1, 7, 5, 8])
    global stepscount, weight, heuristic, mode

    #DFS
    print("DFS: ")
    # The input mode
    mode = int(input("Enter mode (0 - end-to-end mode, 1 - step mode): "))
    stepscount = 0
    weight = 0
    result = DFS(StartState=startstate)
    if result != 1:
        print("Success!")
        print("step's count is: ", stepscount)
        show = int(input("Show the sequence? (0 - no, 1 - yes): "))
        if show == 1:
            for current in result:
                current.getstate()
    else:
        print("The solution is not found")

    # IDFS
    print("IDDFS: ")
    # The input mode
    mode = int(input("Enter mode (0 - end-to-end mode, 1 - step mode): "))
    stepscount = 0
    weight = 0
    result = IDFS(StartState=startstate)
    if result != 1:
        print("Success!")
        print("step's count is: ", stepscount)
        print("size is: ", weight)
        show = int(input("Show the sequence? (0 - no, 1 - yes): "))
        if show == 1:
            for current in result:
                current.getstate()
    else:
        print("The solution is not found")

    for i in range(2):
        print("A* (h{0}): ".format(i))
        # The input mode
        mode = int(input("Enter mode (0 - end-to-end mode, 1 - step mode): "))
        heuristic = i
        stepscount = 0
        weight = 0
        result = Apathfind(StartState=startstate)
        if result != 1:
            print("Success!")
            print("step's count is: ", stepscount)
            print("size is: ", weight)
            show = int(input("Show the sequence? (0 - no, 1 - yes): "))
            if show == 1:
                for current in result:
                    current.getstate()
        else:
            print("The solution is not found")


# start of the program
if __name__ == "__main__":
    main()
