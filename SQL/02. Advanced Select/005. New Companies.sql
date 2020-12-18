-- # Problem: https://www.hackerrank.com/challenges/the-company/problem


SELECT company.company_code, company.founder, COUNT(DISTINCT lead_manager.lead_manager_code), 
       COUNT(DISTINCT senior_manager.senior_manager_code), COUNT(DISTINCT manager.manager_code),
       COUNT(DISTINCT employee.employee_code)
FROM company, lead_manager, senior_manager, manager, employee
WHERE employee.manager_code = manager.manager_code AND
      employee.senior_manager_code = senior_manager.senior_manager_code AND
      employee.lead_manager_code = lead_manager.lead_manager_code AND
      employee.company_code = company.company_code
GROUP BY company.company_code, company.founder;


