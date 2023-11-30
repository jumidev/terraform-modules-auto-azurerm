# azurerm_management_lock

Manages a Management Lock which is scoped to a Subscription, Resource Group or Resource.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "management/management_lock" 
}

inputs = {
   name = "name of management_lock" 
   scope = "scope of management_lock" 
   lock_level = "lock_level of management_lock" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Management Lock. Changing this forces a new resource to be created. | 
| **var.scope** | string | True | -  |  Specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created. | 
| **var.lock_level** | string | True | `CanNotDelete`, `ReadOnly`  |  Specifies the Level to be used for this Lock. Possible values are `CanNotDelete` and `ReadOnly`. Changing this forces a new resource to be created. | 
| **var.notes** | string | False | -  |  Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Management Lock | 

Additionally, all variables are provided as outputs.
