# CoffeeGo
A simple program for making a choice with a loaded die

## How to use
This program takes a three-column CSV as its first and only argument and returns the choice:

E.g.,

    $ ruby coffee_go.rb sample_data.csv
    "The winner is:"
    "Amherst Coffee in Amherst"

## Required libraries
You need the `loaded_dice` gem installed to use this program.

Install ala `gem install loaded_dice`.

## CSV format
Your data should be in the following format:

name  | weight  | location
----- | ------- | --------
name1 | weight1 | location1
name2 | weight2 | location2
... | ... | ...

Note that the program ignores whatever is in the first row, so feel free to put your own labels in there.  That said...

### The column order matters
The program uses the value in the second column (the `weight`) to select the values in the first (the `name`) and third (the `location`) columns, which it then prints to the screen.