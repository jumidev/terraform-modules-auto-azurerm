# azurerm_api_management_product_policy

Manages an API Management Product Policy

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.product_id** | string | True | The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.xml_content** | string | False | The XML Content for this Policy. | 
| **var.xml_link** | string | False | A link to a Policy XML Document, which must be publicly available. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **product_id** | string  | - | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **xml_content** | string  | - | 
| **xml_link** | string  | - | 
| **id** | string  | The ID of the API Management Product Policy. | 