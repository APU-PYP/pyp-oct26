# Python Lab

Welcome! This workspace is where you will write and test the Python programs for your labs. Everything is already set up for you: Python, the testing tools and the lab commands are installed, so you can start coding straight away.

## What is this workspace?

You are working in a **codespace**: a computer in the cloud that you use through your browser. It looks like VS Code, a popular code editor, and has three main parts:

- **Explorer** (left side): the files and folders in your workspace.
- **Editor** (top right): where you read and write code.
- **Terminal** (bottom right): where you type commands. Everything in this README that looks like `this` is typed here.

Each lab exercise lives in its own **project folder**. A project folder holds your code and the tests that check it.

## Your first steps

1. Open the terminal. Type `helpme` and press Enter to see every command available. Press Enter again to go back.
2. Find the exact project name on your lab sheet.
3. Create the project, then move into it:

```
create greeting
cd greeting
```

`create` builds the folder for you:

```
greeting/
  src/greeting.py          your code
  tests/test_greeting.py   your tests
```

`greeting` is just an example. Always use the name from your lab sheet, or the tests will not match.

## Finding your way around

Your workspace grows as you add projects:

```
workspace/
  README.md          this file
  greeting/          one project per exercise
    src/
    tests/
  rectangle_area/
    src/
    tests/
```

- **`src`** (short for "source") holds the code you write. This is where you spend most of your time.
- **`tests`** holds programs that check your code and tell you what passes and what fails.
- To open a file, click it in the Explorer, or type `code src/greeting.py` in the terminal.
- You may notice that some files and folders are hidden, such as the setup for this environment. They are hidden on purpose so you do not change them by accident.

### Moving around in the terminal

The terminal is always "inside" a folder. These commands help you see where you are and move between folders:

| Command | What it does |
| --- | --- |
| `pwd` | Shows the folder you are in |
| `ls` | Lists what is in this folder |
| `cd greeting` | Goes into the `greeting` folder |
| `cd ..` | Goes back up one folder |

If something says it cannot find a file, run `pwd` and `ls` first. Being in the wrong folder is the most common cause.

## Working on an exercise

Run these from inside the project folder (for example after `cd greeting`).

| Command | What it does |
| --- | --- |
| `python src/greeting.py` | Runs your program |
| `check` | Runs every test in this project's `tests` folder |
| `check greeting` | Runs only `tests/test_greeting.py` |
| `black src` | Tidies the formatting of your code |

A typical loop looks like this:

1. Write some code in `src/greeting.py`.
2. Run it with `python src/greeting.py` and look at the output.
3. Run `check` to see whether the tests pass.
4. Read any failure message, fix your code, and repeat.

### Reading test results

`check` lists each test with `PASSED` or `FAILED`. When a test fails, read the message under it. It shows the line that failed and the value you expected compared with the value you got. A failing test is not a mistake on your part. It is a hint about what to fix next.

The starter test that `create` gives you is only a placeholder. Replace it with what your function should actually return, as described on your lab sheet.

### Starting the next exercise

Go back to the top of the workspace before you create another project:

```
cd ..
create rectangle_area
```

`create` will refuse to run inside an existing project, so this keeps projects separate.

Project names must be lowercase letters, numbers and underscores, and must start with a letter (`rectangle_area` is fine, `Rectangle Area` is not). They also cannot be Python words such as `print`.

## Tips

- Save your file before running it (`Ctrl+S`, or `Cmd+S` on a Mac). A dot on the file's tab means it is not saved yet.
- Red or yellow marks in the editor point out problems as you type. Hover over one to read it.
- Press the up arrow in the terminal to bring back your last command.
- Type the first few letters of a name and press Tab to complete it.
- Read error messages from the bottom up. The last line usually says what went wrong.
- Stuck? Run `helpme`, re-read your lab sheet, or ask your teacher.
