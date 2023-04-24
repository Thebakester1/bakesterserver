DECLARE @URL NVARCHAR(MAX) = 'http://localhost:8091/api/v1/employees/updateemployee';
DECLARE @Object AS INT;
DECLARE @ResponseText AS VARCHAR(8000);
DECLARE @Body AS VARCHAR(8000) =
'{
   "employeeId": 1,
   "firstName": "Nancy",
   "lastName": "Davolio",
   "title": "Sales Representative",
   "birthDate": "2020-08-18T00:00:00.000",
   "hireDate": "2020-08-18T00:00:00.000",
   "address": "507 - 20th Ave. E. Apt. 2A",
   "city": "Seattle",
   "region": "WA",
   "postalCode": "98122",
   "country": "USA",
   "homePhone": "(206) 555-9857"
}'
EXEC sp_OACreate 'MSXML2.XMLHTTP', @Object OUT;