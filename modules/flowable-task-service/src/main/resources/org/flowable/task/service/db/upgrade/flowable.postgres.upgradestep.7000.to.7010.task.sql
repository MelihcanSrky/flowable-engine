alter table ACT_RU_TASK 
    add column if not exists STATE_ varchar(255),
    add column if not exists IN_PROGRESS_TIME_ timestamp,
    add column if not exists IN_PROGRESS_STARTED_BY_ varchar(255),
    add column if not exists CLAIMED_BY_ varchar(255),
    add column if not exists SUSPENDED_TIME_ timestamp,
    add column if not exists SUSPENDED_BY_ varchar(255),
    add column if not exists IN_PROGRESS_DUE_DATE_ timestamp;

update ACT_GE_PROPERTY set VALUE_ = '7.0.0.0' where NAME_ = 'task.schema.version';
