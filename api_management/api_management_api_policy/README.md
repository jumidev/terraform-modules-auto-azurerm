# azurerm_api_management_api_policy

Manages an API Management API Policy

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_name** | string | True | The ID of the API Management API within the API Management Service. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.xml_content** | string | False | The XML Content for this Policy as a string. An XML file can be used here with Terraform's [file function](https://www.terraform.io/docs/configuration/functions/file.html) that is similar to Microsoft's `PolicyFilePath` option. | 
| **var.xml_link** | string | False | A link to a Policy XML Document, which must be publicly available. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_name** | string  | - | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **xml_content** | string  | - | 
| **xml_link** | string  | - | 
| **id** | string  | The ID of the API Management API Policy. | 