# Dolphy

## What is Dolphy?

Dolphy is variable interpreter based on raku which allows you to do basic math stuff, operate on strings and integers and create arrays.

## Get started

1. To start working with Dolphy, make sure [You have Rakudo](https://rakudo.org/) downloaded on your computer.

2. Now, you can copy repository to your desktop using git bash by command    
`git clone https://github.com/JakubDz2208/Dolphy_Raku_Project.git `

3. When you have everything installed you can try a test program using    
`raku ./Dolphy test_program`

## Dolphy Functions

In Dolphy every variable will be printed, there is no need to type `say` or `print` to get our output. For example    
Input:    
```
a = 5;
b = 7;
c = a + b;
```
Output:    
```
5
7
12
```
### Variable declaration
To declare our variable we need to name it and after equals sign type value of variable, e.g.    
Input:
```
integer_variable = 5;
string_variable = "Hello, world";
hello = "Hello";
name = "Jakub";
hello_name = "$hello, $name";
```
Output:
```
5
Hello, world
Hello
Jakub
Hello, Jakub
```
### Math Operation
Dolphy allows you to use many of math operations like addition, substraction, multiplications and many else
- Addition and Substraction `a + b | a - b`
- Multiplications and Division `a * b | a / b`
- Exponentation `a ^ b`

### Array Declaration
You can easily create an array by using my and square brackets    
Input:
```
my a[];
a = 3, 4, 5;
```
Output:
```
[3 4 5]
```

