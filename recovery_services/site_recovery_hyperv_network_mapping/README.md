# azurerm_site_recovery_hyperv_network_mapping

Manages a HyperV site recovery network mapping on Azure. A HyperV network mapping decides how to translate connected networks when a VM is migrated from HyperV VMM Center to Azure.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/site_recovery_hyperv_network_mapping" 
}

inputs = {
   name = "name of site_recovery_hyperv_network_mapping" 
   recovery_vault_id = "recovery_vault_id of site_recovery_hyperv_network_mapping" 
   source_system_center_virtual_machine_manager_name = "source_system_center_virtual_machine_manager_name of site_recovery_hyperv_network_mapping" 
   source_network_name = "source_network_name of site_recovery_hyperv_network_mapping" 
   target_network_id = "target_network_id of site_recovery_hyperv_network_mapping" 
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
| **var.name** | string  The name of the HyperV network mapping. Changing this forces a new resource to be created. | 
| **var.recovery_vault_id** | string  The ID of the Recovery Services Vault where the HyperV network mapping should be created. Changing this forces a new resource to be created. | 
| **var.source_system_center_virtual_machine_manager_name** | string  Specifies the name of source System Center Virtual Machine Manager where the source network exists. Changing this forces a new resource to be created. | 
| **var.source_network_name** | string  The Name of the primary network. Changing this forces a new resource to be created. | 
| **var.target_network_id** | string  The id of the recovery network. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Site Recovery HyperV Network Mapping. | 

Additionally, all variables are provided as outputs.
