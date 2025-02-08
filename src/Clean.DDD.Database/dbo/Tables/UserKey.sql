CREATE TABLE [dbo].[UserKey] (
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [UserId]        INT             NOT NULL, 
    [PasswordHash]  VARCHAR (MAX)   NOT NULL,
    [CreatedDate]   DATETIME        NOT NULL,
    [Enabled]       BIT             DEFAULT (1) NOT NULL,
    [IUser]         VARCHAR (25)    NOT NULL,
    [IDate]         DATETIME        NOT NULL,
    [IComments]     VARCHAR (256)   NOT NULL,
    [UUser]         VARCHAR (25)    NULL,
    [UDate]         DATETIME        NULL,
    [UComments]     VARCHAR (256)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_User_TO_UserKey] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
);

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Almacena el histórico de contraseñas de los usuarios', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserKey';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserKey', @level2type = N'COLUMN', @level2name = N'Id';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Identificador del usuario', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserKey', @level2type = N'COLUMN', @level2name = N'UserId';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Contraseña encriptada', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserKey', @level2type = N'COLUMN', @level2name = N'PasswordHash';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Indica si el registro está habilitado', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserKey', @level2type = N'COLUMN', @level2name = N'Enabled';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría usuario de creación', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserKey', @level2type = N'COLUMN', @level2name = N'IUser';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría fecha de creación', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserKey', @level2type = N'COLUMN', @level2name = N'IDate';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría comentario de creación', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserKey', @level2type = N'COLUMN', @level2name = N'IComments';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría usuario de actualización', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserKey', @level2type = N'COLUMN', @level2name = N'UUser';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría fecha de actualización', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserKey', @level2type = N'COLUMN', @level2name = N'UDate';

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Auditoría comentario de actualización', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserKey', @level2type = N'COLUMN', @level2name = N'UComments';