alter system set global_names=false;

CREATE PLUGGABLE DATABASE PDBJSON admin user pdb_adm identified by  "Welcome1#Oc4j1013-";

CREATE PLUGGABLE DATABASE DODBHP_PDB1 admin user pdb_adm identified by  "Welcome1#Oc4j1013-";

alter pluggable database PDBJSON open read write;

alter pluggable database DODBHP_PDB1 open read write;

alter system set encryption key identified by "Welcome1#Oc4j1013-";

administer key management backup keystore identified by "Welcome1#Oc4j1013-";

alter session set container=dodbhp_pdb1;

create public database link clone_link_sql connect to system identified by "Welcome1#Oc4j1013-" using '(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = 130.61.124.136)(PORT = 1521)))(CONNECT_DATA = (SERVICE_NAME = dodbhp_pdb1.sub03010825490.devopsvcn.oraclevcn.com)))';

select * from dual @ clone_link_sql;

CREATE PROFILE APPUSR_DEFAULT LIMIT
COMPOSITE_LIMIT UNLIMITED
SESSIONS_PER_USER UNLIMITED
CPU_PER_SESSION UNLIMITED
CPU_PER_CALL UNLIMITED
LOGICAL_READS_PER_SESSION UNLIMITED
LOGICAL_READS_PER_CALL UNLIMITED
IDLE_TIME UNLIMITED
CONNECT_TIME UNLIMITED
 PRIVATE_SGA UNLIMITED
 FAILED_LOGIN_ATTEMPTS UNLIMITED
 PASSWORD_LIFE_TIME UNLIMITED
 PASSWORD_REUSE_TIME UNLIMITED
 PASSWORD_REUSE_MAX UNLIMITED
 PASSWORD_VERIFY_FUNCTION NULL
 PASSWORD_LOCK_TIME UNLIMITED
 PASSWORD_GRACE_TIME UNLIMITED;

administer key management set keystore open identified by "Welcome1#Oc4j1013-";

administer key management set key identified by "Welcome1#Oc4j1013-";

 CREATE TABLESPACE "USERS" DATAFILE
SIZE 5242880
AUTOEXTEND ON NEXT 1310720 MAXSIZE 32767M
LOGGING ONLINE PERMANENT BLOCKSIZE 8192
EXTENT MANAGEMENT LOCAL AUTOALLOCATE
ENCRYPTION USING 'AES128' ENCRYPT DEFAULT
NOCOMPRESS  SEGMENT SPACE MANAGEMENT AUTO;

alter session set container=cdb$root;

administer key management backup keystore identified by "Welcome1#Oc4j1013-";

alter session set container=pdbjson;

create public database link clone_link_json connect to system identified by "Welcome1#Oc4j1013-" using '(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = 130.61.124.136)(PORT = 1521)))(CONNECT_DATA = (SERVICE_NAME = pdbjson.sub03010825490.devopsvcn.oraclevcn.com)))';

select * from dual @ clone_link_json;

CREATE PROFILE APPUSR_DEFAULT LIMIT
COMPOSITE_LIMIT UNLIMITED
SESSIONS_PER_USER UNLIMITED
CPU_PER_SESSION UNLIMITED
CPU_PER_CALL UNLIMITED
LOGICAL_READS_PER_SESSION UNLIMITED
LOGICAL_READS_PER_CALL UNLIMITED
IDLE_TIME UNLIMITED
CONNECT_TIME UNLIMITED
 PRIVATE_SGA UNLIMITED
 FAILED_LOGIN_ATTEMPTS UNLIMITED
 PASSWORD_LIFE_TIME UNLIMITED
 PASSWORD_REUSE_TIME UNLIMITED
 PASSWORD_REUSE_MAX UNLIMITED
 PASSWORD_VERIFY_FUNCTION NULL
 PASSWORD_LOCK_TIME UNLIMITED
 PASSWORD_GRACE_TIME UNLIMITED;

administer key management set keystore open identified by "Welcome1#Oc4j1013-";

administer key management set key identified by "Welcome1#Oc4j1013-";

CREATE TABLESPACE "USERS" DATAFILE
SIZE 5242880
AUTOEXTEND ON NEXT 1310720 MAXSIZE 32767M
LOGGING ONLINE PERMANENT BLOCKSIZE 8192
EXTENT MANAGEMENT LOCAL AUTOALLOCATE
ENCRYPTION USING 'AES128' ENCRYPT DEFAULT
NOCOMPRESS  SEGMENT SPACE MANAGEMENT AUTO;

exit;