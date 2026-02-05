# SQL HAVING Clause – Short Notes

## What is HAVING?

**HAVING clause** is used to **filter data after aggregation**.

👉 It works on **grouped (aggregated) results**, not on individual rows.

---

## Why do we need HAVING?

* `WHERE` cannot be used with aggregate functions like `SUM()`, `COUNT()`, `AVG()`
* To filter **groups**, we use **HAVING**

---

## Key Points (Must Remember)

* HAVING is used **after GROUP BY**
* HAVING works on **aggregated data**
* Mostly used with aggregate functions

---

## Syntax

```sql
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
```

---

## Simple Example

### Table: `orders`

| order_id | customer | amount |
| -------- | -------- | ------ |
| 1        | Rahul    | 500    |
| 2        | Rahul    | 700    |
| 3        | Ankit    | 200    |
| 4        | Ankit    | 300    |
| 5        | Neha     | 400    |

---

### Requirement

👉 Show customers whose **total amount > 600**

```sql
SELECT customer, SUM(amount) AS total_spent
FROM orders
GROUP BY customer
HAVING SUM(amount) > 600;
```

### Result

| customer | total_spent |
| -------- | ----------- |
| Rahul    | 1200        |

---

## WHERE vs HAVING (Very Important)

| WHERE                 | HAVING              |
| --------------------- | ------------------- |
| Filters rows          | Filters groups      |
| Used before GROUP BY  | Used after GROUP BY |
| Cannot use aggregates | Uses aggregates     |

---

## Interview-ready One Liner

> "HAVING clause is used to filter aggregated data after GROUP BY."

---

## Common Mistakes

❌ Using HAVING without GROUP BY (generally not recommended)
❌ Using WHERE for aggregate conditions
❌ Confusing WHERE and HAVING order

---

## Execution Order (SQL)

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY

---

End of HAVING Clause Notes
