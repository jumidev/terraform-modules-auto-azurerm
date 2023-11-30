# azurerm_site_recovery_fabric

Manages a Azure Site Recovery Replication Fabric within a Recovery Services vault. Only Azure fabrics are supported at this time. Replication Fabrics serve as a container within an Azure region for other Site Recovery resources such as protection containers, protected items, network mappings.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/site_recovery_fabric" 
}

inputs = {
   name = "name of site_recovery_fabric" 
   resource_group_name = "${resource_group}" 
   recovery_vault_name = "recovery_vault_name of site_recovery_fabric" 
   location = "${location}" 
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
| **var.name** | string | True | The name of the network mapping. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **var.location** | string | True | In what region should the fabric be located. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Site Recovery Fabric. | 

Additionally, all variables are provided as outputs.
