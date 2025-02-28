﻿CREATE TABLE [dbo].[User] (
    [Id]                INT             IDENTITY (1, 1) NOT NULL,
	[Name] 				VARCHAR (256)   NOT NULL,
	[IdentifierTypeId] 	INT             NOT NULL,
	[Identifier] 		VARCHAR (256)   NOT NULL,
	[Surname] 			VARCHAR (256)   NOT NULL,
	[SecondSurname] 	VARCHAR (256)   NULL,
	[PhoneNumber] 		VARCHAR (25)   	NULL,
	[LanguageId] 		INT             NOT NULL,
	[ActiveChk]      	BIT             DEFAULT (1) NOT NULL,
    [IsSystem]          BIT             DEFAULT (0) NOT NULL,
    [Email]             VARCHAR (256)   NOT NULL,
    [PasswordHash]      VARCHAR (MAX)   NOT NULL,
    [Enabled]           BIT             DEFAULT (1) NOT NULL,
    [IUser]             VARCHAR (25)    NOT NULL,
    [IDate]             DATETIME        NOT NULL,
    [IComments]         VARCHAR (256)   NOT NULL,
    [UUser]             VARCHAR (25)    NULL,
    [UDate]             DATETIME        NULL,
    [UComments]         VARCHAR (256)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Language_TO_User] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Language] ([Id]),
	CONSTRAINT [FK_IdentifierType_TO_User] FOREIGN KEY ([IdentifierTypeId]) REFERENCES [dbo].[IdentifierType] ([Id])
);

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Almacena los usuarios de la aplicación', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'Id';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Nombre del usuario', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'Name';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Tipo de documento del usuario', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'IdentifierTypeId';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Número de documento del usuario', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'Identifier';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Apellido 1 del usuario', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'Surname';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Apellido 2 del usuario', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'SecondSurname';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Teléfono del usuario', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'PhoneNumber';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Idioma del usuario', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'LanguageId';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Indica si el usuario está activo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'ActiveChk';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Contraseña encriptada', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'PasswordHash';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Indica si el registro está habilitado', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'Enabled';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría usuario de creación', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'IUser';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría fecha de creación', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'IDate';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría comentario de creación', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'IComments';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría usuario de actualización', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'UUser';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría fecha de actualización', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'UDate';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría comentario de actualización', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'UComments';