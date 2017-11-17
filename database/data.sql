-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

-- Trial User Data, password is "Password"
INSERT INTO app_user (email, hashed_password, salt) VALUES ('trial@user.edu', 'VDkcZD/a/RrPCsq7BFMEsw==','CBhv/pvtgNgL2YPB46xW2TJ6CwySXJLrweHlzosl/JuelqQo7xHekS1+nzO1f9m5XXfWaPtlo81uYDEK8PQeSPCXRHsGyNNpHVGq+ICHDPyzxzW4/YjFojDzm3R1SOObGgmdNW0QZLSCECuugT//BMoEgEMhx2p4hotiCmAnmqo=');
INSERT INTO garden (garden_name, user_id) VALUES ('Garden 1', (SELECT user_id FROM app_user WHERE email = 'trial@user.edu'));
INSERT INTO garden (garden_name, user_id) VALUES ('Garden 2', (SELECT user_id FROM app_user WHERE email = 'trial@user.edu'));

--Trial Admin Data, password is "Password"
INSERT INTO app_user (email, hashed_password, salt, admin) VALUES ('trial@admin.edu', 'VDkcZD/a/RrPCsq7BFMEsw==','CBhv/pvtgNgL2YPB46xW2TJ6CwySXJLrweHlzosl/JuelqQo7xHekS1+nzO1f9m5XXfWaPtlo81uYDEK8PQeSPCXRHsGyNNpHVGq+ICHDPyzxzW4/YjFojDzm3R1SOObGgmdNW0QZLSCECuugT//BMoEgEMhx2p4hotiCmAnmqo=',true);
INSERT INTO garden (garden_name, user_id) VALUES ('Garden 1', (SELECT user_id FROM app_user WHERE email = 'trial@admin.edu'));
INSERT INTO garden (garden_name, user_id) VALUES ('Garden 2', (SELECT user_id FROM app_user WHERE email = 'trial@admin.edu'));

COMMIT;