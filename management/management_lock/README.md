# azurerm_management_lock

Manages a Management Lock which is scoped to a Subscription, Resource Group or Resource.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Management Lock. Changing this forces a new resource to be created. | 
| **scope** | string | True | -  |  -  | Specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created. | 
| **lock_level** | string | True | -  |  `CanNotDelete`, `ReadOnly`  | Specifies the Level to be used for this Lock. Possible values are `CanNotDelete` and `ReadOnly`. Changing this forces a new resource to be created. | 
| **notes** | string | False | -  |  -  | Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created. | 

