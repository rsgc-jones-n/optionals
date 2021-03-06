//: [Previous](@previous)
/*:

## Detecting a nil value

So, how do we deal with a *nil*, the absence of a value?

What do you think the following code will do?  Type it and find out:

![check-nil](check-nil.png)

Is the result what you expected?

*/
var dayOfWeek : String? = "Monday"
if dayOfWeek != nil {
    print ("The day is \(dayOfWeek)")
} else {
    print ("no day was provided")
}
/*:

Now change the first line to:

![set-monday](set-monday.png)

Run the code again.

Is the result *exactly* what you expected?  Look closely at the output.

*/

//: [Next](@next)
