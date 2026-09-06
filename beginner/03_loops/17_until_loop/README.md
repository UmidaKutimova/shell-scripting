# Until Loop

## 📌 Description

An `until` loop repeatedly executes a block of code **until a condition becomes true**.

Unlike a `while` loop, an `until` loop continues while its condition is **false**.

In this example, the loop starts from `1` and continues until `i` becomes greater than `5`.

---

## 📝 Code

```bash
#!/bin/bash

i=1

until [ $i -gt 5 ]; do
  echo "Number: $i"
  i=$((i + 1))
done
```

---

# 🔍 Code Explanation

## 1. `#!/bin/bash`

```bash
#!/bin/bash
```

This is called a **shebang**.

It tells the operating system to execute the script using **Bash**.

* `#!` — identifies the interpreter.
* `/bin/bash` — the path to the Bash program.

---

## 2. `i=1`

```bash
i=1
```

This creates a variable named `i` and assigns the value `1`.

Here:

* `i` — variable name.
* `=` — assignment operator.
* `1` — value assigned to the variable.

There must be **no spaces** around `=`.

Correct:

```bash
i=1
```

Incorrect:

```bash
i = 1
```

---

# 3. `until`

```bash
until
```

`until` starts an **until loop**.

It means:

> Keep executing the loop **until the condition becomes true**.

This is the main difference from `while`.

### `while`

```bash
while [ condition ]; do
```

The loop continues while the condition is **true**.

### `until`

```bash
until [ condition ]; do
```

The loop continues while the condition is **false**.

---

# 4. `[ $i -gt 5 ]`

```bash
[ $i -gt 5 ]
```

This is the condition that Bash checks before every iteration.

---

## `[` and `]`

```bash
[ $i -gt 5 ]
```

These are used to perform a **conditional test** in Bash.

Spaces are required around the brackets.

Correct:

```bash
[ $i -gt 5 ]
```

Incorrect:

```bash
[$i -gt 5]
```

---

## `$i`

```bash
$i
```

The `$` tells Bash to use the **value stored in the variable** `i`.

For example:

```bash
i=3
```

Then:

```bash
$i
```

represents:

```text
3
```

---

## `-gt`

```bash
-gt
```

`-gt` means:

**greater than**

So:

```bash
$i -gt 5
```

means:

> Is `i` greater than `5`?

Examples:

```text
1 > 5 → false
3 > 5 → false
5 > 5 → false
6 > 5 → true
```

---

# 5. `;`

```bash
until [ $i -gt 5 ]; do
```

The semicolon separates the condition from the `do` keyword when they are written on the same line.

The code can also be written as:

```bash
until [ $i -gt 5 ]
do
  echo "Number: $i"
  i=$((i + 1))
done
```

Both forms are valid.

---

# 6. `do`

```bash
do
```

`do` marks the beginning of the **loop body**.

The commands between `do` and `done` are executed while the `until` condition is false.

---

# 7. `echo "Number: $i"`

```bash
echo "Number: $i"
```

`echo` prints text to the terminal.

`$i` is replaced with the current value of `i`.

For example, when:

```text
i=1
```

the command prints:

```text
Number: 1
```

---

# 8. `i=$((i + 1))`

```bash
i=$((i + 1))
```

This increases the value of `i` by `1`.

### `i=`

Assigns a new value to the variable.

### `$(( ))`

This is Bash **arithmetic expansion**.

It allows Bash to perform mathematical calculations.

For example:

```bash
echo $((2 + 3))
```

Output:

```text
5
```

### `i + 1`

This means:

> Take the current value of `i` and add `1`.

So:

```text
i = 1
```

becomes:

```text
i = 2
```

Then:

```text
i = 2
```

becomes:

```text
i = 3
```

and so on.

---

# 9. `done`

```bash
done
```

`done` marks the **end of the loop**.

After reaching `done`, Bash goes back to the `until` condition and checks it again.

---

# 🔄 How the Loop Works

The most important point is:

> **An `until` loop continues while its condition is false.**

The initial value is:

```text
i = 1
```

Bash checks:

```text
1 > 5
```

The result is:

```text
false
```

Because the condition is false, the loop runs.

Output:

```text
Number: 1
```

Then:

```text
i = 2
```

---

### Second iteration

Bash checks:

```text
2 > 5
```

Result:

```text
false
```

The loop continues.

Output:

```text
Number: 2
```

Then:

```text
i = 3
```

---

### Third iteration

Bash checks:

```text
3 > 5
```

Result:

```text
false
```

Output:

```text
Number: 3
```

Then:

```text
i = 4
```

---

### Fourth iteration

Bash checks:

```text
4 > 5
```

Result:

```text
false
```

Output:

```text
Number: 4
```

Then:

```text
i = 5
```

---

### Fifth iteration

Bash checks:

```text
5 > 5
```

Result:

```text
false
```

The loop continues.

Output:

```text
Number: 5
```

Then:

```text
i = 6
```

---

### Final check

Bash checks:

```text
6 > 5
```

Result:

```text
true
```

Now the `until` condition is true, so the loop **stops**.

---

# 💻 Final Output

```text
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

---

# 🆚 `while` vs `until`

These two loops are closely related.

### `while`

```bash
while [ $i -le 5 ]; do
  echo "Number: $i"
  i=$((i + 1))
done
```

Meaning:

> Continue **while** `i` is less than or equal to `5`.

### `until`

```bash
until [ $i -gt 5 ]; do
  echo "Number: $i"
  i=$((i + 1))
done
```

Meaning:

> Continue **until** `i` becomes greater than `5`.

Both produce:

```text
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

The conditions are logically opposite.

---

# 🧠 Simple Way to Remember

### `while`

```text
Condition TRUE → Continue
Condition FALSE → Stop
```

### `until`

```text
Condition FALSE → Continue
Condition TRUE → Stop
```

A useful rule:

> **`while` waits for false. `until` waits for true.**

---

# 🔢 Common Numeric Operators

| Operator | Meaning                  |
| -------- | ------------------------ |
| `-eq`    | equal to                 |
| `-ne`    | not equal to             |
| `-lt`    | less than                |
| `-le`    | less than or equal to    |
| `-gt`    | greater than             |
| `-ge`    | greater than or equal to |

Examples:

```bash
[ $i -eq 5 ]
```

Means:

> Is `i` equal to `5`?

```bash
[ $i -lt 10 ]
```

Means:

> Is `i` less than `10`?

```bash
[ $i -ge 10 ]
```

Means:

> Is `i` greater than or equal to `10`?

---

# ⚠️ Updating the Variable

The value used in the condition should normally be changed inside the loop.

In this example:

```bash
i=$((i + 1))
```

changes the value of `i`.

Without this line, `i` would remain `1`.

The condition:

```text
1 > 5
```

would always be false, so the `until` loop could become an **infinite loop**.

---

# 🖥️ How to Run

Create the script:

```bash
touch until_loop.sh
```

Open it with Vim:

```bash
vim until_loop.sh
```

Add the code:

```bash
#!/bin/bash

i=1

until [ $i -gt 5 ]; do
  echo "Number: $i"
  i=$((i + 1))
done
```

Save and exit Vim:

```text
Esc
:wq
Enter
```

Make the script executable:

```bash
chmod +x until_loop.sh
```

Run the script:

```bash
./until_loop.sh
```

---

# 📚 Key Concepts

| Syntax        | Meaning                      |
| ------------- | ---------------------------- |
| `#!/bin/bash` | Tells the system to use Bash |
| `i=1`         | Creates `i` and assigns `1`  |
| `until`       | Starts an until loop         |
| `[` `]`       | Performs a conditional test  |
| `$i`          | Gets the value of `i`        |
| `-gt`         | Greater than                 |
| `do`          | Starts the loop body         |
| `echo`        | Prints text                  |
| `$(( ))`      | Performs arithmetic          |
| `i + 1`       | Adds `1` to `i`              |
| `done`        | Ends the loop                |

---

# 🎯 Practice

## Practice 1 — Count to 10

Modify the condition so that the script prints:

```text
Number: 1
Number: 2
...
Number: 10
```

Hint:

```bash
until [ $i -gt 10 ]; do
```

---

## Practice 2 — Countdown

Create an `until` loop that starts at `5` and counts down to `1`.

Expected output:

```text
Countdown: 5
Countdown: 4
Countdown: 3
Countdown: 2
Countdown: 1
```

Hint:

```bash
i=$((i - 1))
```

---

## Practice 3 — Stop at 20

Create a loop that starts at `10` and increases by `2` until it reaches `20`.

Expected output:

```text
Number: 10
Number: 12
Number: 14
Number: 16
Number: 18
Number: 20
```

Hint:

```bash
i=$((i + 2))
```

---

# 🎯 Main Idea

The basic structure of an `until` loop is:

```bash
until [ condition ]; do
  commands
done
```

Remember:

```text
Condition FALSE → Run the loop
       ↓
   Change value
       ↓
Check condition again
       ↓
Condition TRUE → Stop
```

**`until` keeps running until its condition becomes true.**
