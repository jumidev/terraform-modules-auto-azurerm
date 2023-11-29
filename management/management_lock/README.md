# azurerm_management_lock

Manages a Management Lock which is scoped to a Subscription, Resource Group or Resource.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Management Lock. Changing this forces a new resource to be created. | 
| **var.scope** | string | True | -  |  Specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created. | 
| **var.lock_level** | string | True | `CanNotDelete`, `ReadOnly`  |  Specifies the Level to be used for this Lock. Possible values are `CanNotDelete` and `ReadOnly`. Changing this forces a new resource to be created. | 
| **var.notes** | string | False | -  |  Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **scope** | string  | - | 
| **lock_level** | string  | - | 
| **notes** | string  | - | 
| **id** | string  | The ID of the Management Lock | 