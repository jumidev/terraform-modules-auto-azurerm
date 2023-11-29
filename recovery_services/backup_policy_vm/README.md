# azurerm_backup_policy_vm

Manages an Azure Backup VM Backup Policy.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Backup Policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the policy. Changing this forces a new resource to be created. | 
| **recovery_vault_name** | string | True | -  |  -  | Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 

