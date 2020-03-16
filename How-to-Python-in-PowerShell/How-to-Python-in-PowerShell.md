We see a ton of articles and posts about getting started in *PowerShell to Python*, but how about from *Python to PowerShell*? In this blog post, you will get a hands-on approach at Python-ing in PowerShell. We will go over basics of how to run commands and scripts then get into logic and loops.

## Prerequisites

The prerequisites for following along with this post are:

- An understanding of Python from an intermediate to advanced level.
- Python3 installed which you can find [here](https://www.python.org/downloads/) for any operating system.
- PowerShell Core installed which you can find [here](https://github.com/PowerShell/PowerShell) for any operating system.
- A text editor. For this post, I am using Visual Studio Code (VS Code) version 1.42.1. VS Code can be downloaded [here](https://code.visualstudio.com/download).

## The Goal

The goal of this blog post is to take what you know about Python and use it in PowerShell. The phenomenal part about these two languages is they are great for programming and automation scripting on any platform. With that being said, it's very good to know both. In most DevOps roles, you will see the need for someone to know at least one of these languages, but it's typical that knowing both is preferable.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0f47dbe2-1241-497d-ad77-41856c9e90fe/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0f47dbe2-1241-497d-ad77-41856c9e90fe/Untitled.png)

## What is PowerShell?

Before writing PowerShell, let's talk about what it is. PowerShell is a scripting language created by Jeffrey Snover and released in November of 2006. PowerShell was created to extend the command-line interface and make easier to use. Before PowerShell, Windows sysadmins and engineers had VB Script and Batch. The idea behind PowerShell was to enhance the way Windows Sysadmins were writing automation code. In the beginning, PowerShell was looked at as a toy language, but not for long.

PowerShell became one of the top scripting and programming languages for Windows professionals. It became so popular, that most of the Windows operating systems we know today wouldn't be able to function without it. 

With PowerShell being so popular, there was one problem, it was only on Windows. With PowerShell being closed-source, there was only one way to expand, open-source the language. In 2018 PowerShell Core 6.0 was introduced. PowerShell Core is available on all platforms (Windows, OS X, Linux) and even a default installation option on Ubuntu. 

## Modules and Libraries

Without libraries in Python, the language wouldn't be very useful. In fact, it wouldn't be operational. The same goes for PowerShell. When a request is being made to a resource (Azure, Active Directory, IIS, etc.) with PowerShell, it's using some module. Think of modules in PowerShell like libraries in Python.

### Installing Modules and Libraries

When installing a library in Python, it would look something like the below.

    pip install Azure

When installing a module in PowerShell, it would look like this.

    Install-Module -Name Azure

Installing the library/module can be done for both languages at the terminal. Once the module/library is installed, it can be used across the environment.

### Importing Modules and Libraries

When importing a module in Python, it will look like the below.

    import logging

Similarly in PowerShell, you would use the `Import-Module` cmdlet.

    Import-Module Az

In PowerShell, cmdlets are structured in a Verb-Noun method. This means you'll always see cmdlets set up as Get-Something, New-Something, Set-Something, etc.

## Running Commands and Scripts

In the previous section, you saw the core functionality of any script - a module or a library. You learned how to install a PowerShell module and import a module. In this section, you'll see how to run commands and scripts.

When running a script in Python, there would be a `.py` file saved somewhere. Similar in PowerShell, but instead of the file extension being `.py`, it would be `.ps1`. Any file that has an extension of `.ps1` indicates that it is a PowerShell file. Similarly, if you see a `psm1` file extension, a psm1 is for a PowerShell module.

The below screenshot is a file saved with a `.py` extension.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/eb3ab152-5c2a-4d16-9b79-d5f9336bd2c2/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/eb3ab152-5c2a-4d16-9b79-d5f9336bd2c2/Untitled.png)

Below is a screenshot with a `.ps1` extension.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/baa3b863-644a-4e74-99df-d0221ee74e60/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/baa3b863-644a-4e74-99df-d0221ee74e60/Untitled.png)

The final extension screenshot is for a `.psm1`

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a4c2e0fa-1ef7-4751-9308-e5ffabe467d0/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a4c2e0fa-1ef7-4751-9308-e5ffabe467d0/Untitled.png)

## Output

In the previous section, you learned what file extensions are used in PowerShell. Now that you know what file extensions you need to create, it's time to write some code! The first thing you'll take a look at is output.

Output in Python is typically from the `print()`method. The print method is built into Python and similarly, in PowerShell, there is a built-in cmdlet called `Write-Output`.

In Python, you would write output in the `print()` method, run the script, and the script will look similar to the below.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/27e5db8e-0d6f-4ea5-bf57-f7886ebc4bbc/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/27e5db8e-0d6f-4ea5-bf57-f7886ebc4bbc/Untitled.png)

When creating any output in PowerShell, using the `Write-Output` cmdlet will look very similar to Python.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5d028363-f52a-4f93-86ad-440a7b570427/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5d028363-f52a-4f93-86ad-440a7b570427/Untitled.png)

## Variables

In the previous section you learned how to run code in PowerShell and create an output. How about when you don't want the output to be static? That's where variables come in.

In Python, a variable will look like the below.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/940affb6-15d8-4124-b635-e4bf972be78d/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/940affb6-15d8-4124-b635-e4bf972be78d/Untitled.png)

In PowerShell, it's the same concept, but the variable looks different because of the `$` sign.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/234500ed-afbb-46e4-83c9-4ccfebd02582/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/234500ed-afbb-46e4-83c9-4ccfebd02582/Untitled.png)

If you have used [bash](https://www.gnu.org/software/bash/manual/html_node/What-is-Bash_003f.html) in the past, PowerShell variables are very similar. In bash when calling a variable, you use a `$` sign.

## Loops

In the previous section, you took a look at defining variables in PowerShell. Now it's time to take a look at loops using `for`

In Python, a `for` loop would look something like the below.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/58e7947d-da13-436a-a78a-047896669d64/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/58e7947d-da13-436a-a78a-047896669d64/Untitled.png)

In PowerShell, `for` loops look way different. The reason why is because while Python is a white-space based language, PowerShell is a bracket-based language. Whitespacing doesn't matter in PowerShell as long as the code is in the brackets it's supposed to be in.

Below you will see an example of a `for` loop in PowerShell.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/aca85c77-2d02-40a0-a4b2-6e9eb817c358/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/aca85c77-2d02-40a0-a4b2-6e9eb817c358/Untitled.png)

If you run the above, you'll notice that this will cause an infinite loop, which means the loop will keep running until you manually stop it. When it comes to `for` loops between Python and PowerShell, as you can see there are some key differences. 

## Logic

In the previous section you took a look at `for` loops to loop through a variable. In this section you will look at some logic with `if` statements. 

Similar to the white-space vs bracket-based differences that you saw in the **Loops** section, you will see a similar trend with `if` statements.

Below is an `if` statement in Python.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/315cd88f-0219-452d-b88e-45e66b8c0cd7/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/315cd88f-0219-452d-b88e-45e66b8c0cd7/Untitled.png)

Because there is an `H` in the `hello` variable, the output prints `Hi`

In PowerShell, the output will be the same, but notice the bracket-based syntax and syntax differences.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/66f70975-f76f-4dfc-8734-02a17f1450e8/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/66f70975-f76f-4dfc-8734-02a17f1450e8/Untitled.png)

There are some key differences between the Python and PowerShell `if` statement that are very important.

The first one is in Python, the string (`'H'`) would be on the left of the if statement and the variable that you're comparing it to would be on the left. With PowerShell, it's the opposite. The variable is on the left and the string is on the right.

The second difference is if you take a look at the PowerShell string (`"H*"`) you will see a `*` which means wildcard. That tells PowerShell to search for anything with an `H`.

The third difference is the comparison operators. With Python, `in` is used and in PowerShell, `-like` is used. All operators in PowerShell start with `-` and then the operator is defined. The `-like` operator is similar to the `*` in the sense that it's a wildcard. The `-like` operator is telling PowerShell to search for anything in the `$hello` variable with an `H*`.

## Summary

In this blog post, you learned the important core concepts on how to start your PowerShell journey coming from Python. You learned how to install core modules and libraries followed by learning about the different PowerShell extensions. You finished off with seeing output, loops, and logic in the PowerShell code. PowerShell is a great next step from Python. Not only because they are set up very similar, but because both languages round out a DevOps engineer well.

Want to read more of Michael Levan's content about various scripting and DevOps topics? Visit his website [here](https://www.clouddev.engineering/).