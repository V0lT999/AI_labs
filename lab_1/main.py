import numpy as np
from tree import Node
from queue import Queue

def main():
    StartState = np.array([0, 4, 3, 6, 2, 1, 7, 5, 8])
    Tree = Node(state=StartState)
    Current = Tree
    k = 0
    while Current.Depth <= 30:
        Current.getstate()
        Current.expand()
        if Current.goaltest():
            # return 'Pobyeda'
            pass
        Current = Current.getchild()[0]
        print(k)
        k += 1


if __name__ == "__main__":
    main()
