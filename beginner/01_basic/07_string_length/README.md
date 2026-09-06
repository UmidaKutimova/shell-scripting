# String Length

## Description

This example shows how to find the length of a string in Bash.

## Code

```bash
#!/bin/bash

text="Hello World"
echo "String length: ${#text}"
```

## Explanation

### String Variable

```bash
text="Hello World"
```

The variable `text` stores the string `"Hello World"`.

### Finding String Length

```bash
${#text}
```

The `${#text}` syntax returns the number of characters in the string.

For example:

```text
Hello World
```

contains **11 characters**, including the space.

### Printing the Result

```bash
echo "String length: ${#text}"
```

The `echo` command prints the length of the string.

## How to Run

Make the script executable:

```bash
chmod +x string_length.sh
```

Run the script:

```bash
./string_length.sh
```

## Output

```text
String length: 11
```

## What I Learned

* How to store a string in a variable
* How to find the length of a string
* How to use `${#variable}`
* How spaces are counted as characters
* How to display the result with `echo`
