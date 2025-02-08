GO
SET IDENTITY_INSERT [dbo].[IdentifierType] ON
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[IdentifierType] WHERE [Id] = 1)
INSERT [dbo].[IdentifierType] ([Id], [Description], [IUser], [IDate], [IComments])
VALUES (1, 'NIF', '1', GETDATE(), 'Carga inicial')
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[IdentifierType] WHERE [Id] = 2)
INSERT [dbo].[IdentifierType] ([Id], [Description], [IUser], [IDate], [IComments])
VALUES (2, 'NIE', '1', GETDATE(), 'Carga inicial')
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[IdentifierType] WHERE [Id] = 3)
INSERT [dbo].[IdentifierType] ([Id], [Description], [IUser], [IDate], [IComments])
VALUES (3, 'Pasaporte', '1', GETDATE(), 'Carga inicial')
GO
SET IDENTITY_INSERT [dbo].[IdentifierType] OFF
GO