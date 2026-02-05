# SQL DISTINCT – Short Notes

## What is DISTINCT?

**DISTINCT** is used to **remove duplicate values** from the result set.

👉 It ensures that **each value appears only once**.

---

## Why do we need DISTINCT?

* To eliminate duplicate records
* To get unique values from a column
* To clean and summarize data

**Common use cases:**

* Unique country list
* Unique user IDs
* Unique department names

---

## Basic Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

---

## Simple Example

### Table: `customers`

| id | name  | country |
| -- | ----- | ------- |
| 1  | Rahul | India   |
| 2  | Ankit | India   |
| 3  | Neha  | USA     |
| 4  | Aman  | USA     |
| 5  | Riya  | India   |

---

### Query: Get unique countries

```sql
SELECT DISTINCT country
FROM customers;
```

### Result

| country |
| ------- |
| India   |
| USA     |

---

## DISTINCT with Multiple Columns

```sql
SELECT DISTINCT country, name
FROM customers;
```

👉 DISTINCT applies to the **combination of columns**, not individual columns.

---

## DISTINCT with Aggregate Functions

### Example: Count unique countries

```sql
SELECT COUNT(DISTINCT country) AS unique_countries
FROM customers;
```

---

## Important Rules (Interview Focus)

* DISTINCT comes **after SELECT**
* DISTINCT applies to **all selected columns**
* Cannot use DISTINCT inside WHERE

---

## DISTINCT vs GROUP BY

| DISTINCT              | GROUP BY                 |
| --------------------- | ------------------------ |
| Removes duplicates    | Groups data + aggregates |
| No aggregation needed | Used with aggregates     |

---

## Interview-ready One Liner

> "DISTINCT is used to return only unique values by removing duplicates from the result set."

---

## Common Mistakes

❌ Misspelling DISTINCT (DISTICCCT 😄)
❌ Expecting DISTINCT to work on one column when multiple columns selected
❌ Using DISTINCT instead of GROUP BY for aggregation

---

End of DISTINC
