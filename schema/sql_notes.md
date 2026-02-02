# SQL SELECT – FROM – WHERE (Basic Notes)

---

## SELECT
**Purpose:**
- Used to select data from a database
- Chooses which columns you want to see
- `*` means all columns

**Example:**
```sql
SELECT *;

FROM

Purpose:

Tells SQL from which table the data is taken

Specifies the source of the data

Example:
FROM customer;

WHERE

Purpose:

Used to add conditions

Filters the data based on rules

Example:

WHERE country = 'India';

Complete SQL Query Example
SELECT *
FROM customer
WHERE country = 'India';

Easy Explanation

SELECT → what data you want

FROM → from which table

WHERE → add condition to filter data
