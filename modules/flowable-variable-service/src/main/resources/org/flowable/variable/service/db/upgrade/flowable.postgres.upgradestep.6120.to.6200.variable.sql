alter table ACT_RU_VARIABLE add column if not exists SCOPE_ID_ varchar(255);
alter table ACT_RU_VARIABLE add column if not exists SUB_SCOPE_ID_ varchar(255);
alter table ACT_RU_VARIABLE add column if not exists SCOPE_TYPE_ varchar(255);

create index if not exists ACT_IDX_RU_VAR_SCOPE_ID_TYPE on ACT_RU_VARIABLE(SCOPE_ID_, SCOPE_TYPE_);
create index if not exists ACT_IDX_RU_VAR_SUB_ID_TYPE on ACT_RU_VARIABLE(SUB_SCOPE_ID_, SCOPE_TYPE_);

INSERT INTO ACT_GE_PROPERTY (NAME_, VALUE_, REV_)
VALUES ('variable.schema.version', '6.2.0.0', 1)
    ON CONFLICT (NAME_) DO NOTHING;

