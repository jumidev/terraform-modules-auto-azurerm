# azurerm_user_assigned_identity

Manages a User Assigned Identity.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created. | 
| **name** | string | True | -  |  -  | Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group within which this User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the User Assigned Identity. | 

