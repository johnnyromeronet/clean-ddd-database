GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[UserRole] WHERE [UserId] = 1 AND [RoleId] = 1)
INSERT [dbo].[UserRole] ([UserId], [RoleId], [IUser], [IDate], [IComments])
VALUES (1, 1, '1', GETDATE(), 'Carga inicial')
GO