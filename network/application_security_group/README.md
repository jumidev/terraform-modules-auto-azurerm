# azurerm_application_security_group

Manages an Application Security Group.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Application Security Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the Application Security Group. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 


### 1 optional associated resource

| Variable | Information |
| -------- | ----------- |
| **var.private_endpoint_id** | If set to a valid `azurerm_private_endpoint` `id`, makes a **azurerm_private_endpoint_application_security_group_association** - Manages an association between Private Endpoint and Application Security Group. | 

## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Application Security Group. | 