# azurerm_load_test

Manages a Load Test Service.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.location** | string | True | The Azure Region where the Load Test should exist. Changing this forces a new Load Test to be created. | 
| **var.name** | string | True | Specifies the name of this Load Test. Changing this forces a new Load Test to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group within which this Load Test should exist. Changing this forces a new Load Test to be created. | 
| **var.description** | string | False | Description of the resource. Changing this forces a new Load Test to be created. | 
| **var.identity** | block | False | An `identity` block. Specifies the Managed Identity which should be assigned to this Load Test. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Load Test. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **description** | string  | - | 
| **identity** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Load Test. | 
| **data_plane_uri** | string  | Resource data plane URI. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "load_test/load_test" 
}

inputs = {
   location = "${location}" 
   name = "name of load_test" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```