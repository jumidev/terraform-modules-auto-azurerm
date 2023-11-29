# azurerm_management_group

Manages a Management Group.!> **Note:** Configuring `subscription_ids` is not supported when using the `azurerm_management_group_subscription_association` resource, results will be unpredictable.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | False | -  |  -  | The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created. | 
| **display_name** | string | False | -  |  -  | A friendly name for this Management Group. If not specified, this will be the same as the `name`. | 
| **parent_management_group_id** | string | False | -  |  -  | The ID of the Parent Management Group. | 
| **subscription_ids** | list | False | -  |  -  | A list of Subscription GUIDs which should be assigned to the Management Group. | 

# azurerm_management_group_subscription_association

Manages a Management Group Subscription Association.!> **Note:** When using this resource, configuring `subscription_ids` on the `azurerm_management_group` resource is not supported.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **management_group_id** | string | False | -  |  -  | The ID of the Management Group to associate the Subscription with. Changing this forces a new Management to be created. | 
| **subscription_id** | string | False | -  |  -  | The ID of the Subscription to be associated with the Management Group. Changing this forces a new Management to be created. | 

