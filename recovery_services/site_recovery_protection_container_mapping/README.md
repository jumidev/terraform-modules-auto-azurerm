# azurerm_site_recovery_protection_container_mapping

Manages a Azure recovery vault protection container mapping. A protection container mapping decides how to translate the protection container when a VM is migrated from one region to another.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the protection container mapping. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | -  |  -  | The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **var.recovery_fabric_name** | string | True | -  |  -  | Name of fabric that should contains the protection container to map. Changing this forces a new resource to be created. | 
| **var.recovery_source_protection_container_name** | string | True | -  |  -  | Name of the source protection container to map. Changing this forces a new resource to be created. | 
| **var.recovery_target_protection_container_id** | string | True | -  |  -  | Id of target protection container to map to. Changing this forces a new resource to be created. | 
| **var.recovery_replication_policy_id** | string | True | -  |  -  | Id of the policy to use for this mapping. Changing this forces a new resource to be created. | 
| **var.automatic_update** | block | False | -  |  -  | a `automatic_update` block defined as below. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **recovery_vault_name** | string  | - | 
| **recovery_fabric_name** | string  | - | 
| **recovery_source_protection_container_name** | string  | - | 
| **recovery_target_protection_container_id** | string  | - | 
| **recovery_replication_policy_id** | string  | - | 
| **automatic_update** | block  | - | 
| **id** | string  | The ID of the Site Recovery Protection Container Mapping. | 