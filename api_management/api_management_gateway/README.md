# azurerm_api_management_gateway

Manages an API Management Gateway.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_gateway"   
}

inputs = {
   name = "The name which should be used for the API Management Gateway..."   
   # api_management_id → set in component_inputs
   location_data = {
      name = "..."      
   }
   
}

component_inputs = {
   api_management_id = "path/to/api_management_component:id"   
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
| **name** | string |  The name which should be used for the API Management Gateway. Changing this forces a new API Management Gateway to be created. | 
| **api_management_id** | string |  The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created. | 
| **location_data** | [block](#location_data-block-structure) |  A `location_data` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description of the API Management Gateway. | 

### `location_data` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | A canonical name for the geographic or physical location. |
| `city` | string | No | - | The city or locality where the resource is located. |
| `district` | string | No | - | The district, state, or province where the resource is located. |
| `region` | string | No | - | The country or region where the resource is located. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Gateway. | 

Additionally, all variables are provided as outputs.
