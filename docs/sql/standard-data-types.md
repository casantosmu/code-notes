# SQL Standard Data Types

| **Data Type**                               | **Description**                                                                   |
| ------------------------------------------- | --------------------------------------------------------------------------------- |
| **BIGINT**                                  | An 8-byte integer. Used for large numerical values.                               |
| **BIT**                                     | A fixed-length bit string.                                                        |
| **BIT VARYING**                             | A variable-length bit string.                                                     |
| **BOOLEAN**                                 | A logical Boolean value (TRUE or FALSE).                                          |
| **CHAR(n)**                                 | A fixed-length character string, padded with spaces if shorter than n characters. |
| **CHARACTER(n)**                            | Synonym for CHAR(n).                                                              |
| **CHARACTER VARYING(n)**                    | A variable-length character string with a limit of n characters.                  |
| **VARCHAR(n)**                              | Synonym for CHARACTER VARYING(n).                                                 |
| **DATE**                                    | A calendar date (year, month, day).                                               |
| **DOUBLE PRECISION**                        | A double-precision floating-point number (approximate numerical values).          |
| **INTEGER**                                 | A standard 4-byte integer.                                                        |
| **INTERVAL**                                | A time span or duration (e.g., interval '1 day').                                 |
| **NUMERIC(p, s)**                           | A number with a fixed precision (p) and scale (s). Used for exact arithmetic.     |
| **DECIMAL(p, s)**                           | Synonym for NUMERIC(p, s).                                                        |
| **REAL**                                    | A single-precision floating-point number.                                         |
| **SMALLINT**                                | A 2-byte integer.                                                                 |
| **TIME [ (p) ] [ WITHOUT TIME ZONE ]**      | A time of day (hours, minutes, seconds) with optional precision (p).              |
| **TIME [ (p) ] WITH TIME ZONE**             | A time of day with time zone information and optional precision (p).              |
| **TIMESTAMP [ (p) ] [ WITHOUT TIME ZONE ]** | A date and time without time zone information, with optional precision (p).       |
| **TIMESTAMP [ (p) ] WITH TIME ZONE**        | A date and time with time zone information, with optional precision (p).          |
| **XML**                                     | XML data. Used to store XML documents or fragments.                               |
