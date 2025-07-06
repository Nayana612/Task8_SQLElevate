# 🔁 Task 8: Stored Procedures and Functions in SQL

I implemented reusable SQL logic using **Stored Procedures** and **Functions** to encapsulate operations and calculations.

---

## 🎯 Objective

- Create and use stored procedures with `IN` parameters
- Write SQL functions to return computed results
- Practice modular SQL for cleaner and reusable code

---

## 🧱 Base Tables Used

- `Customers`
- `Orders`

---

## 📦 Stored Objects Created

### 📌 Procedure: `GetOrdersByCustomer`
- Input: `customer_id`
- Output: All orders placed by that customer

```sql
CALL GetOrdersByCustomer(2);
