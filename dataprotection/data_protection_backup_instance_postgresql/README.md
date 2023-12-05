# azurerm_data_protection_backup_instance_postgresql

Manages a Backup Instance to back up PostgreSQL.-> **Note:** Before using this resource, there are some prerequisite permissions for configure backup and restore. See more details from <https://docs.microsoft.com/azure/backup/backup-azure-database-postgresql#prerequisite-permissions-for-configure-backup-and-restore>.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dataprotection/data_protection_backup_instance_postgresql"   
}

inputs = {
   name = "The name which should be used for this Backup Instance PostgreSQL..."   
   location = "${location}"   
   vault_id = "The ID of the Backup Vault within which the PostgreSQL Backup Instance should ex..."   
   database_id = "The ID of the source database"   
   backup_policy_id = "The ID of the Backup Policy"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Backup Instance PostgreSQL. Changing this forces a new Backup Instance PostgreSQL to be created. | 
| **location** | string |  The location of the source database. Changing this forces a new Backup Instance PostgreSQL to be created. | 
| **vault_id** | string |  The ID of the Backup Vault within which the PostgreSQL Backup Instance should exist. Changing this forces a new Backup Instance PostgreSQL to be created. | 
| **database_id** | string |  The ID of the source database. Changing this forces a new Backup Instance PostgreSQL to be created. | 
| **backup_policy_id** | string |  The ID of the Backup Policy. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **database_credential_key_vault_secret_id** | string |  The ID or versionless ID of the key vault secret which stores the connection string of the database. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup Instance PostgreSQL. | 

Additionally, all variables are provided as outputs.
