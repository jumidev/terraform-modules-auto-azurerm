# azurerm_site_recovery_network_mapping

Manages a site recovery network mapping on Azure. A network mapping decides how to translate connected networks when a VM is migrated from one region to another.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the network mapping. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **var.source_recovery_fabric_name** | string | True | Specifies the ASR fabric where mapping should be created. Changing this forces a new resource to be created. | 
| **var.target_recovery_fabric_name** | string | True | The Azure Site Recovery fabric object corresponding to the recovery Azure region. Changing this forces a new resource to be created. | 
| **var.source_network_id** | string | True | The id of the primary network. Changing this forces a new resource to be created. | 
| **var.target_network_id** | string | True | The id of the recovery network. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **recovery_vault_name** | string  | - | 
| **source_recovery_fabric_name** | string  | - | 
| **target_recovery_fabric_name** | string  | - | 
| **source_network_id** | string  | - | 
| **target_network_id** | string  | - | 
| **id** | string  | The ID of the Site Recovery Network Mapping. | 