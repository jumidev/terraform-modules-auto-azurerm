# azurerm_load_test

Manages a Load Test Service.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **location** | string |  The Azure Region where the Load Test should exist. Changing this forces a new Load Test to be created. | 
| **name** | string |  Specifies the name of this Load Test. Changing this forces a new Load Test to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group within which this Load Test should exist. Changing this forces a new Load Test to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  Description of the resource. Changing this forces a new Load Test to be created. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block. Specifies the Managed Identity which should be assigned to this Load Test. | 
| **tags** | map |  A mapping of tags which should be assigned to the Load Test. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `principal_id` | string | No | - | The Principal ID for the System-Assigned Managed Identity assigned to this Load Test. |
| `tenant_id` | string | No | - | The Tenant ID for the System-Assigned Managed Identity assigned to this Load Test. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Load Test. | 
| **data_plane_uri** | string | No  | Resource data plane URI. | 

Additionally, all variables are provided as outputs.
