# Function with a Parameter

## Code

```bash
#!/bin/bash

greet() {
    echo "Hello, $1!"
}

greet "Henry"
greet "Isabella"
```

---

## 1. `#!/bin/bash`

```bash
#!/bin/bash
```

This is the **shebang**.

* `#!` tells the operating system which interpreter should execute the script.
* `/bin/bash` specifies that the script should be executed using **Bash**.

---

## 2. Defining the Function

```bash
greet() {
```

This line starts a function definition.

### `greet`

`greet` is the **function name**.

We can choose a meaningful name for a function depending on what it does.

For example:

```bash
greet
calculate
show_message
check_file
```

### `()`

The parentheses indicate that `greet` is a function.

In Bash, a function can be defined using:

```bash
function_name() {
    commands
}
```

The parentheses are empty because this function does not define named parameters inside the parentheses.

---

## 3. `{`

```bash
{
```

The `{` marks the beginning of the function body.

Everything between `{` and `}` belongs to the function.

Example:

```bash
greet() {
    echo "Hello"
}
```

The command inside the braces is executed when the function is called.

---

## 4. `echo`

```bash
echo "Hello, $1!"
```

`echo` prints text to the terminal.

For example:

```bash
echo "Hello"
```

Output:

```text
Hello
```

---

## 5. `$1` — The First Parameter

The important part of this example is:

```bash
$1
```

`$1` represents the **first argument passed to the function**.

When we call:

```bash
greet "Henry"
```

the value `"Henry"` becomes `$1`.

Therefore:

```bash
echo "Hello, $1!"
```

becomes:

```bash
echo "Hello, Henry!"
```

and the output is:

```text
Hello, Henry!
```

When we call:

```bash
greet "Isabella"
```

`$1` becomes `"Isabella"`.

Therefore:

```bash
echo "Hello, Isabella!"
```

---

## 6. `}`

```bash
}
```

The `}` marks the **end of the function body**.

Everything between:

```bash
{
```

and:

```bash
}
```

belongs to the function.

---

# 7. Calling the Function

After defining the function, we call it:

```bash
greet "Henry"
```

Here:

* `greet` → function name
* `"Henry"` → argument passed to the function

The argument becomes `$1`.

So:

```bash
greet "Henry"
```

produces:

```text
Hello, Henry!
```

---

## 8. Calling the Function a Second Time

```bash
greet "Isabella"
```

This calls the same function again.

This time:

```text
$1 = Isabella
```

So the output becomes:

```text
Hello, Isabella!
```

---

# How the Function Works

The script first defines the function:

```bash
greet() {
    echo "Hello, $1!"
}
```

At this point, Bash knows what `greet` should do.

Then we call it:

```bash
greet "Henry"
```

Bash passes `"Henry"` as the first argument.

```text
$1 → Henry
```

The function executes:

```bash
echo "Hello, $1!"
```

Output:

```text
Hello, Henry!
```

Then we call:

```bash
greet "Isabella"
```

Now:

```text
$1 → Isabella
```

Output:

```text
Hello, Isabella!
```

---

# Output

Running the script produces:

```text
Hello, Henry!
Hello, Isabella!
```

---

# Positional Parameters in Bash Functions

Bash functions can receive multiple arguments.

The most common positional parameters are:

| Parameter | Meaning             |
| --------- | ------------------- |
| `$1`      | First argument      |
| `$2`      | Second argument     |
| `$3`      | Third argument      |
| `$4`      | Fourth argument     |
| `$#`      | Number of arguments |
| `$@`      | All arguments       |

For example:

```bash
show_info() {
    echo "Name: $1"
    echo "Age: $2"
}

show_info "Henry" 25
```

Here:

```text
$1 → Henry
$2 → 25
```

Output:

```text
Name: Henry
Age: 25
```

---

# General Syntax

A function with one parameter can be written as:

```bash
function_name() {
    echo "Value: $1"
}

function_name "some_value"
```

A function with multiple parameters:

```bash
function_name() {
    echo "First: $1"
    echo "Second: $2"
}

function_name "value1" "value2"
```

---

# Function Definition vs Function Call

### Function definition

```bash
greet() {
    echo "Hello, $1!"
}
```

This tells Bash **what the function does**.

### Function call

```bash
greet "Henry"
```

This tells Bash to **execute the function** with `"Henry"` as its first argument.

---

# Important Concepts

### Function

A reusable block of commands.

```bash
greet() {
    echo "Hello"
}
```

### Parameter

A value received by a function.

```bash
$1
```

represents the first argument.

### Argument

A value passed when calling the function.

```bash
greet "Henry"
```

`"Henry"` is the argument.

### `$1`

The first positional parameter.

```bash
echo "$1"
```

### `{ }`

Defines the beginning and end of the function body.

```bash
{
    commands
}
```

### `echo`

Prints text to the terminal.

```bash
echo "Hello"
```

---

# How to Run

Save the script as:

```text
function_parameter.sh
```

Give it execute permission:

```bash
chmod +x function_parameter.sh
```

Run it:

```bash
./function_parameter.sh
```

Expected output:

```text
Hello, Henry!
Hello, Isabella!
```

---

# Key Takeaways

* `greet()` defines a Bash function.
* `{` starts the function body.
* `}` ends the function body.
* `greet "Henry"` calls the function.
* `"Henry"` is passed as an argument.
* `$1` receives the first argument.
* The same function can be called multiple times with different arguments.
* Function parameters make functions **reusable and flexible**.
