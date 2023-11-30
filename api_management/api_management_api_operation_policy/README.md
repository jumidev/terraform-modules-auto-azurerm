# azurerm_api_management_api_operation_policy

Manages an API Management API Operation Policy

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.api_name** | string |  The name of the API within the API Management Service where the Operation exists. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string |  The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.operation_id** | string |  The operation identifier within an API. Must be unique in the current API Management service instance. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.xml_content** | string |  The XML Content for this Policy. | 
| **var.xml_link** | string |  A link to a Policy XML Document, which must be publicly available. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API Operation Policy. | 

Additionally, all variables are provided as outputs.
