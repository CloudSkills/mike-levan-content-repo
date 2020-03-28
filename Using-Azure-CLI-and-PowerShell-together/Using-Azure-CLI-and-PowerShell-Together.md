Most articles that are written, regardless of who writes them, either focus on PowerShell or Azure CLI. Two of the most popular ways to automate Azure workloads are always presented separately. Why? Azure CLI and PowerShell work well together right out of the box for all Azure services. How can we bring the two automation tools together?

## Prerequisites

To follow along with this blog post you will need:

- PowerShell Core 7.0 or above which you can find [here](https://github.com/PowerShell/PowerShell) for any operating system.
- Azure Command-Line Interface (AZ CLI) installed and configured with `az login`. You can find the install and configuration [here](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest).
- A text editor. Although not a requirement, this blog post uses Visual Studio Code (VS Code) version 1.42.1 or above.
- A beginner to intermediate level knowledge of PowerShell.

## The Goal

The purpose of this blog post is to teach you how to use PowerShell and AZ CLI together in the same script. Most developers or IT professionals use these two automation tools separately. Using them together has a ton of benefits, for example, if you need to loop through a list of virtual machines that you receive from AZ CLI. AZ CLI, by default, doesn't have a `for loop` mechanism out of the box, so integrating PowerShell is the perfect fit. Combining PowerShell and AZ CLI works without any extra tools or downloads needed and today you will take a hands-on approach seeing that first-hand.

![Getting Ready](images/1.jpg)

## The Scenario

The DevOps department received a request to confirm that the virtual machines in use need to be as large as they are and if not, shrink the size to save costs.

In this scenario you are a user that needs to list out all virtual machines for the organizations and for each virtual machine, you need to know what the size of the VM is to ensure the size is still needed if it's large. After you get the sizes, you can bring the list to management. However, doing this manually will take hours or days. You want a way to automate this process. 

## The Code

While understanding why putting PowerShell and AZ CLI together is useful, it's way more fun seeing it in action and doing it first-hand. In this section, it's time to start writing the code for the scenario per the section **The Scenario** to list the virtual machines and loop through them to retrieve the sizes.

Open up a text editor to start writing some code in the next sections.

### PowerShell Function

The idea behind any piece of code that you write should be that not only you can use it, but others can use it as well. Putting the code inside of a PowerShell function will allow the code to become a reusable tool.

All PowerShell tools should be a function so they can be used by others easily and imported similar to a module. Name the function `List-VMSizes` by writing the following code. Note that the `List-VMSizes` is not a requirement, but that's what will be used throughout this blog post.

```
    function List-VMSizes {
    
    }
```

### Parameters

For the code to be reusable, you need to use PowerShell parameters that are passed in at runtime. This ensures the PowerShell and AZ CLI code can be used in any environment. 

The parameters below will be used for passing in the resource group name to search in for the virtual machines at runtime. Write the following parameter below as a string.

```
    param (
    [string]$RGName
    )
```

![Parameters](images/2.jpg)

### Processing Input

To check for prerequisites that are needed prior to running code in any PowerShell development scenario, run the check in a `begin` block. Following the `begin` block comes the `process` and `end` block. The process block runs once for core-code and the end block is used for closing components like connections. An example would be closing a connection to a SQL database.

The following code will be used to run a `variable` and `if` statement to check if the Azure CLI is logged in. If the Azure CLI is not logged in to an Azure account, the script will exit because the task to retrieve virtual machine sizes will fail if it tries to run. Add the following code under the PowerShell parameters written in the previous section. The process block will be filled in next.

```
    begin {
            $az = az account show
            if(-not($az)) {
                Write-Warning 'No Azure account is signed in. Please run az login at a PowerShell Core prompt to log into Azure with aZ CLI'
    			      exit  
    			}
        }
    
        process {
    
        }
    
        end {
    
        }
```

![Parameters](images/3.jpg)

### Core Code

In the `process` block comes the core code. The core code is the job of the function, or what the function will produce. In this case, the *job* is to list virtual machine sizes*.*

The following code will be used to list the virtual machines and the sizes. Add the following code inside of the process block to create a `variable` and print out all VMs and sizes inside of the resource group that will be specified when you run the code in the upcoming section **Running the Code**.

```
    process {
            $vms = az vm list -g $RGName | ConvertFrom-Json | select name, HardwareProfile
            $vms
            
            }
```

![Parameters](images/4.jpg)

### Running the Code

Now that you have created the necessary code to list out all virtual machines and sizes using both PowerShell and AZ CLI, it's time to run the code. 

Note that the resource group you use and the output you will see is going to be different than mine because the resource groups and virtual machines that I have vs what you have will differ.

Run the following code in VS Code by write clicking it and choosing *Run selection*.

![Parameters](images/5.jpg)

Now that the code is initiated in VS Code, run the `List-VMSizes` function with the `$RGName` parameter to list out the virtual machine name and size.

```
    List-VMSizes -RGName your_resource_group_name
```

As you can see from the screenshot below, the VM name and size is printed to the screen.

![Parameters](images/6.jpg)

Congratulations! You have successfully used both PowerShell and Azure CLI together in the same script to perform an automation function.

## Conclusion

PowerShell and AZ CLI are two of the most popular automation tools in Azure. Using them together makes workloads, as you saw above, much easy because you have the power of both languages. Not only can you perform basic tasks, but you can implement logic and loops in PowerShell as well to be used with Azure CLI.

For your next challenge, try creating a virtual machine using PowerShell and Azure CLI.