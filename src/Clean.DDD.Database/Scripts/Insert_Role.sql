GO
SET IDENTITY_INSERT [dbo].[Role] ON
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[Role] WHERE [Id] = 1)
INSERT [dbo].[Role] ([Id], [Name], [Description], [IUser], [IDate], [IComments])
VALUES (1, 'Administrador', 'Rol de administrador', '1', GETDATE(), 'Carga inicial')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO