# More challenging coding tasks

(Only AdvancedStudents with Lambda allowed)

1. Audio player pt.3

  - Develop a binary search tree `BST<Song>` keyed on the length of the song.
    This includes the necessary data type definitions, an insert function, and a search function.
  - Write a modified `BST<Song>` for search the song title.
  - Write a sorting algorithm for a `List<Song>`.

2. Super Mario Rectangle Obstacles
  
  - Write type definitions to hold the rectangular elements (bars) of a jump and run game. 
  - Write a KD-tree for the rectangles. Note that if an Element crosses over a separation in the KD-tree you will need to split it into smaller rectangles that do not cross any separation lines anymore.
 
3. Family tree

  - Write type definitions for a family tree. Note that the number of children may vary: a given person may have no children at all or dozens.
  - Write a function that yields a list of persons that are the uncles and aunts of a person in the family tree.

4. Graph

  - Write type definitions to represent a graph. A graph consists of vertices and edges between 
    two vertices.
  - Write a function that checks whether there is an edge from a vertex V1 to another V2.
  - Write a function that yields a list of vertices one can reach starting from a vertex V. Make sure that your function terminates.

5. T9 (credit to Alessandro Giusti)

Old cell phones had a system that allowed typing text using the 10 number keys. Each number held three to four letters. With multiple clicks one could iterate through the letters. 
To simplify typing one could just type the number containing the letters and the word was then chosen from a dictionary.
The association of digits to letters is as follows: (2 ABC, 3 DEF, 4 GHI, 5 JKL, 6 MNO, 7 PQRS, 8 TUV, 9 WXYZ).
There is no letter associated with 1. 0 indicates a space, but we'll not consider that in this problem.
For example, entering `4-3-5-5-6` would produce `HELLO`.

Imagine being given a dictionary in a csv format (each line a word). 
Write functions and data structures to read in that dictionary.
Write functions, that given a list of words filters the list in a given position.
Write utility function (booleans) that check whether a given letter is equal to one of letters associated with a given number.

6. Juggling Game

Implement a juggling game with two "hands" (two sliding bars) that can be moved with the S and F keys (J and L keys). Balls are caught on contact with the bars. With the D and K keys balls can be launched upwards (they pick up any sideways momentum from the bars).
