# azurerm_application_load_balancer_frontend

Manages an Application Gateway for Containers Frontend.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Application Gateway for Containers Frontend. Changing this forces a new resource to be created. | 
| **application_load_balancer_id** | string | True | -  |  -  | The ID of the Application Gateway for Containers. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Application Gateway for Containers Frontend. | 

