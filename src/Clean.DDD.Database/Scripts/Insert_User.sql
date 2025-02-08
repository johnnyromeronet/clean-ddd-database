GO
SET IDENTITY_INSERT [dbo].[User] ON
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[User] WHERE [Id] = 1)
INSERT [dbo].[User] ([Id], [Name], [LanguageId], [IdentifierTypeId], [Identifier], [Surname], [Email], [PasswordHash], [IUser], [IDate], [IComments])
VALUES (1, 'Admin', 1, 1, '1R', 'Admin', 'admin@admin.es', 'AQAAAAEAACcQAAAAEG+nZ9dtmIas3hQoBI8mJ1KQaCCeQ95+UrejbrSTe1HbSc+6wWjGFDjvkgFJYxA34w==', '1', GETDATE(), 'Carga inicial')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO