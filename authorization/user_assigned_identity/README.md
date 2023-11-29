# azurerm_user_assigned_identity

Manages a User Assigned Identity.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.location** | string | True | The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created. | 
| **var.name** | string | True | Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group within which this User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the User Assigned Identity. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the User Assigned Identity. | 
| **client_id** | string  | The ID of the app associated with the Identity. | 
| **principal_id** | string  | The ID of the Service Principal object associated with the created Identity. | 
| **tenant_id** | string  | The ID of the Tenant which the Identity belongs to. | 