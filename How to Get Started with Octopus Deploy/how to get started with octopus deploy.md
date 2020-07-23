When you think about deployments, you may think about just deploying software to an environment, whether that be on-prem or in the cloud. How about if you want to practice continuous delivery and deployment for both software development and infrastructure? 

In this blog post, you will learn all about getting an [Octopus Deploy](https://octopus.com/) environment up and running so you can automate an entire workflow.

## Prerequisites

To follow along in this blog post, you should have the following:

- A stable internet connection as this blog post will use Octopus Deploy cloud (free for up to 10 or less targets).
- Knowledge of continuous deployment and continuous delivery. If you are just getting started with continuous deployment and delivery, please check out a getting started guide found [here](https://digital.ai/resources/devops-101/what-is-devops).

## What is Octopus Deploy?

Have you ever found yourself trying out an automation tool and it simply did not meeting your expectations? Whether the packaging of an application didn't work as expected, the deployments to a certain environment was very cumbersome, or the infrastructure automation was too complicated? Octopus Deploy provides the ability to take all of those components that may seem hard in other products and make them more efficient.

Octopus Deploy is a deployment and release management automation tool for both infrastructure and software. What makes Octopus Deploy unique is that it isn't like other traditional automation tools. Typically, most platforms do software deployment very well or infrastructure deployment very well. With Octopus, it's a one-stop shop for both infrastructure and software automation.

Octopus Deploy allows you to create a server to host a deployment environment a few different ways:

- Octopus Cloud, which is a cloud-hosted service that Octopus manages for you.
- On-prem installation, which you can install on a Windows server.
- Containerization-hosted installation. You can use the [Octopus Deploy Docker image](https://hub.docker.com/r/octopusdeploy/octopusdeploy) and run the full platform in a container. Both Windows and Linux images are available.

## Taking a First Look at Octopus Deploy Cloud

Octopus gives users and customers many ways to deploy the platform. The easiest and most efficient option when you are starting out is by using Octopus Cloud. Octopus Cloud is free for up to ten deployment targets, which means you have plenty of wiggle room to get environments up and running while also learning about Octopus for free.

![](images/1.png)

Some of the key features of Octopus Deploy Cloud are:

- Maintenance and monitoring, even on the free version.
- No servers that you have to maintain. Instead, Octopus Deploy manages all of that for you. You worry about the automated deployments and they worry about the maintenance.
- Regions around the world where Octopus Deploy cloud is hosted including United States, Europe, and Australia.
- Customer service and support from a plethora of continuous delivery architects and engineers.

## Setting up an Octopus Deploy Account

In this section you'll learn how to get an Octopus Deploy account up and running. With just a few steps, you will have the deployment automation platform set up at zero cost to you.

To get started, open up a web browser and go to the Octopus Deploy home page found [here](https://octopus.com/).

Once in the UI, click the blue **Sign up** button shown in the screenshot below.

![](images/2.png)

The sign up page will bring you to a **Get started with Octopus Deploy** page. You will have to type in the following information:

- Claim your site - This will be a unique FQDN, so it cannot be a name that already exists.
- Region - Choose the region that you wish the Octopus Deploy cloud environment to exist in.
- Company - You can either put in your company name or your name here.
- Full name which includes your first and last name.
- Email - This will be the email address that you use to sign into Octopus Deploy with. Think of this as a root account.
- Password

Once you type in all of the information, click the blue **Agree, deploy my Octopus!** button.

![](images/3.png)

The Octopus Deploy instance will start creating and will be ready in 1-2 minutes.

## First Look around the UI

In the previous section you learned how to create an Octopus Deploy account and create an Octopus Deploy hosted cloud server. In this section, you will take a first look around the UI and see the different options available.

In a web browser. navigate to the Octopus Deploy web portal URL that you set up in the previous section. You will be prompted with a sign-in page as shown in the screenshot below. Click the green **Sign in with your Octopus ID** button**.**

![](images/4.png)

Sign in with your email address and password that you used to create the account. Once you type in the email and password, click the blue **Sign in** button as shown in the screenshot below.

![](images/5.png)

You will now be signed in and have the ability to navigate the Octopus Deploy platform.

![](images/6.png)

## Octopus Deploy Command-Line Interface

In the previous section you learned how to sign into the UI and take a first look at the Octopus Deploy platform, which is a great place to get started and learn about the different options available to you in the web portal.

If you like being on the command line in a terminal, you will be happy to hear that Octopus also has a command-line interface, with which you can interact with all of the components available inside of Octopus Deploy.

### To install on Windows

To install the Octopus Deploy command-line interface on Windows, you can use Chocolatey, a package manager for Windows which you can find [here](https://chocolatey.org/).

For getting started with the Octopus Deploy command-line and all of the switches available, check out this resource: https://octopus.com/docs/octopus-rest-api/octopus-cli

To install the Octopus CLI, open up a terminal or PowerShell window and type the following command:

```bash
choco install octopustools
```

### To install on MacOS

Installing the Octopus Deploy command-line interface for MacOS can be done with homebrew, a MacOS package manager which you can find [here](https://brew.sh/).

To install the Octopus CLI, open up a terminal on your Mac and type the following commands:

```bash
brew tap octopusdeploy/taps
brew install octopuscli
```

## Conclusion

Octopus Deploy is a go-to tool for any Windows and Linux environment for automation deployments. You can deploy in Azure and AWS as well as on-prem. Using Octopus Deploy, you have the ability to host the platform both on-prem, in the cloud, and using the cloud hosted service provided by Octopus. Not only do you get a software deployment automation tool, but an infrastructure automation tool for any scenario.