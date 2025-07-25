create index if not exists ACT_IDX_HI_PROCVAR_EXE on ACT_HI_VARINST(EXECUTION_ID_);

alter table ACT_HI_PROCINST add column if not exists REV_ integer default 1;
update ACT_HI_PROCINST set REV_ = 1;

alter table ACT_HI_ACTINST add column if not exists REV_ integer default 1;
update ACT_HI_ACTINST set REV_ = 1;

alter table ACT_HI_TASKINST add column if not exists REV_ integer default 1;
update ACT_HI_TASKINST set REV_ = 1;

alter table ACT_HI_TASKINST add column if not exists LAST_UPDATED_TIME_ timestamp;
alter table ACT_HI_VARINST alter column REV_ set default 1;
update ACT_HI_VARINST set REV_ = 1 where REV_ is null OR REV_ = 0;
