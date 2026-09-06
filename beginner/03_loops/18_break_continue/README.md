# Break and Continue

## 📌 Description

`break` and `continue` are used to control the execution of loops in Bash.

* `continue` — skips the rest of the **current iteration** and moves to the next iteration.
* `break` — immediately **stops the entire loop**.

This example uses both commands inside a `for` loop.

---

## 📝 Code

```bash
#!/bin/bash

for i in {1..10}; do
  if [ $i -eq 4 ]; then
    continue
  fi

  if [ $i -eq 8 ]; then
    break
  fi

  echo "i = $i"
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
* `/bin/bash` — path to the Bash program.

---

## 2. `for i in {1..10}`

```bash
for i in {1..10}; do
```

This starts a `for` loop.

### `for`

`for` starts the loop.

### `i`

`i` is the **loop variable**.

It stores the current number.

### `in`

`in` specifies the values that the loop will process.

### `{1..10}`

This is Bash **brace expansion**.

It generates:

```text
1 2 3 4 5 6 7 8 9 10
```

So the loop normally runs 10 times.

---

# 3. First `if` Statement

```bash
if [ $i -eq 4 ]; then
  continue
fi
```

This checks whether the current value of `i` is equal to `4`.

---

## `if`

```bash
if
```

`if` starts a conditional statement.

It allows Bash to make a decision.

---

## `[ $i -eq 4 ]`

```bash
[ $i -eq 4 ]
```

This is a conditional test.

### `$i`

Gets the current value of the variable `i`.

### `-eq`

`-eq` means:

**equal to**

Therefore:

```bash
[ $i -eq 4 ]
```

means:

> Is `i` equal to `4`?

Examples:

```text
3 == 4 → false
4 == 4 → true
5 == 4 → false
```

---

## `then`

```bash
then
```

`then` marks the beginning of the commands that should be executed when the condition is true.

---

## `continue`

```bash
continue
```

`continue` skips the **rest of the current iteration**.

It does **not** stop the entire loop.

When `i = 4`, Bash executes:

```bash
continue
```

and immediately moves to the next value:

```text
5
```

Therefore:

```text
i = 4
```

is **not printed**.

---

## `fi`

```bash
fi
```

`fi` marks the end of an `if` statement.

`fi` is simply `if` written backwards.

The basic structure is:

```bash
if [ condition ]; then
  commands
fi
```

---

# 4. Second `if` Statement

```bash
if [ $i -eq 8 ]; then
  break
fi
```

This checks whether `i` is equal to `8`.

If it is, Bash executes:

```bash
break
```

---

# 5. `break`

```bash
break
```

`break` immediately stops the **entire loop**.

When:

```text
i = 8
```

the condition:

```bash
[ $i -eq 8 ]
```

becomes true.

Bash executes:

```bash
break
```

and exits the `for` loop.

Therefore, numbers after `8` are never processed.

The loop does **not** continue to:

```text
9
10
```

---

# 6. `echo "i = $i"`

```bash
echo "i = $i"
```

`echo` prints text to the terminal.

`$i` is replaced by the current value of `i`.

For example:

```text
i = 3
```

produces:

```text
i = 3
```

However, this command is not executed when:

```text
i = 4
```

because `continue` skips it.

It is also not executed when:

```text
i = 8
```

because `break` stops the loop before reaching `echo`.

---

# 7. `done`

```bash
done
```

`done` marks the end of the `for` loop.

Normally, after reaching `done`, Bash moves to the next value.

However:

* `continue` skips to the next iteration.
* `break` exits the loop completely.

---

# 🔄 How the Loop Works

The loop starts with:

```text
i = 1
```

### `i = 1`

First condition:

```text
1 == 4 → false
```

Second condition:

```text
1 == 8 → false
```

So:

```text
i = 1
```

is printed.

---

### `i = 2`

```text
2 == 4 → false
2 == 8 → false
```

Output:

```text
i = 2
```

---

### `i = 3`

```text
3 == 4 → false
3 == 8 → false
```

Output:

```text
i = 3
```

---

### `i = 4`

First condition:

```text
4 == 4 → true
```

So Bash executes:

```bash
continue
```

The `echo` command is skipped.

There is **no**:

```text
i = 4
```

in the output.

The loop moves directly to `i = 5`.

---

### `i = 5`

Both conditions are false:

```text
5 == 4 → false
5 == 8 → false
```

Output:

```text
i = 5
```

---

### `i = 6`

Output:

```text
i = 6
```

---

### `i = 7`

Output:

```text
i = 7
```

---

### `i = 8`

The second condition is checked:

```text
8 == 8 → true
```

Bash executes:

```bash
break
```

The entire loop stops immediately.

Therefore, `9` and `10` are never processed.

---

# 💻 Final Output

```text
i = 1
i = 2
i = 3
i = 5
i = 6
i = 7
```

Notice:

* `4` is missing because of `continue`.
* `8` is not printed because `break` happens before `echo`.
* `9` and `10` are never reached because `break` stops the loop.

---

# 🆚 `break` vs `continue`

| Command    | What it does                |
| ---------- | --------------------------- |
| `continue` | Skips the current iteration |
| `break`    | Stops the entire loop       |

### `continue`

```bash
for i in {1..5}; do
  if [ $i -eq 3 ]; then
    continue
  fi

  echo "$i"
done
```

Output:

```text
1
2
4
5
```

Only `3` is skipped.

---

### `break`

```bash
for i in {1..5}; do
  if [ $i -eq 3 ]; then
    break
  fi

  echo "$i"
done
```

Output:

```text
1
2
```

The loop completely stops when `i` becomes `3`.

---

# 🧠 Easy Way to Remember

Think of a loop as a road:

### `continue`

```text
1 → 2 → 3 → [skip] → 5 → 6
```

It skips one iteration but keeps going.

### `break`

```text
1 → 2 → 3 → [STOP]
```

It ends the entire loop.

**Remember:**

> `continue` = skip this iteration
> `break` = stop the loop

---

# 🔢 Conditional Operators Used

| Operator | Meaning                  |
| -------- | ------------------------ |
| `-eq`    | Equal to                 |
| `-ne`    | Not equal to             |
| `-lt`    | Less than                |
| `-le`    | Less than or equal to    |
| `-gt`    | Greater than             |
| `-ge`    | Greater than or equal to |

In this example:

```bash
[ $i -eq 4 ]
```

means:

> Is `i` equal to `4`?

And:

```bash
[ $i -eq 8 ]
```

means:

> Is `i` equal to `8`?

---

# 🖥️ How to Run

Create the script:

```bash
touch break_continue.sh
```

Open it with Vim:

```bash
vim break_continue.sh
```

Add the code:

```bash
#!/bin/bash

for i in {1..10}; do
  if [ $i -eq 4 ]; then
    continue
  fi

  if [ $i -eq 8 ]; then
    break
  fi

  echo "i = $i"
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
chmod +x break_continue.sh
```

Run it:

```bash
./break_continue.sh
```

---

# 📚 Key Concepts

| Syntax     | Meaning                         |
| ---------- | ------------------------------- |
| `for`      | Starts a `for` loop             |
| `i`        | Loop variable                   |
| `{1..10}`  | Generates numbers from 1 to 10  |
| `if`       | Starts a condition              |
| `[ ]`      | Performs a conditional test     |
| `$i`       | Gets the value of `i`           |
| `-eq`      | Equal to                        |
| `then`     | Starts the conditional commands |
| `continue` | Skips the current iteration     |
| `fi`       | Ends the `if` statement         |
| `break`    | Stops the entire loop           |
| `echo`     | Prints text                     |
| `done`     | Ends the loop                   |

---

# 🎯 Practice

## Practice 1 — Skip number 5

Modify the script so that `5` is skipped:

```text
i = 1
i = 2
i = 3
i = 4
i = 6
...
```

Hint:

```bash
if [ $i -eq 5 ]; then
  continue
fi
```

---

## Practice 2 — Stop at 6

Modify the script so that the loop stops when `i` reaches `6`.

Expected output:

```text
i = 1
i = 2
i = 3
i = 4
i = 5
```

Hint:

```bash
if [ $i -eq 6 ]; then
  break
fi
```

---

## Practice 3 — Skip multiple numbers

Skip `3` and `7` using `continue`.

Expected output:

```text
i = 1
i = 2
i = 4
i = 5
i = 6
i = 8
i = 9
i = 10
```

---

# 🎯 Main Idea

The code demonstrates two different ways to control a loop:

```text
continue
    ↓
Skip current iteration
    ↓
Go to next iteration
```

while:

```text
break
    ↓
Stop entire loop
```

In this example:

```text
1 → print
2 → print
3 → print
4 → continue → skip
5 → print
6 → print
7 → print
8 → break → stop
9 → never reached
10 → never reached
```

**`continue` skips. `break` stops.**
