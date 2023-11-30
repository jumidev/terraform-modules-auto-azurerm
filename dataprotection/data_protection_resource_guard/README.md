# azurerm_data_protection_resource_guard

Manages a Resource Guard.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dataprotection/data_protection_resource_guard" 
}

inputs = {
   name = "name of data_protection_resource_guard" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
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
| **var.name** | string |  The name of the Resource Guard. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Resource Guard should exist. Changing this forces a new resource to be created. | 
| **var.location** | string |  The Azure Region where the Resource Guard should exist. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.vault_critical_operation_exclusion_list** | list |  A list of the critical operations which are not protected by this Resource Guard. | 
| **var.tags** | map |  A mapping of tags which should be assigned to the Resource Guard. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Resource Guard. | 

Additionally, all variables are provided as outputs.
