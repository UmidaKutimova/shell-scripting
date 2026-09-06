# Arithmetic Operations in Bash

## Description

This example shows how to perform basic arithmetic operations in Bash using arithmetic expansion `$(( ))`.

## Code

```bash
#!/bin/bash

a=10
b=3

echo "Sum: $((a + b))"
echo "Difference: $((a - b))"
echo "Product: $((a * b))"
echo "Quotient: $((a / b))"
echo "Remainder: $((a % b))"
```

## Explanation

### Variables

```bash
a=10
b=3
```

Two variables are created:

* `a` stores `10`
* `b` stores `3`

### Arithmetic Expansion

Bash uses `$(( ))` to perform arithmetic calculations.

```bash
$((a + b))
```

This calculates the sum of `a` and `b`.

### Arithmetic Operators

| Operator | Meaning        | Example  | Result |
| -------- | -------------- | -------- | ------ |
| `+`      | Addition       | `10 + 3` | `13`   |
| `-`      | Subtraction    | `10 - 3` | `7`    |
| `*`      | Multiplication | `10 * 3` | `30`   |
| `/`      | Division       | `10 / 3` | `3`    |
| `%`      | Remainder      | `10 % 3` | `1`    |

> Bash integer division returns only the whole-number part. For example, `10 / 3` gives `3`.

## How to Run

Make the script executable:

```bash
chmod +x arithmetic.sh
```

Run the script:

```bash
./arithmetic.sh
```

## Output

```text
Sum: 13
Difference: 7
Product: 30
Quotient: 3
Remainder: 1
```

## What I Learned

* How to create numeric variables in Bash
* How to perform arithmetic operations
* How to use `$(( ))` for calculations
* How to use arithmetic operators: `+`, `-`, `*`, `/`, `%`
* How to run a Bash script from the terminal
