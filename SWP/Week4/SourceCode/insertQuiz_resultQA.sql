SET IDENTITY_INSERT [dbo].[Quiz_Result] ON
INSERT INTO Quiz_Result(quiz_result_id, quiz_id, user_id, quiz_status, quiz_grade, quiz_start, quiz_end, attempt)
VALUES (1,1,1,N'True',2,'2023-01-29 09:34:53','2023-01-29 09:35:39',1),
	(2,6,2,N'False',3,'2023-01-30 10:15:27','2023-01-30 10:16:13',3),
	(3,7,3,N'False',7,'2023-01-31 15:42:08','2023-01-31 15:42:54',8),
	(4,5,4,N'False',0,'2023-02-01 18:20:12','2023-02-01 18:20:58',2),
	(5,9,5,N'False',9,'2023-02-02 21:08:45','2023-02-02 21:09:31',3),
	(6,8,6,N'False',1,'2023-02-03 08:55:59','2023-02-03 08:56:45',4),
	(7,7,7,N'False',7,'2023-02-04 12:10:34','2023-02-04 12:11:20',2),
	(8,6,8,N'False',0,'2023-02-05 16:45:22','2023-02-05 16:46:08',7),
	(9,5,9,N'False',5,'2023-02-06 19:27:53','2023-02-06 19:28:39',3),
	(10,4,10,N'False',4,'2023-02-07 22:05:37','2023-02-07 22:06:23',5);