# azurerm_mssql_virtual_machine

Manages a Microsoft SQL Virtual Machine

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.virtual_machine_id** | string | True | -  |  -  |  The ID of the Virtual Machine. Changing this forces a new resource to be created. | 
| **var.sql_license_type** | string | False | -  |  `AHUB`, `DR`, `PAYG`  |  The SQL Server license type. Possible values are `AHUB` (Azure Hybrid Benefit), `DR` (Disaster Recovery), and `PAYG` (Pay-As-You-Go). Changing this forces a new resource to be created. | 
| **var.auto_backup** | block | False | -  |  -  |  An `auto_backup` block. This block can be added to an existing resource, but removing this block forces a new resource to be created. | 
| **var.auto_patching** | block | False | -  |  -  |  An `auto_patching` block. | 
| **var.key_vault_credential** | block | False | -  |  -  |  An `key_vault_credential` block. | 
| **var.r_services_enabled** | bool | False | -  |  -  |  Should R Services be enabled? | 
| **var.sql_connectivity_port** | string | False | `1433`  |  -  |  The SQL Server port. Defaults to `1433`. | 
| **var.sql_connectivity_type** | string | False | `PRIVATE`  |  `LOCAL`, `PRIVATE`, `PUBLIC`  |  The connectivity type used for this SQL Server. Possible values are `LOCAL`, `PRIVATE` and `PUBLIC`. Defaults to `PRIVATE`. | 
| **var.sql_connectivity_update_password** | string | False | -  |  -  |  The SQL Server sysadmin login password. | 
| **var.sql_connectivity_update_username** | string | False | -  |  -  |  The SQL Server sysadmin login to create. | 
| **var.sql_instance** | block | False | -  |  -  |  A `sql_instance` block. | 
| **var.storage_configuration** | block | False | -  |  -  |  An `storage_configuration` block. | 
| **var.assessment** | block | False | -  |  -  |  An `assessment` block. | 
| **var.sql_virtual_machine_group_id** | string | False | -  |  -  |  The ID of the SQL Virtual Machine Group that the SQL Virtual Machine belongs to. | 
| **var.wsfc_domain_credential** | block | False | -  |  -  |  A `wsfc_domain_credential` block | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL Virtual Machine. | 

Additionally, all variables are provided as outputs.
