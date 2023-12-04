# azurerm_management_group

Manages a Management Group.!> **Note:** Configuring `subscription_ids` is not supported when using the `azurerm_management_group_subscription_association` resource, results will be unpredictable.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "management/management_group" 
}

inputs = {
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```
### 1 optional associated resource

| tfstate_input variable | Information |
| -------- | ----------- |
| **subscription_id** | If set to a valid `azurerm_subscription` `subscription_id`, makes a **azurerm_management_group_subscription_association** - Manages a Management Group Subscription Association.!> **Note:** When using this resource, configuring `subscription_ids` on the `azurerm_management_group` resource is not supported.|

### using associated resources

```hcl
tfstate_inputs = {
   subscription_id = "path/to/subscription_component:subscription_id"
}
```


## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created. | 
| **display_name** | string |  A friendly name for this Management Group. If not specified, this will be the same as the `name`. | 
| **parent_management_group_id** | string |  The ID of the Parent Management Group. | 
| **subscription_ids** | list |  A list of Subscription GUIDs which should be assigned to the Management Group. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Management Group. | 

Additionally, all variables are provided as outputs.
