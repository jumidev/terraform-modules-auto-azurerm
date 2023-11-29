# azurerm_resource_management_private_link

Manages a Resource Management Private Link to restrict access for managing resources in the tenant.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of this Resource Management Private Link. Changing this forces a new Resource Management Private Link to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group within which this Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created. | 

