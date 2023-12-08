# azurerm_mssql_virtual_machine

Manages a Microsoft SQL Virtual Machine

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_virtual_machine"   
}

inputs = {
   # virtual_machine_id → set in tfstate_inputs
}

tfstate_inputs = {
   virtual_machine_id = "path/to/virtual_machine_component:id"   
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
| **auto_backup** | string |  -  |  -  |  An `auto_backup` block. This block can be added to an existing resource, but removing this block forces a new resource to be created. | 
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

### `storage_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_file_path` | string | Yes | - | The SQL Server default path |
| `luns` | list | Yes | - | A list of Logical Unit Numbers for the disks. |

### `temp_db_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_file_path` | string | Yes | - | The SQL Server default path |
| `luns` | list | Yes | - | A list of Logical Unit Numbers for the disks. |
| `data_file_count` | number | No | 8 | The SQL Server default file count. This value defaults to '8' |
| `data_file_size_mb` | number | No | 256 | The SQL Server default file size - This value defaults to '256' |
| `data_file_growth_in_mb` | number | No | 512 | The SQL Server default file size - This value defaults to '512' |
| `log_file_size_mb` | number | No | 256 | The SQL Server default file size - This value defaults to '256' |
| `log_file_growth_mb` | number | No | 512 | The SQL Server default file size - This value defaults to '512' |

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
| `data_settings` | [block](#storage_settings-block-structure) | No | - | A 'storage_settings' block. |
| `log_settings` | [block](#storage_settings-block-structure) | No | - | A 'storage_settings' block. |
| `system_db_on_data_disk_enabled` | bool | No | False | Specifies whether to set system databases (except tempDb) location to newly created data storage. Possible values are 'true' and 'false'. Defaults to 'false'. |
| `temp_db_settings` | [block](#temp_db_settings-block-structure) | No | - | An 'temp_db_settings' block. |

### `assessment` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | True | Should Assessment be enabled? Defaults to 'true'. |
| `run_immediately` | bool | No | False | Should Assessment be run immediately? Defaults to 'false'. |
| `schedule` | [block](#schedule-block-structure) | No | - | An 'schedule' block. |

### `wsfc_domain_credential` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cluster_bootstrap_account_password` | string | Yes | - | The account password used for creating cluster. |
| `cluster_operator_account_password` | string | Yes | - | The account password used for operating cluster. |
| `sql_service_account_password` | string | Yes | - | The account password under which SQL service will run on all participating SQL virtual machines in the cluster. |

### `key_vault_credential` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The credential name. |
| `key_vault_url` | string | Yes | - | The Azure Key Vault url. Changing this forces a new resource to be created. |
| `service_principal_name` | string | Yes | - | The service principal name to access key vault. Changing this forces a new resource to be created. |
| `service_principal_secret` | string | Yes | - | The service principal name secret to access key vault. Changing this forces a new resource to be created. |

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `weekly_interval` | string | No | - | How many weeks between assessment runs. Valid values are between '1' and '6'. |
| `monthly_occurrence` | string | No | - | How many months between assessment runs. Valid values are between '1' and '5'. |
| `day_of_week` | string | Yes | - | What day of the week the assessment will be run. Possible values are 'Friday', 'Monday', 'Saturday', 'Sunday', 'Thursday', 'Tuesday' and 'Wednesday'. |
| `start_time` | string | Yes | - | What time the assessment will be run. Must be in the format 'HH:mm'. |

### `auto_patching` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `day_of_week` | string | Yes | - | The day of week to apply the patch on. Possible values are 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday'. |
| `maintenance_window_starting_hour` | string | Yes | - | The Hour, in the Virtual Machine Time-Zone when the patching maintenance window should begin. |
| `maintenance_window_duration_in_minutes` | number | Yes | - | The size of the Maintenance Window in minutes. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL Virtual Machine. | 

Additionally, all variables are provided as outputs.
