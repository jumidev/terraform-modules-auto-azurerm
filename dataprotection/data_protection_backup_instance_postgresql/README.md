# azurerm_data_protection_backup_instance_postgresql

Manages a Backup Instance to back up PostgreSQL.-> **Note:** Before using this resource, there are some prerequisite permissions for configure backup and restore. See more details from <https://docs.microsoft.com/azure/backup/backup-azure-database-postgresql#prerequisite-permissions-for-configure-backup-and-restore>.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Backup Instance PostgreSQL. Changing this forces a new Backup Instance PostgreSQL to be created. | 
| **location** | string | True | -  |  -  | The location of the source database. Changing this forces a new Backup Instance PostgreSQL to be created. | 
| **vault_id** | string | True | -  |  -  | The ID of the Backup Vault within which the PostgreSQL Backup Instance should exist. Changing this forces a new Backup Instance PostgreSQL to be created. | 
| **database_id** | string | True | -  |  -  | The ID of the source database. Changing this forces a new Backup Instance PostgreSQL to be created. | 
| **backup_policy_id** | string | True | -  |  -  | The ID of the Backup Policy. | 
| **database_credential_key_vault_secret_id** | string | False | -  |  -  | The ID or versionless ID of the key vault secret which stores the connection string of the database. | 

