﻿CREATE TABLE [dbo].[Language] (
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [Name]          VARCHAR (25)    NOT NULL,
	[Code]          VARCHAR (2)     NOT NULL,
    [Description]   VARCHAR (256)   NOT NULL,
    [Enabled]       BIT             DEFAULT (1) NOT NULL,
    [IUser]         VARCHAR (25)    NOT NULL,
    [IDate]         DATETIME        NOT NULL,
    [IComments]     VARCHAR (256)   NOT NULL,
    [UUser]         VARCHAR (25)    NULL,
    [UDate]         DATETIME        NULL,
    [UComments]     VARCHAR (256)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Almacena los idiomas', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Language';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Language', @level2type = N'COLUMN', @level2name = N'Id';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Nombre del idioma', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Language', @level2type = N'COLUMN', @level2name = N'Name';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Código del idioma', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Language', @level2type = N'COLUMN', @level2name = N'Code';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Descripción del idioma', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Language', @level2type = N'COLUMN', @level2name = N'Description';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Indica si el registro está habilitado', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Language', @level2type = N'COLUMN', @level2name = N'Enabled';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría usuario de creación', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Language', @level2type = N'COLUMN', @level2name = N'IUser';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría fecha de creación', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Language', @level2type = N'COLUMN', @level2name = N'IDate';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría comentario de creación', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Language', @level2type = N'COLUMN', @level2name = N'IComments';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría usuario de actualización', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Language', @level2type = N'COLUMN', @level2name = N'UUser';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría fecha de actualización', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Language', @level2type = N'COLUMN', @level2name = N'UDate';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría comentario de actualización', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Language', @level2type = N'COLUMN', @level2name = N'UComments';