# azurerm_managed_application

Manages a Managed Application.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "managed_applications/managed_application"   
}

inputs = {
   name = "Specifies the name of the Managed Application"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   kind = "The kind of the managed application to deploy"   
   managed_resource_group_name = "The name of the target resource group where all the resources deployed by the ma..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Managed Application. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Managed Application should exist. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **kind** | string |  `MarketPlace`, `ServiceCatalog`  |  The kind of the managed application to deploy. Possible values are `MarketPlace` and `ServiceCatalog`. Changing this forces a new resource to be created. | 
| **managed_resource_group_name** | string |  -  |  The name of the target resource group where all the resources deployed by the managed application will reside. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **application_definition_id** | string |  The application definition ID to deploy. | 
| **parameters** | string |  A mapping of name and value pairs to pass to the managed application as parameters. | 
| **parameter_values** | string |  The parameter values to pass to the Managed Application. This field is a JSON object that allows you to assign parameters to this Managed Application. | 
| **plan** | [block](#plan-block-structure) |  One `plan` block. Changing this forces a new resource to be created. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the plan from the marketplace. Changing this forces a new resource to be created. |
| `product` | string | Yes | - | Specifies the product of the plan from the marketplace. Changing this forces a new resource to be created. |
| `publisher` | string | Yes | - | Specifies the publisher of the plan. Changing this forces a new resource to be created. |
| `version` | string | Yes | - | Specifies the version of the plan from the marketplace. Changing this forces a new resource to be created. |
| `promotion_code` | string | No | - | Specifies the promotion code to use with the plan. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Managed Application. | 
| **outputs** | string | No  | The name and value pairs that define the managed application outputs. | 

Additionally, all variables are provided as outputs.
