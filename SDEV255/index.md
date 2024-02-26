---
layout: base
title: Home
course: SDEV255
---

- [Announcements](#announcements)
- [Reference](#reference)
- [Module 01](#module-01)
  - [Day 1](#day-1)
  - [Day 2](#day-2)
- [Module 02](#module-02)
  - [Day 3](#day-3)
- [Module 03](#module-03)
  - [Day 4](#day-4)
- [Module 04](#module-04)
  - [Day 5](#day-5)
- [Module 05](#module-05)
  - [Day 6](#day-6)
- [Module 06](#module-06)
  - [Day 7](#day-7)
  - [Day 8](#day-8)
- [Module 07](#module-07)
  - [Day 9](#day-9)
  - [Day 10](#day-10)
  - [Day 11](#day-11)
  - [Day 12](#day-12)
  - [Day 13](#day-13)
  - [Remaining Topics](#remaining-topics)

# Announcements

![Empty](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1DRSnSPeoqsbaeBITkzKYK8rwadli-d-JcuREzOwcnx8-Zby_iVfQxargkOG1yv45TWg&usqp=CAU)

- Readings for next lecture posted - M10: Ch 12.

# Reference

[Connecting to a Database in CodeSpaces](db_connection_codespaces.md)

# Module 01

## Day 1

No class - MLK Day

## Day 2

[Computer Orientation](../common/computer_orientation.html?course=SDEV255)

[Intro to Full Stack Development](intro_full_stack_development.md)

[Development Tools and Git](../common/git.html?course=SDEV255)

Review suggested workflow: VS Code, Live Server, Browser Dev Tools

# Module 02

## Day 3

[JavaScript: Intro](javascript_intro.md)

# Module 03

## Day 4

[JavaScript: Manipulating the DOM](javascript_manipulating_dom.md)

[JavaScript: Events](javascript_events.md)

# Module 04

## Day 5

[Understanding URLs](urls.md)

Using and configuring XAMPP

Accessing the book material

[PHP: Intro, Syntax, and Data Types](php_intro.md)

[PHP: Decisions and Loops](php_decisions_loops.md)

[PHP: Functions](php_functions.md)

# Module 05

## Day 6

[PHP: Classes and Objects](php_classes_objects.md)

# Module 06

## Day 7

[PHP: Include and Require](php_include_require.md)

[PHP: Ternary and Null Coalescing Operators](php_ternary_null_coalescing_operators.md)

[PHP: Superglobals](php_superglobal_arrays.md)

[PHP: GET](php_GET.md)

## Day 8

[Web Forms](../common/html_forms.html?course=SDEV255)

[PHP: Exception Handling](php_exception_handling.md)

# Module 07

## Day 9

[PHP: POST](php_POST.md)

[PHP: Input Sanitization](php_input_sanitization.md)

[PHP: Input Validation](php_input_validation.md)

[PHP: Filter Functions](php_filter_functions.md)

JS Async and Defer - https://i.stack.imgur.com/wfL82.png

## Day 10

Case Study: High DOP Multi-layer-cached Application for Forecasting and Data Migration

<!--
- Client needs end of day:
    - Aggregation reports for meter usage by region
    - Subset of data migrated to client data repository
- Strategy 1: Calculation Level Caching
    - During calc of forecast, an hourly time-zone mapping data structure for meter date range is used repeatedly
    - Fetch once, cache for this meter for duration of forecast
- Strategy 2: Application Level Caching
    - Weather data (shared among multiple meters), cache it for all of them until...
    - Pricing data (shared among multiple meters), cache it for all of them until...
    - Retention policy:
      - Weather changes (daily)
      - Pricing changes (daily)
      - Meter usage (monthly)
- Strategy 3: Parallel processing
    - Many instances of app running, each pulling off meters to forecast
    - Put meters that share attributes, on the same application instance so they can share cache
    - Use partitioning to spread the load within the shared database to avoid contention
- Strategy 4: Incremental forecasting
    - Weather data only really changes for next week or so
    - Forecast requirement may be for several years
    - Daily forecast for next week
    - Weekend forecast for full range
-->

[Client Side State Management](state_management.md)

JSON

## Day 11

[Session Storage](sessions.md)

[HTTP Headers](php_http_headers.md)

[HTTP Status Codes](php_http_status_codes.md)

[PHP: POST](php_POST.md)

[PHP: Redirect After POST](php_redirect_after_post.md)

## Day 12

Intro Final Project

Relational Database Management Systems (RDBMS)

- MariaDB
- phpMyAdmin

SQL

- DDL
  - Create database
  - Create table
    - Data types
    - Null constraints
    - Primary key constraints
  - Drop table
- CRUD
  - Create (INSERT)
  - Read (SELECT)
    - Filtering (WHERE)
    - Sorting (ORDER BY)
  - Update (UPDATE)
  - Delete (DELETE)
- Relations and Normalization
  - Foreign keys
  - [Flat (unnormalized)](examples/dog_schema_flat.csv)
  - [Partially normalized](examples/dog_schema_partially_normalized.sql)
  - [Fullly normalized (3NF)](examples/dog_schema_partially_normalized.sql)

## Day 13

SQLLite (redo last week's lab assignment using this).

SQL Joins

[Interfacing with a Database in PHP](php_database.md)

Lab:

[Connecting to a Database in CodeSpaces](db_connection_codespaces.md)

## Remaining Topics

SQL Prepared Statements

[JSON](json.md)

Javascript Async and Promises

Javascript Fetch API

Lab:

Add a dropdown filter for user and category to photo gallery.

Use the fetch API to get the data from the server instead of form submission.
