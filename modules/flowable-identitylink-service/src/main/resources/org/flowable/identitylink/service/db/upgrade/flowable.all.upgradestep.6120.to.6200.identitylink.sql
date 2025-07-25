INSERT INTO ACT_GE_PROPERTY (NAME_, VALUE_, REV_)
VALUES ('identitylink.schema.version', '6.2.0.0', 1)
    ON CONFLICT (NAME_) DO NOTHING;
;