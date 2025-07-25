alter table ACT_HI_VARINST add column if not exists SCOPE_ID_ varchar(255);
alter table ACT_HI_VARINST add column if not exists SUB_SCOPE_ID_ varchar(255);
alter table ACT_HI_VARINST add column if not exists SCOPE_TYPE_ varchar(255);

create index if not exists ACT_IDX_HI_VAR_SCOPE_ID_TYPE on ACT_HI_VARINST(SCOPE_ID_, SCOPE_TYPE_);
create index if not exists ACT_IDX_HI_VAR_SUB_ID_TYPE on ACT_HI_VARINST(SUB_SCOPE_ID_, SCOPE_TYPE_);
