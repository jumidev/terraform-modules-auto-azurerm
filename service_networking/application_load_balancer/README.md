# azurerm_application_load_balancer

Manages an Application Gateway for Containers (ALB).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Application Gateway for Containers (ALB). Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of Resource Group where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Application Gateway for Containers (ALB). | 

