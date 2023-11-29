# azurerm_resource_management_private_link

Manages a Resource Management Private Link to restrict access for managing resources in the tenant.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of this Resource Management Private Link. Changing this forces a new Resource Management Private Link to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group within which this Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created. | 
| **var.location** | string | True | The Azure Region where the Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **id** | string  | The ID of the Resource Management Private Link. | 