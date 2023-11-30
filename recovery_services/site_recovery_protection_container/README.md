# azurerm_site_recovery_protection_container

Manages a Azure Site Recovery protection container. Protection containers serve as containers for replicated VMs and belong to a single region / recovery fabric. Protection containers can contain more than one replicated VM. To replicate a VM, a container must exist in both the source and target Azure regions.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/site_recovery_protection_container" 
}

inputs = {
   name = "name of site_recovery_protection_container" 
   resource_group_name = "${resource_group}" 
   recovery_vault_name = "recovery_vault_name of site_recovery_protection_container" 
   recovery_fabric_name = "recovery_fabric_name of site_recovery_protection_container" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the protection container. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **var.recovery_fabric_name** | string | True | Name of fabric that should contain this protection container. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Site Recovery Protection Container. | 

Additionally, all variables are provided as outputs.
