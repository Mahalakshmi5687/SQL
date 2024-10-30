use empDB

select emp.EmployeeID, orders.OrderID, orders.OrderDate
from emp
cross join orders
order by emp.EmployeeID

select emp.EmployeeID, orders.OrderID, orders.OrderDate
from emp
cross join orders
where [emp].[EmployeeID]>103
order by emp.EmployeeID