67-443: SwiftUI & JSON Parsing Class Exercise
---
For this class exercise, we are going to use SwiftUI to build the scan history aspect of the PriceCheck app that we've discussed on several occasions this semester.  

The starter code for this gives you the shell of two Codable models and a sample of JSON from the API (if it existed).  There is a Helper module with some methods that are useful in the project, including one that will read the JSON and place it into an array of struct objects for you.

The first checkpoint is pretty basic and should look like this:

<img src="https://imgur.com/YlyZNC5.png" width="40%"/>


Your mission for the first checkpoint is to modify `PriceScan.swift` and `Location.swift` so that it is able to replicate the screenshot above.  The `ScanListView` will build this out if the structs are correct.

**Checkpoint 2**

We want you to refactor your code into a `ScanListView`, a `LocationView`, and a `ScanView`.  Once you have done that, edit the `ScanView` such that it appears like the image below, with the price right-aligned and in bold:

<img src="https://i.imgur.com/3G6h1zr.png" width=45%"/>

**Checkpoint 3**

With your refactored code, we want you to add some navigation so that you can touch a table cell and you will be brought to the scan details view as seen in the two images below:

<img src="https://i.imgur.com/3G6h1zr.png" width=45%"/>

<img src="https://i.imgur.com/kEy1psE.png" width=45%"/>

**Bonus**

If you complete that quickly, work on adding in the tabbed menu options (working, not just visual).


Additional instructions about the next checkpoints will be given in class.  This assignment is to be done by every person, but we are going to put you in pairs during class so you have someone to talk out ideas with and instructors will come around to check on you and to assist.