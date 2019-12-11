CREATE TABLE [dbo].[TaskUser]
(
	[TaskId]	BIGINT		not null,
	[UserId]	BIGINT		not null,
	[ts]		ROWVERSION	not null,
	PRIMARY KEY (TaskId, UserId),
	FOREIGN KEY (UserId) REFERENCES dbo.[User] (UserId),
	FOREIGN KEY (TaskId) REFERENCES dbo.Task   (TaskId)
)
GO

CREATE INDEX ix_TaskUser_UserId ON TaskUser(UserId)
GO