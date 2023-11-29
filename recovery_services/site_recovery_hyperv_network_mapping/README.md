# azurerm_site_recovery_hyperv_network_mapping

Manages a HyperV site recovery network mapping on Azure. A HyperV network mapping decides how to translate connected networks when a VM is migrated from HyperV VMM Center to Azure.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the HyperV network mapping. Changing this forces a new resource to be created. | 
| **recovery_vault_id** | string | True | -  |  -  | The ID of the Recovery Services Vault where the HyperV network mapping should be created. Changing this forces a new resource to be created. | 
| **source_system_center_virtual_machine_manager_name** | string | True | -  |  -  | Specifies the name of source System Center Virtual Machine Manager where the source network exists. Changing this forces a new resource to be created. | 
| **source_network_name** | string | True | -  |  -  | The Name of the primary network. Changing this forces a new resource to be created. | 
| **target_network_id** | string | True | -  |  -  | The id of the recovery network. Changing this forces a new resource to be created. | 

