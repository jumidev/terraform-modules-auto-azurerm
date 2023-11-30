# azurerm_backup_policy_file_share

Manages an Azure File Share Backup Policy within a Recovery Services vault.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/backup_policy_file_share" 
}

inputs = {
   name = "name of backup_policy_file_share" 
   resource_group_name = "${resource_group}" 
   recovery_vault_name = "recovery_vault_name of backup_policy_file_share" 
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
| **var.name** | string |  Specifies the name of the policy. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which to create the policy. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string |  Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure File Share Backup Policy. | 

Additionally, all variables are provided as outputs.
