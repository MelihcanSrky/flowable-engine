alter table ACT_RU_ACTINST add column if not exists TRANSACTION_ORDER_ integer;

update ACT_GE_PROPERTY set VALUE_ = '6.5.1.5' where NAME_ = 'schema.version';
