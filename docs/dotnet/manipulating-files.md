---
title: Manipulating Files in .NET | C# Cheat Sheet
description: Quick reference guide for working with files and directories in .NET Framework using C#.
---

# Manipulating Files in .NET | C# Cheat Sheet

## Enumerating Directories

### List All Directories

To list all directories in a given folder:

```csharp
IEnumerable<string> listOfDirectories = Directory.EnumerateDirectories("dir");

foreach (var dir in listOfDirectories) {
    Console.WriteLine(dir);
}
```

### List All Files in a Directory

To list all files within a specific directory:

```csharp
IEnumerable<string> files = Directory.EnumerateFiles("dir");

foreach (var file in files) {
    Console.WriteLine(file);
}
```

### Recursively Enumerate Files in All Subdirectories

To search through a directory and its subdirectories for specific files:

```csharp
IEnumerable<string> allFilesInAllFolders = Directory.EnumerateFiles("dir", "*.txt", SearchOption.AllDirectories);

foreach (var file in allFilesInAllFolders) {
    Console.WriteLine(file);
}
```

## Working with Directories

### Get Current Directory

To get the path of the current working directory:

```csharp
Console.WriteLine(Directory.GetCurrentDirectory());
```

### Accessing Special Folders

To retrieve paths to special system folders in a cross-platform way:

```csharp
Console.WriteLine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments));
```

### Creating Directories

To create a directory and any necessary subdirectories:

```csharp
Directory.CreateDirectory(Path.Combine(Directory.GetCurrentDirectory(), "dir", "subDir", "newDir"));
```

### Check If Directory Exists

To check if a specific directory exists:

```csharp
Console.WriteLine(Directory.Exists("dir")); // outputs: "true"
```

## Working with File Paths

### Combining Paths

To correctly combine multiple path segments:

```csharp
Console.WriteLine(Path.Combine("dir", "subDir")); // outputs: dir/subDir
```

### Get File Extension

To retrieve the file extension of a given filename:

```csharp
Console.WriteLine(Path.GetExtension("greeting.txt")); // outputs: .txt
```

## Reading and Writing Files

### Reading a File

To read all text from a file:

```csharp
Console.WriteLine(File.ReadAllText("greeting.txt"));
```

### Writing to a File

To create or overwrite a file with specified content:

```csharp
File.WriteAllText("greeting.txt", "Hello World Kim!");
```

### Appending to a File

To append data to an existing file, or create it if it doesn’t exist:

```csharp
File.AppendAllText("greeting.txt", $"Hello World Lucas!{Environment.NewLine}");
```

## Working with File Information

### Getting File Info

To get detailed information about a file:

```csharp
FileInfo info = new FileInfo("greeting.txt");

Console.WriteLine($"Full Name: {info.FullName}");
Console.WriteLine($"Directory: {info.Directory}");
Console.WriteLine($"Extension: {info.Extension}");
Console.WriteLine($"Create Date: {info.CreationTime}");
```
