# azurerm_site_recovery_network_mapping

Manages a site recovery network mapping on Azure. A network mapping decides how to translate connected networks when a VM is migrated from one region to another.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/site_recovery_network_mapping" 
}

inputs = {
   name = "name of site_recovery_network_mapping" 
   resource_group_name = "${resource_group}" 
   recovery_vault_name = "recovery_vault_name of site_recovery_network_mapping" 
   source_recovery_fabric_name = "source_recovery_fabric_name of site_recovery_network_mapping" 
   target_recovery_fabric_name = "target_recovery_fabric_name of site_recovery_network_mapping" 
   source_network_id = "source_network_id of site_recovery_network_mapping" 
   target_network_id = "target_network_id of site_recovery_network_mapping" 
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
| **var.name** | string  The name of the network mapping. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string  The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **var.source_recovery_fabric_name** | string  Specifies the ASR fabric where mapping should be created. Changing this forces a new resource to be created. | 
| **var.target_recovery_fabric_name** | string  The Azure Site Recovery fabric object corresponding to the recovery Azure region. Changing this forces a new resource to be created. | 
| **var.source_network_id** | string  The id of the primary network. Changing this forces a new resource to be created. | 
| **var.target_network_id** | string  The id of the recovery network. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Site Recovery Network Mapping. | 

Additionally, all variables are provided as outputs.
