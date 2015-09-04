# Database Management

## Context

- Database Fundamentals
  - Introduction
  - Relational Model
- Glossary

## Introduction

## The Relational Model.

The characteristics of a relation:
- Rows contain data about entity.
- Columns contain data about attributes of the entity.
- Cells of the table holds a single value.
- All entries in a column are of the same kind.
- Each column has a unique name.
- The order of the column is unimportant
- The order of the rows is unimportant
- No two rows may hold identical sets of data values.

Example of the relation structure:

    TABLE_NAME(Column1, Column2, Column3...., LastColumn)

Equivalent Sets of terms

```shell
    Table    | Row    | Column
    ---------|--------|----------
    File     | Record | Field
    ---------|--------|----------
    Relation | Tuple  | Attribute
```

## Glossary

**.NET Framework (.NET)** Microsoft’s comprehensive application development platform. It includes such components as ADO.NET and ASP.NET.

`<?php and ?>` The symbols used to indicate blocks of PHP code in Web pages.

**ACID transaction** A transaction that is *atomic*, *consistent*, *isolated*, and *durable*. An atomic transaction is one in which a set of database changes are committed as a unit; either all of them are completed or none of them are. A consistent transaction is one in which all actions are taken against rows in the same logical state. An isolated transaction is one that is protected from changes by other users. A durable transaction is one that, once committed to a database, is permanent regardless of subsequent failure. There are different levels of consistency and isolation. See transaction-level consistency and statement-level consistency. See also transaction isolation level.

**Database schema** A complete logical view of a database. It isa design on which a database and its associated applications are build.
