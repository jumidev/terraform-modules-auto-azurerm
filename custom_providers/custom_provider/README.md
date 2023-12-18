# azurerm_custom_provider

Manages an Azure Custom Provider.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "custom_providers/custom_provider"   
}

inputs = {
   name = "Specifies the name of the Custom Provider"   
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
| **name** | string |  Specifies the name of the Custom Provider. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Custom Provider. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **resource_type** | [block](#resource_type-block-structure) |  Any number of `resource_type` block. One of `resource_type` or `action` must be specified. | 
| **action** | [block](#action-block-structure) |  Any number of `action` block. One of `resource_type` or `action` must be specified. | 
| **validation** | [block](#validation-block-structure) |  Any number of `validation` block. | 
| **tags** | map |  A mapping of tags to assign to the resource. Changing this forces a new resource to be created. | 

### `validation` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `specification` | string | Yes | - | The endpoint where the validation specification is located. |

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the action. |
| `endpoint` | string | Yes | - | Specifies the endpoint of the action. |

### `resource_type` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the route definition. |
| `endpoint` | string | Yes | - | Specifies the endpoint of the route definition. |
| `routing_type` | string | No | Proxy | The routing type that is supported for the resource request. Valid values are 'Proxy' and 'Proxy,Cache'. Defaults to 'Proxy'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Custom Provider. | 

Additionally, all variables are provided as outputs.
