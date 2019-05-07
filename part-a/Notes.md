# Notes

## Variable Bindings
* Each binding gets type-checked and then evaluated.
* What type a binding has depends on a static environment.
* How a binding is evaluated depends on a dynamic environment.
* To type-check a variable binding we use the "current static enviroment" (the types of preceding bindings), evaluation is analogous.
* Immutability
    * Bindings are immutable.
    * Given `val x = 4;` we produce a dynamic environment where x will **always** map to 4. There is no "assignment statement" in ML for changing what x maps to.
    * We can have another binding later, say `val x = 20;`, but that just creates a different environment where the later binding for x shadows the earlier one.

## Function Bindings
* A function is something that is called with arguments and has a body that produces a result.
* *A function is a value* we simply add a function to the environment as a function that can be called later.

## Lists
* Lists can have any length.
* The elements of any list must have the same type.
* Functions that take a list as argument:
    * `null` evaluates to true for empty lists and false for nonempty lists.
    * `hd` returns the first element of a list, raising an exception if the list is empty.
    * `tl` returns the tail of a list, returns `[]` if the list has just one element and raising an exception if the list is empty.
* Functions that make and use lists are almost always recursive because a list has an unknown length.
