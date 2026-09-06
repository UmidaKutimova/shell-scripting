# 02. Variables

## Description

Variables are used to store data in a Bash script.

In this example, the script stores a name and an age in variables and then prints them to the terminal.

## Code

```bash
#!/bin/bash

name='Bob'
age=25

echo "My name is $name, I am $age years old"
```

## Explanation

### `#!/bin/bash`

This is called a **shebang**.

It tells the operating system to run the script using the Bash shell.

### `name='Bob'`

This creates a variable called `name` and assigns the text value `Bob` to it.

Single quotes can be used to store text.

### `age=25`

This creates a variable called `age` and assigns the number `25` to it.

There must be **no spaces** around the `=` sign.

Correct:

```bash
age=25
```

Incorrect:

```bash
age = 25
```

### `$name` and `$age`

The `$` symbol is used to access the value stored in a variable.

For example:

```bash
echo "$name"
```

prints:

```text
Bob
```

And:

```bash
echo "$age"
```

prints:

```text
25
```

## Single Quotes `' '` vs Double Quotes `" "`

Bash treats single and double quotes differently.

### Single Quotes `' '`

Single quotes preserve the text exactly as written.

For example:

```bash
echo 'My name is $name'
```

The `$name` variable is **not expanded**.

Output:

```text
My name is $name
```

### Double Quotes `" "`

Double quotes allow Bash to expand variables.

For example:

```bash
echo "My name is $name"
```

If `name='Bob'`, the output is:

```text
My name is Bob
```

Therefore, when we want to use variables inside a text string, we normally use **double quotes**.

## How the Script Works

The script first creates two variables:

```bash
name='Bob'
age=25
```

Then it uses those variables inside double quotes:

```bash
echo "My name is $name, I am $age years old"
```

Bash replaces `$name` with `Bob` and `$age` with `25`.

## How to Run

Make the script executable:

```bash
chmod +x variables.sh
```

Run the script:

```bash
./variables.sh
```

You can also run it directly with Bash:

```bash
bash variables.sh
```

## Output

```text
My name is Bob, I am 25 years old
```

## What I Learned

* How to create variables in Bash
* How to assign values to variables
* How to access variables using `$`
* The difference between single quotes `' '` and double quotes `" "`
* Single quotes do not expand variables
* Double quotes allow variables to be expanded
* There should be no spaces around `=`
* How to run a Bash script
