alter table ACT_RU_TASK add column if not exists IS_COUNT_ENABLED_ boolean;
alter table ACT_RU_TASK add column if not exists VAR_COUNT_ integer;
alter table ACT_RU_TASK add column if not exists ID_LINK_COUNT_ integer;

update ACT_GE_PROPERTY set VALUE_ = '6.0.0.5' where NAME_ = 'schema.version';
