# azurerm_mssql_virtual_machine

Manages a Microsoft SQL Virtual Machine

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_virtual_machine" 
}

inputs = {
   virtual_machine_id = "virtual_machine_id of mssql_virtual_machine" 
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
| **virtual_machine_id** | string |  The ID of the Virtual Machine. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **sql_license_type** | string |  -  |  `AHUB`, `DR`, `PAYG`  |  The SQL Server license type. Possible values are `AHUB` (Azure Hybrid Benefit), `DR` (Disaster Recovery), and `PAYG` (Pay-As-You-Go). Changing this forces a new resource to be created. | 
| **auto_backup** | [block](#auto_backup-block-structure) |  -  |  -  |  An `auto_backup` block. This block can be added to an existing resource, but removing this block forces a new resource to be created. | 
| **auto_patching** | [block](#auto_patching-block-structure) |  -  |  -  |  An `auto_patching` block. | 
| **key_vault_credential** | [block](#key_vault_credential-block-structure) |  -  |  -  |  An `key_vault_credential` block. | 
| **r_services_enabled** | bool |  -  |  -  |  Should R Services be enabled? | 
| **sql_connectivity_port** | string |  `1433`  |  -  |  The SQL Server port. Defaults to `1433`. | 
| **sql_connectivity_type** | string |  `PRIVATE`  |  `LOCAL`, `PRIVATE`, `PUBLIC`  |  The connectivity type used for this SQL Server. Possible values are `LOCAL`, `PRIVATE` and `PUBLIC`. Defaults to `PRIVATE`. | 
| **sql_connectivity_update_password** | string |  `Random string of 32 characters`  |  -  |  The SQL Server sysadmin login password. | 
| **sql_connectivity_update_username** | string |  -  |  -  |  The SQL Server sysadmin login to create. | 
| **sql_instance** | [block](#sql_instance-block-structure) |  -  |  -  |  A `sql_instance` block. | 
| **storage_configuration** | [block](#storage_configuration-block-structure) |  -  |  -  |  An `storage_configuration` block. | 
| **assessment** | [block](#assessment-block-structure) |  -  |  -  |  An `assessment` block. | 
| **sql_virtual_machine_group_id** | string |  -  |  -  |  The ID of the SQL Virtual Machine Group that the SQL Virtual Machine belongs to. | 
| **wsfc_domain_credential** | [block](#wsfc_domain_credential-block-structure) |  -  |  -  |  A `wsfc_domain_credential` block | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `temp_db_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_file_path` | string | Yes | - | The SQL Server default path |
| `luns` | list | Yes | - | A list of Logical Unit Numbers for the disks. |
| `data_file_count` | int | No | 8 | The SQL Server default file count. This value defaults to '8' |
| `data_file_size_mb` | int | No | 256 | The SQL Server default file size - This value defaults to '256' |
| `data_file_growth_in_mb` | int | No | 512 | The SQL Server default file size - This value defaults to '512' |
| `log_file_size_mb` | int | No | 256 | The SQL Server default file size - This value defaults to '256' |
| `log_file_growth_mb` | int | No | 512 | The SQL Server default file size - This value defaults to '512' |

### `manual_schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `full_backup_frequency` | string | Yes | - | Frequency of full backups. Valid values include 'Daily' or 'Weekly'. |
| `full_backup_start_hour` | string | Yes | - | Start hour of a given day during which full backups can take place. Valid values are from '0' to '23'. |
| `full_backup_window_in_hours` | string | Yes | - | Duration of the time window of a given day during which full backups can take place, in hours. Valid values are between '1' and '23'. |
| `log_backup_frequency_in_minutes` | string | Yes | - | Frequency of log backups, in minutes. Valid values are from '5' to '60'. |
| `days_of_week` | string | No | - | A list of days on which backup can take place. Possible values are 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday' |

### `key_vault_credential` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_url` | string | Yes | - | The Azure Key Vault url. Changing this forces a new resource to be created. |
| `service_principal_name` | string | Yes | - | The service principal name to access key vault. Changing this forces a new resource to be created. |
| `service_principal_secret` | string | Yes | - | The service principal name secret to access key vault. Changing this forces a new resource to be created. |

### `auto_backup` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `encryption_enabled` | bool | No | False | Enable or disable encryption for backups. Defaults to 'false'. |
| `encryption_password` | string | No | - | Encryption password to use. Must be specified when encryption is enabled. |
| `manual_schedule` | [block](#auto_backup-block-structure) | No | - | A 'manual_schedule' block. When this block is present, the schedule type is set to 'Manual'. Without this block, the schedule type is set to 'Automated'. |
| `retention_period_in_days` | string | Yes | - | Retention period of backups, in days. Valid values are from '1' to '30'. |
| `storage_blob_endpoint` | string | Yes | - | Blob endpoint for the storage account where backups will be kept. |
| `storage_account_access_key` | string | Yes | - | Access key for the storage account where backups will be kept. |
| `system_databases_backup_enabled` | bool | No | - | Include or exclude system databases from auto backup. |

### `sql_instance` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `adhoc_workloads_optimization_enabled` | bool | No | False | Specifies if the SQL Server is optimized for adhoc workloads. Possible values are 'true' and 'false'. Defaults to 'false'. |
| `collation` | string | No | SQL_Latin1_General_CP1_CI_AS | Collation of the SQL Server. Defaults to 'SQL_Latin1_General_CP1_CI_AS'. Changing this forces a new resource to be created. |
| `instant_file_initialization_enabled` | bool | No | False | Specifies if Instant File Initialization is enabled for the SQL Server. Possible values are 'true' and 'false'. Defaults to 'false'. Changing this forces a new resource to be created. |
| `lock_pages_in_memory_enabled` | bool | No | False | Specifies if Lock Pages in Memory is enabled for the SQL Server. Possible values are 'true' and 'false'. Defaults to 'false'. Changing this forces a new resource to be created. |
| `max_dop` | string | No | 0 | Maximum Degree of Parallelism of the SQL Server. Possible values are between '0' and '32767'. Defaults to '0'. |
| `max_server_memory_mb` | string | No | 2147483647 | Maximum amount memory that SQL Server Memory Manager can allocate to the SQL Server process. Possible values are between '128' and '2147483647' Defaults to '2147483647'. |
| `min_server_memory_mb` | string | No | 0 | Minimum amount memory that SQL Server Memory Manager can allocate to the SQL Server process. Possible values are between '0' and '2147483647' Defaults to '0'. |

### `storage_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disk_type` | string | Yes | - | The type of disk configuration to apply to the SQL Server. Valid values include 'NEW', 'EXTEND', or 'ADD'. |
| `storage_workload_type` | string | Yes | - | The type of storage workload. Valid values include 'GENERAL', 'OLTP', or 'DW'. |
| `data_settings` | [block](#storage_configuration-block-structure) | No | - | A 'storage_settings' block. |
| `log_settings` | [block](#storage_configuration-block-structure) | No | - | A 'storage_settings' block. |
| `system_db_on_data_disk_enabled` | bool | No | False | Specifies whether to set system databases (except tempDb) location to newly created data storage. Possible values are 'true' and 'false'. Defaults to 'false'. |
| `temp_db_settings` | [block](#storage_configuration-block-structure) | No | - | An 'temp_db_settings' block. |

### `assessment` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | True | Should Assessment be enabled? Defaults to 'true'. |
| `run_immediately` | bool | No | False | Should Assessment be run immediately? Defaults to 'false'. |
| `schedule` | [block](#assessment-block-structure) | No | - | An 'schedule' block. |

### `storage_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_file_path` | string | Yes | - | The SQL Server default path |
| `luns` | list | Yes | - | A list of Logical Unit Numbers for the disks. |

### `auto_patching` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `day_of_week` | string | Yes | - | The day of week to apply the patch on. Possible values are 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday'. |
| `maintenance_window_starting_hour` | string | Yes | - | The Hour, in the Virtual Machine Time-Zone when the patching maintenance window should begin. |
| `maintenance_window_duration_in_minutes` | int | Yes | - | The size of the Maintenance Window in minutes. |

### `wsfc_domain_credential` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cluster_bootstrap_account_password` | string | Yes | - | The account password used for creating cluster. |
| `cluster_operator_account_password` | string | Yes | - | The account password used for operating cluster. |
| `sql_service_account_password` | string | Yes | - | The account password under which SQL service will run on all participating SQL virtual machines in the cluster. |

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `weekly_interval` | string | No | - | How many weeks between assessment runs. Valid values are between '1' and '6'. |
| `monthly_occurrence` | string | No | - | How many months between assessment runs. Valid values are between '1' and '5'. |
| `day_of_week` | string | Yes | - | What day of the week the assessment will be run. Possible values are 'Friday', 'Monday', 'Saturday', 'Sunday', 'Thursday', 'Tuesday' and 'Wednesday'. |
| `start_time` | string | Yes | - | What time the assessment will be run. Must be in the format 'HH:mm'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL Virtual Machine. | 

Additionally, all variables are provided as outputs.
