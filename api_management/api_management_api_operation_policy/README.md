# azurerm_api_management_api_operation_policy

Manages an API Management API Operation Policy

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_name** | string | True | The name of the API within the API Management Service where the Operation exists. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.operation_id** | string | True | The operation identifier within an API. Must be unique in the current API Management service instance. Changing this forces a new resource to be created. | 
| **var.xml_content** | string | False | The XML Content for this Policy. | 
| **var.xml_link** | string | False | A link to a Policy XML Document, which must be publicly available. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_name** | string  | - | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **operation_id** | string  | - | 
| **xml_content** | string  | - | 
| **xml_link** | string  | - | 
| **id** | string  | The ID of the API Management API Operation Policy. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_api_operation_policy" 
}

inputs = {
   api_name = "api_name of api_management_api_operation_policy" 
   api_management_name = "api_management_name of api_management_api_operation_policy" 
   resource_group_name = "${resource_group}" 
   operation_id = "operation_id of api_management_api_operation_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```