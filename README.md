# Self-join-MySQL-example
This was an interview question. Given an employee table with emp_id, emp_name and manager_id (where manager_id is the manager's emp_id) return a table with all initial data plus an extra column with the manager's name.

The initial table looks like this:

<table>
<tr>
<td><strong>emp_id</strong></td><td><strong>name</strong></td><td><strong>manager_id</strong></td>
</tr>
<tr>
<td>1</td><td>John</td><td>2</td>
</tr>
<tr>
<td>2</td><td>Tom</td><td>3</td>
</tr>
<tr>
<td>3</td><td>Maria</td><td>NULL</td>
</tr>
</table>

The target table is this:

<table>
<tr>
<td><strong>emp_id</strong></td><td><strong>name</strong></td><td><strong>manager_id</strong></td><td><strong>manager_name</strong>
</tr>
<tr>
<td>1</td><td>John</td><td>2</td><td>Tom</td>
</tr>
<tr>
<td>2</td><td>Tom</td><td>3</td><td>Maria</td>
</tr>
</table>

<i>Maria is not in the target table because she doesn't have a manager.</i>

<h2> Proposed solution</h2>

A self join is needed to join the employee table onto itself in order to extract the neessary data but also to create a new column with the alias manager_id whch will be populated by the manager's name using an equality condition that the manager_id=emp_id

```sql
SELECT e. emp_id, e.name,e.manager_id, m.name AS manager_name
FROM   employee e
JOIN   employee m on e.manager_id = m.emp_id;
```



