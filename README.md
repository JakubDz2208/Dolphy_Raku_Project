# Dolphy

## What is Dolphy?

Dolphy is variable interpreter based on raku which allows you to print values.

## Get started

1. To start working with Dolphy, make sure [You have Rakudo](https://rakudo.org/) downloaded on your computer.

2. Now, you can copy repository to your desktop using git bash by command    
`git clone https://github.com/JakubDz2208/Dolphy_Raku_Project.git `

3. When you have everything installed you can try a test program using    
`raku ./dolphy.raku test_program`

## Dolphy Functions

### Variable declaration

To edit your variable first you have to declare it. You can use "our" to do it     
```
our var;
var = 5;
```
### Print function

You can use either print or out function to show your variable in console    
Input:     
```
our var;
var = 5;
out var;
var = 7;
print var;
```     
Output:
```
5
7
```
