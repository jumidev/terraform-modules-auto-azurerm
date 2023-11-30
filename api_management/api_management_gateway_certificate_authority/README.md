# azurerm_api_management_gateway_certificate_authority

Manages an API Management Gateway Certificate Authority.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_management_id** | string | True | The ID of the API Management Service. Changing this forces a new resource to be created. | 
| **var.certificate_name** | string | True | The name of the API Management Certificate. Changing this forces a new resource to be created. | 
| **var.gateway_name** | string | True | The name of the API Management Gateway. Changing this forces a new resource to be created. | 
| **var.is_trusted** | bool | False | Whether the API Management Gateway Certificate Authority is trusted. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_id** | string  | - | 
| **certificate_name** | string  | - | 
| **gateway_name** | string  | - | 
| **is_trusted** | bool  | - | 
| **id** | string  | The ID of the API Management Gateway Certificate Authority. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_gateway_certificate_authority" 
}

inputs = {
   api_management_id = "api_management_id of api_management_gateway_certificate_authority" 
   certificate_name = "certificate_name of api_management_gateway_certificate_authority" 
   gateway_name = "gateway_name of api_management_gateway_certificate_authority" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```