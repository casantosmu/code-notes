---
title: SQL Standard Functions
description: Overview of SQL standard functions, covering aggregation, text, mathematical, date/time, type conversion, flow control, and analytical functions with examples.
---

# SQL Standard Functions

| Category            | Function            | Description                                                                                   |
| ------------------- | ------------------- | --------------------------------------------------------------------------------------------- |
| **Aggregation**     | `AVG()`             | Calculates the average of a set of values.                                                    |
|                     | `COUNT()`           | Counts the number of rows in a result set.                                                    |
|                     | `MAX()`             | Returns the maximum value in a set of values.                                                 |
|                     | `MIN()`             | Returns the minimum value in a set of values.                                                 |
|                     | `SUM()`             | Sums up the values in a set of data.                                                          |
| **Text**            | `CHAR_LENGTH()`     | Returns the length of a string in characters.                                                 |
|                     | `LOWER()`           | Converts a string to lowercase.                                                               |
|                     | `UPPER()`           | Converts a string to uppercase.                                                               |
|                     | `SUBSTRING()`       | Extracts a substring from a string.                                                           |
|                     | `TRIM()`            | Removes leading and trailing spaces or specified characters from a string.                    |
| **Mathematical**    | `ABS()`             | Returns the absolute value of a number.                                                       |
|                     | `CEILING()`         | Rounds a number up to the nearest integer.                                                    |
|                     | `FLOOR()`           | Rounds a number down to the nearest integer.                                                  |
|                     | `MOD()`             | Returns the remainder of a division operation.                                                |
| **Date and Time**   | `CURRENT_DATE`      | Returns the current date.                                                                     |
|                     | `CURRENT_TIME`      | Returns the current time.                                                                     |
|                     | `CURRENT_TIMESTAMP` | Returns the current date and time.                                                            |
|                     | `EXTRACT()`         | Extracts a specific part of a date, such as year, month, day, etc.                            |
| **Type Conversion** | `CAST()`            | Converts a value from one data type to another.                                               |
|                     | `CONVERT()`         | Similar to `CAST()`, converts a value from one data type to another, with variations by DBMS. |
| **Flow Control**    | `CASE`              | Conditional expression that returns a value based on different conditions.                    |
|                     | `COALESCE()`        | Returns the first non-null value in a list of arguments.                                      |
| **Analytical**      | `ROW_NUMBER()`      | Assigns a unique row number to each row in a result set, based on the specified order.        |
|                     | `RANK()`            | Assigns a rank to each row in a result set, with possible ties.                               |
|                     | `DENSE_RANK()`      | Similar to `RANK()`, but without gaps in the rank for tied values.                            |

Reference: [List of SQL reserved words - Wikipedia](https://en.wikipedia.org/wiki/List_of_SQL_reserved_words)
