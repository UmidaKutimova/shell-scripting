# 03. User Input

## Description

This Bash script gets input from the user and uses it in the program.

The script asks the user to enter their name and then prints a greeting.

## Code

```bash
#!/bin/bash

echo "Enter your name:"
read name

echo "Hello, $name!"
```

## Explanation

### `echo "Enter your name:"`

The `echo` command displays a message in the terminal.

Output:

```text
Enter your name:
```

### `read name`

The `read` command waits for the user to enter something.

The entered value is stored in the `name` variable.

For example, if the user enters:

```text
Ali
```

then the variable contains:

```text
name="Ali"
```

### `echo "Hello, $name!"`

The `$name` accesses the value stored in the `name` variable.

If the user entered `Ali`, the output will be:

```text
Hello, Ali!
```

## How the Script Works

1. The script asks the user to enter their name.
2. `read name` stores the input in the `name` variable.
3. `$name` retrieves the stored value.
4. `echo` prints a greeting.

## How to Run

Make the script executable:

```bash
chmod +x user_input.sh
```

Run the script:

```bash
./user_input.sh
```

You can also run it with Bash:

```bash
bash user_input.sh
```

## Example

```text
Enter your name:
Ali
Hello, Ali!
```

## What I Learned

* How to get input from the user with `read`
* How to store user input in a variable
* How to use `$variable`
* How to combine `read` and `echo`
* How to create an interactive Bash script
