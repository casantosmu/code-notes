---
title: .NET CLI Commands
description: A guide to useful .NET CLI (dotnet) commands, including where to run them and their purposes.
---

# .NET CLI Commands

| **Command**                                      | **Run from**                            | **Description**                                                                                                                           |
| ------------------------------------------------ | --------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `dotnet restore`                                 | Solution folder                         | Restores the NuGet packages for all the projects in the solution.                                                                         |
| `dotnet build`                                   | Solution folder                         | Builds all the projects in the solution. To build in `Release` mode, use the `-c` switch.                                                 |
| `dotnet run`                                     | Project folder                          | Runs the project in the current folder. Use during development to run your app.                                                           |
| `dotnet publish -c Release -o <Folder>`          | Project folder                          | Publishes the project to the provided folder. Copies all the required files to the provided output folder so it can be deployed.          |
| `dotnet test`                                    | Solution folder                         | Restores packages, builds, and executes any unit tests found in the solution. Requires the .NET Test SDK and a testing framework adapter. |
| `dotnet add package <Name>`                      | Project folder                          | Install the NuGet package with the provided name in the current project. Optionally specify a package version—e.g., `-v 2.1.0`.           |
| `dotnet new --list`                              | Anywhere                                | View all the installed templates for creating ASP.NET Core apps, libraries, test projects, solution files, and many more.                 |
| `dotnet new <Template> -o <Folder> -n <NewName>` | Anywhere; empty folder for new projects | Create a new item from the provided template, specifying the folder in which to place the item and the name for the item.                 |
| `dotnet --info`                                  | Anywhere                                | Displays information about the .NET SDKs and runtimes installed on your machine.                                                          |
| `dotnet jwt create`                              | Project folder                          | Creates a JWT for calling API applications protected with OAuth. You can also customize the token and view existing tokens.               |
| `dotnet ef add migrations <Name>`                | Project folder                          | Adds a new EF Core migration to the project with the provided name. Requires the EF Core global tool.                                     |
| `dotnet ef database update`                      | Project folder                          | Apply pending EF Core migrations to a database. Warning: this will modify your database!                                                  |

From [ASP.NET Core in Action, Third Edition](https://www.manning.com/books/asp-net-core-in-action-third-edition).
