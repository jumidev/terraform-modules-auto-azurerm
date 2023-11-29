# azurerm_application_load_balancer

Manages an Application Gateway for Containers (ALB).

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Application Gateway for Containers (ALB). Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of Resource Group where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Application Gateway for Containers (ALB). | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Application Gateway for Containers (ALB). | 
| **primary_configuration_endpoint** | string  | The primary configuration endpoints of the Application Gateway for Containers (ALB). | 