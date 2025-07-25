alter table ACT_RU_IDENTITYLINK
add PROC_DEF_ID_ varchar (64);

create index if not exists ACT_IDX_VARIABLE_TASK_ID on ACT_RU_VARIABLE(TASK_ID_);
create index if not exists ACT_IDX_ATHRZ_PROCEDEF on ACT_RU_IDENTITYLINK(PROC_DEF_ID_);

alter table ACT_RU_IDENTITYLINK
    drop constraint if exists ACT_FK_ATHRZ_PROCEDEF;
alter table ACT_RU_IDENTITYLINK
    drop constraint if exists ACT_FK_ATHRZ_PROCEDEF;
alter table ACT_RU_IDENTITYLINK
    add constraint ACT_FK_ATHRZ_PROCEDEF
    foreign key (PROC_DEF_ID_) 
    references ACT_RE_PROCDEF (ID_);
    
alter table ACT_RU_EXECUTION 
	add CACHED_ENT_STATE_ integer;

update ACT_RU_EXECUTION set CACHED_ENT_STATE_ = 7;
	
alter table ACT_RE_PROCDEF
    unique (KEY_,VERSION_);