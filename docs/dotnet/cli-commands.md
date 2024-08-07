---
title: .NET CLI (dotnet) Commands
description: A guide to useful .NET CLI (dotnet) commands, including where to run them and their purposes
---

# .NET CLI (dotnet) Commands

## Cheat Sheet

| **Command**                                      | **Run from**                            | **Description**                                                                                                                                              |
| ------------------------------------------------ | --------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `dotnet restore`                                 | Solution folder                         | Restores the NuGet packages for all the projects in the solution.                                                                                            |
| `dotnet build`                                   | Solution folder                         | Builds all the projects in the solution. Implicitly calls `dotnet restore` before building. To build in `Release` mode, use the `-c` switch.                 |
| `dotnet run`                                     | Project folder                          | Runs the project in the current folder. Implicitly calls `dotnet restore` and `dotnet build` before running the app. Use during development to run your app. |
| `dotnet publish -c Release -o <Folder>`          | Project folder                          | Publishes the project to the provided folder. Copies all the required files to the provided output folder so it can be deployed.                             |
| `dotnet test`                                    | Solution folder                         | Restores packages, builds, and executes any unit tests found in the solution. Requires the .NET Test SDK and a testing framework adapter.                    |
| `dotnet add package <Name>`                      | Project folder                          | Install the NuGet package with the provided name in the current project. Optionally specify a package version—e.g., `-v 2.1.0`.                              |
| `dotnet new --list`                              | Anywhere                                | View all the installed templates for creating ASP.NET Core apps, libraries, test projects, solution files, and many more.                                    |
| `dotnet new <Template> -o <Folder> -n <NewName>` | Anywhere; empty folder for new projects | Create a new item from the provided template, specifying the folder in which to place the item and the name for the item.                                    |
| `dotnet --info`                                  | Anywhere                                | Displays information about the .NET SDKs and runtimes installed on your machine.                                                                             |
| `dotnet jwt create`                              | Project folder                          | Creates a JWT for calling API applications protected with OAuth. You can also customize the token and view existing tokens.                                  |
| `dotnet ef add migrations <Name>`                | Project folder                          | Adds a new EF Core migration to the project with the provided name. Requires the EF Core global tool.                                                        |
| `dotnet ef database update`                      | Project folder                          | Apply pending EF Core migrations to a database. Warning: this will modify your database!                                                                     |

Based on [ASP.NET Core in Action, Third Edition](https://www.manning.com/books/asp-net-core-in-action-third-edition).

## Creating a New Solution and Adding Projects

**Step-by-Step Guide:**

1.  **Create a new solution:**

        dotnet new sln -o MySolution -n MySolution

2.  **Create a new console project:**

        dotnet new console -o MySolution/MyProject -n MyProject

3.  **Add the project to the solution:**

        cd MySolution
        dotnet sln MySolution.sln add MyProject/MyProject.csproj

4.  **List projects in the solution:**

        dotnet sln MySolution.sln list

**Structure:**

```plaintext
MySolution/
│
├── MySolution.sln
├── Project1/
│   └── Project1.csproj
└── Project2/
    └── Project2.csproj
```

## Enabling Command Autocomplete

To enable autocompletion for .NET CLI commands, refer to the following resources:

- [Enable tab autocompletion for .NET CLI](https://learn.microsoft.com/en-us/dotnet/core/tools/enable-tab-autocomplete): Official guide to enabling autocomplete for .NET CLI.
- [dotnet Plugin for Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dotnet): Oh My Zsh plugin that provides autocompletion for `dotnet` commands.
