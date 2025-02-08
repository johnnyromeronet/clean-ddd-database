GO
SET IDENTITY_INSERT [dbo].[Language] ON
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[Language] WHERE [Id] = 1)
INSERT [dbo].[Language] ([Id], [Name], [Code], [Description], [IUser], [IDate], [IComments])
VALUES (1, 'Español', 'es', 'Idioma español', '1', GETDATE(), 'Carga inicial')
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[Language] WHERE [Id] = 2)
INSERT [dbo].[Language] ([Id], [Name], [Code], [Description], [IUser], [IDate], [IComments])
VALUES (2, 'Inglés', 'en', 'Idioma inglés', '1', GETDATE(), 'Carga inicial')
GO
SET IDENTITY_INSERT [dbo].[Language] OFF
GO