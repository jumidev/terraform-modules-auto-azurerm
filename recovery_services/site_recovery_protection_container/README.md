# azurerm_site_recovery_protection_container

Manages a Azure Site Recovery protection container. Protection containers serve as containers for replicated VMs and belong to a single region / recovery fabric. Protection containers can contain more than one replicated VM. To replicate a VM, a container must exist in both the source and target Azure regions.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the protection container. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | -  |  -  | The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **var.recovery_fabric_name** | string | True | -  |  -  | Name of fabric that should contain this protection container. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **recovery_vault_name** | string  | - | 
| **recovery_fabric_name** | string  | - | 
| **id** | string  | The ID of the Site Recovery Protection Container. | 