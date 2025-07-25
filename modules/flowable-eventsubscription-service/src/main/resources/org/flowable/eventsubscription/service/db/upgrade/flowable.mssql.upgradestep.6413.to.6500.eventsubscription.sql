alter table ACT_RU_EVENT_SUBSCR add SUB_SCOPE_ID_ nvarchar(64);
alter table ACT_RU_EVENT_SUBSCR add SCOPE_ID_ nvarchar(64);
alter table ACT_RU_EVENT_SUBSCR add SCOPE_DEFINITION_ID_ nvarchar(64);
alter table ACT_RU_EVENT_SUBSCR add SCOPE_TYPE_ nvarchar(64);

INSERT INTO ACT_GE_PROPERTY (NAME_, VALUE_, REV_)
VALUES ('eventsubscription.schema.version', '6.5.0.0', 1)
    ON CONFLICT (NAME_) DO NOTHING;
;
