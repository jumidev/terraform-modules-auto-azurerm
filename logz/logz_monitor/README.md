# azurerm_logz_monitor

Manages a logz Monitor.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "logz/logz_monitor"   
}

inputs = {
   name = "The name which should be used for this logz Monitor..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   plan = {
      billing_cycle = "..."      
      effective_date = "..."      
      usage_type = "..."      
   }
   
   user = {
      email = "..."      
      first_name = "..."      
      last_name = "..."      
      phone_number = "..."      
   }
   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this logz Monitor. Changing this forces a new logz Monitor to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the logz Monitor should exist. Changing this forces a new logz Monitor to be created. | 
| **location** | string |  The Azure Region where the logz Monitor should exist. Changing this forces a new logz Monitor to be created. | 
| **plan** | [block](#plan-block-structure) |  A `plan` block. Changing this forces a new resource to be created. | 
| **user** | [block](#user-block-structure) |  A `user` block. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **company_name** | string |  -  |  Name of the Logz organization. Changing this forces a new logz Monitor to be created. | 
| **enterprise_app_id** | string |  -  |  The ID of the Enterprise App. Changing this forces a new logz Monitor to be created. | 
| **enabled** | bool |  `True`  |  Whether the resource monitoring is enabled? Defaults to `true`. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the logz Monitor. | 

### `user` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | string | Yes | - | Email of the user used by Logz for contacting them if needed. Changing this forces a new logz Monitor to be created. |
| `first_name` | string | Yes | - | First Name of the user. Changing this forces a new logz Monitor to be created. |
| `last_name` | string | Yes | - | Last Name of the user. Changing this forces a new logz Monitor to be created. |
| `phone_number` | number | Yes | - | Phone number of the user used by Logz for contacting them if needed. Changing this forces a new logz Monitor to be created. |

### `plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `billing_cycle` | string | Yes | - | Different billing cycles. Possible values are 'MONTHLY' or 'WEEKLY'. Changing this forces a new logz Monitor to be created. |
| `effective_date` | string | Yes | - | Date when plan was applied. Changing this forces a new logz Monitor to be created. |
| `usage_type` | string | Yes | - | Different usage types. Possible values are 'PAYG' or 'COMMITTED'. Changing this forces a new logz Monitor to be created. |
| `plan_id` | string | No | 100gb14days | Plan id as published by Logz. The only possible value is '100gb14days'. Defaults to '100gb14days'. Changing this forces a new logz Monitor to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the logz Monitor. | 
| **single_sign_on_url** | string | No  | The single sign on url associated with the logz organization of this logz Monitor. | 
| **logz_organization_id** | string | No  | The ID associated with the logz organization of this logz Monitor. | 

Additionally, all variables are provided as outputs.
