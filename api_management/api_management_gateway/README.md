# azurerm_api_management_gateway

Manages an API Management Gateway.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_gateway" 
}

inputs = {
   name = "name of api_management_gateway" 
   api_management_id = "api_management_id of api_management_gateway" 
   location_data = {
      example_location_data = {
      }
  
   }
 
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
| **var.name** | string | True | The name which should be used for the API Management Gateway. Changing this forces a new API Management Gateway to be created. | 
| **var.api_management_id** | string | True | The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created. | 
| **var.location_data** | block | True | A `location_data` block. | 
| **var.description** | string | False | The description of the API Management Gateway. | 

### `location_data` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `city` | string | No | - | The city or locality where the resource is located. |
| `district` | string | No | - | The district, state, or province where the resource is located. |
| `region` | string | No | - | The country or region where the resource is located. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Gateway. | 

Additionally, all variables are provided as outputs.
