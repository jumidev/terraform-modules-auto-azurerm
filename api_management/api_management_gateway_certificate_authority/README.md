# azurerm_api_management_gateway_certificate_authority

Manages an API Management Gateway Certificate Authority.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_gateway_certificate_authority"   
}

inputs = {
   # api_management_id → set in component_inputs
   certificate_name = "The name of the API Management Certificate"   
   gateway_name = "The name of the API Management Gateway"   
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
| **api_management_id** | string |  The ID of the API Management Service. Changing this forces a new resource to be created. | 
| **certificate_name** | string |  The name of the API Management Certificate. Changing this forces a new resource to be created. | 
| **gateway_name** | string |  The name of the API Management Gateway. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **is_trusted** | bool |  Whether the API Management Gateway Certificate Authority is trusted. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Gateway Certificate Authority. | 

Additionally, all variables are provided as outputs.
