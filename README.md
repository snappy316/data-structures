# Data Structures

This repo is a collection of data structures and algorithms implemented in Ruby.

## Insertion Sort

I took a fairly standard approach to writing this algorithm. The one I whiteboarded did not quite work, so I had to re-write some of the logic based on the pseudo-code on VisuAlgo. I extended the Array class and added a custom method called `insertion_sort`. This method returns a new array with the sorted values.

Since arrays are 0-indexed, we can start looping through the array at index 1. We then extract the element at the current index in the loop, then start checking values to the left of the current index, which we'll refer to as the currently sorted value.. If the extracted value is greater than the currently sorted value, we'll move the currently sorted value one position to the right, and keep checking values. Once we're either at the beginning of the array (index 0), or the currently sorted value is less than the extracted value, we'll put the extracted value back in the array. Once we're done looping through the array, we'll return the resulting sorted array.

## Merge Sort

It's been a while since I've worked with recursion, so this one took a bit of time and thinking to wrap my head around. The pseudo-code on VisuAlgo was a good start, but I had some trouble on how to set up the actual recursion part. That's where Mark Miyashita's article and the Wikibooks page came in handy. However, instead following their examples of writing methods that take the array as an attribute, I wanted to extend the Array class and add the `merge_sort` as a custom method.

We start out by recursively breaking the array down so that each element is in it's own individual partion. This is in the `merge_sort` method. Once they're broken out, we start working our way back up the recursion-tree, and by calling the `merge_sorting` method we merge two adjacent partitions together. While there are still numbers in each adjacent partition, we compare the first value of each partition with each other, and place the lowest value in a temporary array. When either partition no longer has any values, we place the remaining values in the other array into the temporary array, and return the temporary array. This will climb back up the recursion tree, and at the end will return the completely sorted array.

## Linked Lists

Linked lists are a collection of nodes. Each node has a value, and a reference to the next node in the list. I created the `Node` as a Struct, with `val` and `next` attributes. Theoretically, if you just created a bunch of nodes that referenced each other, you would have a kind of "Linked List"...but the power of linked lists comes with the `LinkedList` class. The class is initialized by passing in the head `node`, which is stored in `@head`. By explicitly defining the head node, the list can find all other nodes in the list through the head's next node.

The `LinkedList` class has several methods:
- `insert(new_node)` - inserts `new_node` at the beginning of the list. Given a `new_node`, it will set `new_node`'s `next` value to be the current value of `@head`, and then change `@head` to be `new_node`.
- `search(value)` - will look through each node in the list, looking for `value` in each node's `val` attribute. If it finds the value, it will return that node; if it doesn't find the value, it will return `nil`.
- `remove(node)` - removes `node` from the list, and returns it. It first `search`es through the list to see if the value even exists; if it doesn't, it returns `nil` right away. Otherwise, it will go through each node, and see if the next node's `val` is the value of the node we're searching for. If it is, we copy out the next node so we can return it, then we set the current node's `next` to `next.next` to skip the deleted node.
- `to_s` - prints a comma-separated list of all node values. It goes through all the nodes in the list, and adds each node's value to an array. Then, it returns the array's values joined together with a comma and a space.

## Benchmarking

Benchmarking of randomly sorted, nearly sorted, and reversed arrays is included in `lib/benchmark`. It generates three arrays with 10,000 elements each: a randomly sorted array, a sorted array, and a reversed array. It will benchmark each sort against each array.

## Collaborators and Sources

[VisuAlgo - Sorting](http://visualgo.net/sorting.html)
[VisuAlgo - Linked List](http://visualgo.net/list.html)
[Mark Miyashita - Merge Sort](http://markmiyashita.com/interviews/problems/merge_sort/)
[Wikibooks - Algorithm Implementation / Sorting / Merge sort](http://en.wikibooks.org/wiki/Algorithm_Implementation/Sorting/Merge_sort#Ruby)
[Wikipedia - Linked list](http://en.wikipedia.org/wiki/Linked_list)
