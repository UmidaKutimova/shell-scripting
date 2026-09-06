# Comparing Numbers

## Description

This example shows how to compare numbers in Bash using an `if` statement and the `-lt` operator.

## Code

```bash
#!/bin/bash

a=5
b=10

if [ $a -lt $b ]; then
  echo "$a is less than $b"
fi
```

## Explanation

### Number Variables

```bash
a=5
b=10
```

Two variables are created:

* `a` stores `5`
* `b` stores `10`

### Comparing Numbers

```bash
if [ $a -lt $b ]; then
```

This checks whether `a` is less than `b`.

The `-lt` operator means **less than**.

Since `5` is less than `10`, the condition is true.

### Echo

```bash
echo "$a is less than $b"
```

This prints the result when the condition is true.

## Comparison Operators

| Operator | Meaning                  |
| -------- | ------------------------ |
| `-eq`    | Equal to                 |
| `-ne`    | Not equal to             |
| `-lt`    | Less than                |
| `-le`    | Less than or equal to    |
| `-gt`    | Greater than             |
| `-ge`    | Greater than or equal to |

## How to Run

Make the script executable:

```bash
chmod +x comparing_numbers.sh
```

Run the script:

```bash
./comparing_numbers.sh
```

## Output

```text
5 is less than 10
```

## What I Learned

* How to compare numbers in Bash
* How to use `if` statements
* How to use the `-lt` comparison operator
* How to use comparison operators such as `-eq`, `-gt`, and `-lt`
