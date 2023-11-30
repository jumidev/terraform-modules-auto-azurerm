# azurerm_api_management_logger

Manages a Logger within an API Management Service.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of this Logger, which must be unique within the API Management Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | -  |  The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.application_insights** | block | False | -  |  An `application_insights` block. Changing this forces a new resource to be created. | 
| **var.buffered** | bool | False | `True`  |  Specifies whether records should be buffered in the Logger prior to publishing. Defaults to `true`. | 
| **var.description** | string | False | -  |  A description of this Logger. | 
| **var.eventhub** | block | False | -  |  An `eventhub` block. Changing this forces a new resource to be created. | 
| **var.resource_id** | string | False | -  |  The target resource id which will be linked in the API-Management portal page. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **api_management_name** | string  | - | 
| **application_insights** | block  | - | 
| **buffered** | bool  | - | 
| **description** | string  | - | 
| **eventhub** | block  | - | 
| **resource_id** | string  | - | 
| **id** | string  | The ID of the API Management Logger. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_logger" 
}

inputs = {
   name = "name of api_management_logger" 
   resource_group_name = "${resource_group}" 
   api_management_name = "api_management_name of api_management_logger" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```