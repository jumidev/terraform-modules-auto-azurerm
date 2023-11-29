# azurerm_application_security_group

Manages an Application Security Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Application Security Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Application Security Group. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

# azurerm_private_endpoint_application_security_group_association

Manages an association between Private Endpoint and Application Security Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **application_security_group_id** | string | False | -  |  -  | The id of application security group to associate. Changing this forces a new resource to be created. | 
| **private_endpoint_id** | string | False | -  |  -  | The id of private endpoint to associate. Changing this forces a new resource to be created. | 

