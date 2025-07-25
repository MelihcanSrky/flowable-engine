create table if not exists ACT_GE_PROPERTY (
    NAME_ varchar(64),
    VALUE_ varchar(300),
    REV_ integer,
    primary key (NAME_)
);

create table if not exists ACT_GE_BYTEARRAY (
    ID_ varchar(64),
    REV_ integer,
    NAME_ varchar(255),
    DEPLOYMENT_ID_ varchar(64),
    BYTES_ bytea,
    GENERATED_ boolean,
    primary key (ID_)
);

INSERT INTO ACT_GE_PROPERTY (NAME_, VALUE_, REV_)
VALUES ('common.schema.version', '7.0.0.0', 1)
    ON CONFLICT (NAME_) DO NOTHING;


INSERT INTO ACT_GE_PROPERTY (NAME_, VALUE_, REV_)
VALUES ('next.dbid', '1', 1)
    ON CONFLICT (NAME_) DO NOTHING;

