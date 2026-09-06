# String Operations in Bash

## Description

This example shows how to work with strings in Bash and combine two variables into one string.

## Code

```bash
#!/bin/bash

first="Umida"
last="Kutimova"
full_name="$first $last"

echo "Full name: $full_name"
```

## Explanation

### String Variables

```bash
first="Umida"
last="Kutimova"
```

Two string variables are created:

* `first` stores the first name
* `last` stores the last name

### Combining Strings

```bash
full_name="$first $last"
```

This combines the values of `first` and `last` with a space between them.

The result is:

```text
Umida Kutimova
```

### Printing the Result

```bash
echo "Full name: $full_name"
```

The `echo` command prints the value of `full_name`.

## How to Run

Make the script executable:

```bash
chmod +x string_operations.sh
```

Run the script:

```bash
./string_operations.sh
```

## Output

```text
Full name: Umida Kutimova
```

## What I Learned

* How to create string variables in Bash
* How to use variables inside another variable
* How to combine strings
* How to use `$` to access variable values
* How to print string values with `echo`
