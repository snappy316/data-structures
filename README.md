# Data Structures

This repo is a collection of data structures and algorithms I have written.

## Insertion Sort

I took a fairly standard approach to writing this algorithm. The one I whiteboarded did not quite work, so I had to re-write some of the logic based on the pseudo-code on VisuAlgo. I extended the Array class and added a custom method called `insertion_sort`. This method returns a new array with the sorted values.

Since arrays are 0-indexed, we can start looping through the array at index 1. We then extract the element at the current index in the loop, then start checking values to the left of the current index, which we'll refer to as the currently sorted value.. If the extracted value is greater than the currently sorted value, we'll move the currently sorted value one position to the right, and keep checking values. Once we're either at the beginning of the array (index 0), or the currently sorted value is less than the extracted value, we'll put the extracted value back in the array. Once we're done looping through the array, we'll return the resulting sorted array.

## Collaborators and Sources

[VisuAlgo - Sorting](http://visualgo.net/sorting.html)
