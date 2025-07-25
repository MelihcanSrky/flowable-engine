alter table ACT_RU_JOB add column if not exists ELEMENT_ID_ varchar(255);
alter table ACT_RU_JOB add column if not exists ELEMENT_NAME_ varchar(255);

alter table ACT_RU_TIMER_JOB add column if not exists ELEMENT_ID_ varchar(255);
alter table ACT_RU_TIMER_JOB add column if not exists ELEMENT_NAME_ varchar(255);

alter table ACT_RU_SUSPENDED_JOB add column if not exists ELEMENT_ID_ varchar(255);
alter table ACT_RU_SUSPENDED_JOB add column if not exists ELEMENT_NAME_ varchar(255);

alter table ACT_RU_DEADLETTER_JOB add column if not exists ELEMENT_ID_ varchar(255);
alter table ACT_RU_DEADLETTER_JOB add column if not exists ELEMENT_NAME_ varchar(255);

update ACT_GE_PROPERTY set VALUE_ = '6.5.0.1' where NAME_ = 'job.schema.version';