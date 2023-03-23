Exec ChangeState @Process_Id = 1, @State = 'Placed'
Exec ShowProcess @Process_Id = 1
SELECT CAST ((SELECT CAST(GETDATE() AS Date)) as VARCHAR(20))

Exec PlaceOrder @Order_ID = 11,
@Date = '2023-03-23', 
@Customer_ID = 1019083762,
@Product_ID = '020002',
@Description = 'test order with todays date',
@BillAmount = 999

Exec DeleteOrder @Order_ID = 11

Exec CreateProcess @Process_ID = 11,
@Order_ID = 11,
@State = "Confirmed"

Exec ListTodayProcess
