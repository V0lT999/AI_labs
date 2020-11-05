def QuickSort(array):
    """Sort the array by using quicksort."""

    less = []
    equal = []
    greater = []

    if len(array) > 1:
        pivot = array[0]
        for x in array:
            if x[1] > pivot:
                less.append(x)
            elif x[1] == pivot:
                equal.append(x)
            elif x[1] < pivot:
                greater.append(x)
        # Don't forget to return something!
        return QuickSort(less)+equal+QuickSort(greater)  # Just use the + operator to join lists
    # Note that you want equal ^^^^^ not pivot
    else:  # You need to handle the part at the end of the recursion - when you only have one element in your array, just return the array.
        return array

class Queue:
    def __init__(self):
        self.Nodes = []

    # checking the queue for empty space
    def IsQueusEmpty(self):
        if not self.Nodes:
            return True
        else:
            return False

    # getting the first point of the queue
    def RemoveFront(self):
        result = self.Nodes[0]
        self.Nodes.pop(0)
        return result

    # adding a node to queue
    def Queueing_Fn(self, elements):
        for elem in elements:
            self.Nodes.insert(0, elem)


class Aqueue(Queue):

    heuristic = 0

    def __init__(self, node):
        super().__init__()
        if self.heuristic == 0:
            self.Nodes.append((node, node.h1func()))
        else:
            self.Nodes.append((node, node.h2func()))
    def RemoveFront(self):
        result = self.Nodes[0][0]
        self.Nodes.pop(0)
        return result

    def Queueing_Fn(self, elements):
        for elem in elements:
            f = 0
            if self.heuristic == 1:
                f = elem.depth + elem.h2func()
            else:
                f = elem.depth + elem.h1func()
            ij=len(self.Nodes)

            if len(self.Nodes)==0:
                self.Nodes.append((elem, f))
            else:

                for i in range(len(self.Nodes)):
                    if f<=self.Nodes[i][1]:
                        ij=i
                        break
                self.Nodes.insert(ij, (elem, f))
            #self.Nodes.append((elem, f))
        #self.Nodes = QuickSort(self.Nodes)
