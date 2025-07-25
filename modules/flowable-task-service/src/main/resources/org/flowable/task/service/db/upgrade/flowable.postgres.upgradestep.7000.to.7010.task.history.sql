alter table ACT_HI_TASKINST 
    add column if not exists STATE_ varchar(255),
    add column if not exists IN_PROGRESS_TIME_ timestamp,
    add column if not exists IN_PROGRESS_STARTED_BY_ varchar(255),
    add column if not exists CLAIMED_BY_ varchar(255),
    add column if not exists SUSPENDED_TIME_ timestamp,
    add column if not exists SUSPENDED_BY_ varchar(255),
    add column if not exists COMPLETED_BY_ varchar(255),
    add column if not exists IN_PROGRESS_DUE_DATE_ timestamp;