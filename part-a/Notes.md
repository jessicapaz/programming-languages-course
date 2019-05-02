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