alter table ACT_RU_ENTITYLINK add column if not exists SUB_SCOPE_ID_ varchar(255);
alter table ACT_RU_ENTITYLINK add column if not exists PARENT_ELEMENT_ID_ varchar(255);

update ACT_GE_PROPERTY set VALUE_ = '6.5.1.6' where NAME_ = 'entitylink.schema.version';
