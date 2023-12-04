# azurerm_backup_container_storage_account

Manages registration of a storage account with Azure Backup. Storage accounts must be registered with an Azure Recovery Vault in order to backup file shares within the storage account. Registering a storage account with a vault creates what is known as a protection container within Azure Recovery Services. Once the container is created, Azure file shares within the storage account can be backed up using the `azurerm_backup_protected_file_share` resource.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/backup_container_storage_account" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   recovery_vault_name = "recovery_vault_name of backup_container_storage_account" 
   # storage_account_id → set in tfstate_inputs
}

tfstate_inputs = {
   storage_account_id = "path/to/storage_account_component:id" 
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
| **resource_group_name** | string |  Name of the resource group where the vault is located. Changing this forces a new resource to be created. | 
| **recovery_vault_name** | string |  The name of the vault where the storage account will be registered. Changing this forces a new resource to be created. | 
| **storage_account_id** | string |  The ID of the Storage Account to be registered Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup Storage Account Container. | 

Additionally, all variables are provided as outputs.
