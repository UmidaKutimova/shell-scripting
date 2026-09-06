# Function That Returns a Value

## Code

```bash
#!/bin/bash

add() {
  echo $(($1 + $2))
}

result=$(add 5 7)
echo "Sum: $result"
```

---

## 1. `#!/bin/bash`

```bash
#!/bin/bash
```

This is the **shebang**.

* `#!` tells the system that the file should be executed by an interpreter.
* `/bin/bash` specifies the Bash interpreter.

---

# 2. Defining the Function

```bash
add() {
```

This defines a function called `add`.

### `add`

`add` is the function name.

The name describes what the function does: it **adds two numbers**.

### `()`

The parentheses indicate that `add` is a function.

In Bash, the general syntax is:

```bash
function_name() {
    commands
}
```

---

# 3. `{`

```bash
{
```

The `{` marks the beginning of the function body.

Commands written between `{` and `}` belong to the function.

---

# 4. `$1` and `$2`

Inside the function:

```bash
$1
$2
```

are **positional parameters**.

* `$1` → first argument
* `$2` → second argument

When we call:

```bash
add 5 7
```

the values become:

```text
$1 → 5
$2 → 7
```

---

# 5. Arithmetic Expansion: `$(( ))`

The function contains:

```bash
$(($1 + $2))
```

This performs arithmetic in Bash.

The general syntax is:

```bash
$((expression))
```

For example:

```bash
echo $((5 + 7))
```

Output:

```text
12
```

In our function:

```bash
$(( $1 + $2 ))
```

Bash replaces the parameters with their values.

When:

```bash
add 5 7
```

is called, the expression becomes:

```bash
$((5 + 7))
```

which produces:

```text
12
```

---

# 6. `echo`

```bash
echo $(($1 + $2))
```

`echo` prints the result to standard output.

For example:

```bash
echo $((5 + 7))
```

produces:

```text
12
```

This is important because the next part of the script can **capture this output**.

---

# 7. `}`

```bash
}
```

The `}` marks the end of the function.

The complete function is:

```bash
add() {
  echo $(($1 + $2))
}
```

---

# 8. Calling the Function

```bash
result=$(add 5 7)
```

This line calls the `add` function with two arguments:

```text
5
7
```

Therefore:

```text
$1 → 5
$2 → 7
```

The function calculates:

```text
5 + 7 = 12
```

and `echo` outputs:

```text
12
```

---

# 9. Command Substitution: `$(...)`

This part is very important:

```bash
$(add 5 7)
```

This is called **command substitution**.

It means:

> Run the command and use its output as a value.

For example:

```bash
result=$(add 5 7)
```

Bash:

1. Calls `add 5 7`
2. The function calculates `5 + 7`
3. `echo` outputs `12`
4. `$(...)` captures `12`
5. `result` receives `12`

So after this line:

```bash
result=$(add 5 7)
```

we have:

```text
result = 12
```

---

# 10. Variable Assignment

```bash
result=$(add 5 7)
```

`result` is a variable.

The value returned through the function's output is stored in it.

There must be **no spaces** around `=`.

Correct:

```bash
result=12
```

Correct:

```bash
result=$(add 5 7)
```

Incorrect:

```bash
result = 12
```

---

# 11. Using `$result`

The final line is:

```bash
echo "Sum: $result"
```

`$result` accesses the value stored in the `result` variable.

Since:

```text
result = 12
```

Bash produces:

```bash
echo "Sum: 12"
```

The output is:

```text
Sum: 12
```

---

# How the Function Works

The function is defined:

```bash
add() {
  echo $(($1 + $2))
}
```

Then it is called:

```bash
add 5 7
```

The parameters become:

```text
$1 = 5
$2 = 7
```

The calculation is:

```text
5 + 7 = 12
```

`echo` outputs:

```text
12
```

Then command substitution captures that output:

```bash
$(add 5 7)
```

The value is assigned to:

```bash
result
```

Finally:

```bash
echo "Sum: $result"
```

prints:

```text
Sum: 12
```

---

# Function Output vs `return`

In Bash, there is an important difference between **printing a value** and using the `return` command.

This example:

```bash
add() {
  echo $(($1 + $2))
}
```

does **not technically return ****`12`**** using Bash's ****`return`**** statement**.

Instead, it **prints ****`12`**, and command substitution captures the printed output:

```bash
result=$(add 5 7)
```

This is a common way to make a Bash function produce a value.

---

## `return` in Bash

Bash's `return` command is normally used to return an **exit status**.

For example:

```bash
check_number() {
  return 0
}
```

Here:

```text
0
```

means success.

Non-zero values generally indicate an error or another status.

So for returning actual data such as:

```text
12
Hello
filename.txt
```

it is common to use:

```bash
echo
```

and capture the output with:

```bash
$(...)
```

---

# General Pattern

A function that produces a value can follow this pattern:

```bash
function_name() {
    echo "value"
}

result=$(function_name)

echo "$result"
```

For example:

```bash
get_name() {
    echo "Henry"
}

name=$(get_name)

echo "Name: $name"
```

Output:

```text
Name: Henry
```

---

# Example With Two Parameters

```bash
multiply() {
    echo $(($1 * $2))
}

result=$(multiply 4 6)

echo "Product: $result"
```

The function receives:

```text
$1 → 4
$2 → 6
```

Calculation:

```text
4 × 6 = 24
```

Output:

```text
Product: 24
```

---

# Key Concepts

| Syntax    | Meaning                                |
| --------- | -------------------------------------- |
| `add()`   | Defines a function                     |
| `{ }`     | Function body                          |
| `$1`      | First function argument                |
| `$2`      | Second function argument               |
| `$(( ))`  | Arithmetic expansion                   |
| `echo`    | Prints output                          |
| `$(...)`  | Command substitution                   |
| `result=` | Assigns a value to a variable          |
| `$result` | Reads the variable's value             |
| `return`  | Returns an exit status from a function |

---

# How to Run

Save the script as:

```text
function_return_value.sh
```

Give it execute permission:

```bash
chmod +x function_return_value.sh
```

Run it:

```bash
./function_return_value.sh
```

Output:

```text
Sum: 12
```

---

# Key Takeaways

* Bash functions can accept arguments through positional parameters such as `$1` and `$2`.
* `$(( ))` performs arithmetic calculations.
* `echo` sends the calculated value to standard output.
* `$(...)` captures command output.
* `result=$(add 5 7)` stores the function's output in `result`.
* `$result` accesses the stored value.
* Bash's `return` command is primarily for **exit statuses**, not returning arbitrary data.
* For returning data from a function, `echo` + command substitution is a common approach.#!/bin/bash

  add() {

    echo $(($1 + $2))

  }

  result=$(add 5 7)

  echo "Sum: $result"
