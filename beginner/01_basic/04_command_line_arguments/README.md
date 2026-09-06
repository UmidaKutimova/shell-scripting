# 04. Command Line Arguments

## Description

Command line arguments are values passed to a Bash script when the script is executed.

They allow us to provide information to a script without asking the user for input with `read`.

## Code

```bash
#!/bin/bash

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "Number of arguments: $#"
```

## Explanation

### `$0`

`$0` contains the name of the script.

For example:

```bash
./arguments.sh
```

The value of `$0` is:

```text
./arguments.sh
```

### `$1`

`$1` contains the **first command line argument**.

For example:

```bash
./arguments.sh Ali
```

Then:

```text
$1 = Ali
```

### `$2`

`$2` contains the **second command line argument**.

For example:

```bash
./arguments.sh Ali 25
```

Then:

```text
$1 = Ali
$2 = 25
```

### `$#`

`$#` contains the **number of command line arguments** passed to the script.

For example:

```bash
./arguments.sh Ali 25
```

There are two arguments, so:

```text
$# = 2
```

## How to Run

First, make the script executable:

```bash
chmod +x arguments.sh
```

Run the script with two arguments:

```bash
./arguments.sh Ali 25
```

## Output

```text
Script name: ./arguments.sh
First argument: Ali
Second argument: 25
Number of arguments: 2
```

## Another Example

```bash
./arguments.sh Bob 30
```

Output:

```text
Script name: ./arguments.sh
First argument: Bob
Second argument: 30
Number of arguments: 2
```

## Difference Between `read` and Command Line Arguments

With `read`, the script waits for the user to enter a value:

```bash
read name
```

With command line arguments, the values are provided when running the script:

```bash
./arguments.sh Ali 25
```

## What I Learned

* What command line arguments are
* What `$0` represents
* What `$1` represents
* What `$2` represents
* What `$#` represents
* How to pass values to a Bash script
* The difference between `read` and command line arguments
