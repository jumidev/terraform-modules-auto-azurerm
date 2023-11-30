# azurerm_management_group

Manages a Management Group.!> **Note:** Configuring `subscription_ids` is not supported when using the `azurerm_management_group_subscription_association` resource, results will be unpredictable.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | False | The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created. | 
| **var.display_name** | string | False | A friendly name for this Management Group. If not specified, this will be the same as the `name`. | 
| **var.parent_management_group_id** | string | False | The ID of the Parent Management Group. | 
| **var.subscription_ids** | list | False | A list of Subscription GUIDs which should be assigned to the Management Group. | 


### 1 optional associated resource

| Variable | Information |
| -------- | ----------- |
| **var.subscription_id** | If set to a valid `azurerm_subscription` `subscription_id`, makes a **azurerm_management_group_subscription_association** - Manages a Management Group Subscription Association.!> **Note:** When using this resource, configuring `subscription_ids` on the `azurerm_management_group` resource is not supported. | 

## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **display_name** | string  | - | 
| **parent_management_group_id** | string  | - | 
| **subscription_ids** | list  | - | 
| **id** | string  | The ID of the Management Group. | 

## Example minimal hclt

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