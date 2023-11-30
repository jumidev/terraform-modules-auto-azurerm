# azurerm_backup_policy_vm

Manages an Azure Backup VM Backup Policy.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Backup Policy. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the policy. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **recovery_vault_name** | string  | - | 
| **id** | string  | The ID of the VM Backup Policy. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/backup_policy_vm" 
}

inputs = {
   name = "name of backup_policy_vm" 
   resource_group_name = "${resource_group}" 
   recovery_vault_name = "recovery_vault_name of backup_policy_vm" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```