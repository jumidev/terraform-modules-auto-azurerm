# azurerm_application_load_balancer_frontend

Manages an Application Gateway for Containers Frontend.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Application Gateway for Containers Frontend. Changing this forces a new resource to be created. | 
| **var.application_load_balancer_id** | string | True | The ID of the Application Gateway for Containers. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Application Gateway for Containers Frontend. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **application_load_balancer_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Application Gateway for Containers Frontend. | 
| **fully_qualified_domain_name** | string  | The Fully Qualified Domain Name of the DNS record associated to an Application Gateway for Containers Frontend. | 