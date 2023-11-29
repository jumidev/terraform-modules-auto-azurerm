# azurerm_site_recovery_network_mapping

Manages a site recovery network mapping on Azure. A network mapping decides how to translate connected networks when a VM is migrated from one region to another.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the network mapping. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **recovery_vault_name** | string | True | -  |  -  | The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **source_recovery_fabric_name** | string | True | -  |  -  | Specifies the ASR fabric where mapping should be created. Changing this forces a new resource to be created. | 
| **target_recovery_fabric_name** | string | True | -  |  -  | The Azure Site Recovery fabric object corresponding to the recovery Azure region. Changing this forces a new resource to be created. | 
| **source_network_id** | string | True | -  |  -  | The id of the primary network. Changing this forces a new resource to be created. | 
| **target_network_id** | string | True | -  |  -  | The id of the recovery network. Changing this forces a new resource to be created. | 

