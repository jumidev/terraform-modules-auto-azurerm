# azurerm_dev_center

Manages a Dev Center.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dev_center/dev_center"   
}

inputs = {
   location = "${location}"   
   name = "Specifies the name of this Dev Center"   
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
| **location** | string |  The Azure Region where the Dev Center should exist. Changing this forces a new Dev Center to be created. | 
| **name** | string |  Specifies the name of this Dev Center. Changing this forces a new Dev Center to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group within which this Dev Center should exist. Changing this forces a new Dev Center to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **identity** | [block](#identity-block-structure) |  An `identity` block. Specifies the Managed Identity which should be assigned to this Dev Center. | 
| **tags** | map |  A mapping of tags which should be assigned to the Dev Center. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `principal_id` | string | No | - | The Principal ID for the System-Assigned Managed Identity assigned to this Dev Center. |
| `tenant_id` | string | No | - | The Tenant ID for the System-Assigned Managed Identity assigned to this Dev Center. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Dev Center. | 
| **dev_center_uri** | string | No  | The URI of the Dev Center. | 

Additionally, all variables are provided as outputs.
