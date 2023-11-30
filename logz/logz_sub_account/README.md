# azurerm_logz_sub_account

Manages a logz Sub Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logz/logz_sub_account" 
}

inputs = {
   name = "name of logz_sub_account" 
   logz_monitor_id = "logz_monitor_id of logz_sub_account" 
   user = {
      example_user = {
         email = "..."   
         first_name = "..."   
         last_name = "..."   
         phone_number = "..."   
      }
  
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
| **var.name** | string  The name which should be used for this logz Sub Account. Possible values must be between 1 and 32 characters in length and may contain only letters, numbers, hyphens and underscores. Changing this forces a new logz Sub Account to be created. | 
| **var.logz_monitor_id** | string  The ID of the Logz Monitor. Changing this forces a new logz Sub Account to be created. | 
| **var.user** | block  A `user` block. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.enabled** | bool  `True`  |  Whether the resource monitoring is enabled? Defaults to `true`. | 
| **var.tags** | map  -  |  A mapping of tags which should be assigned to the logz Sub Account. | 

### `user` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | string | Yes | - | Email of the user used by Logz for contacting them if needed. A valid email address consists of an email prefix and an email domain. The prefix and domain may contain only letters, numbers, underscores, periods and dashes. Changing this forces a new logz Sub Account to be created. |
| `first_name` | string | Yes | - | First Name of the user. Possible values must be between 1 and 50 characters in length. Changing this forces a new logz Sub Account to be created. |
| `last_name` | string | Yes | - | Last Name of the user. Possible values must be between 1 and 50 characters in length. Changing this forces a new logz Sub Account to be created. |
| `phone_number` | string | Yes | - | Phone number of the user used by Logz for contacting them if needed. Possible values must be between 1 and 40 characters in length. Changing this forces a new logz Sub Account to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the logz Sub Account. | 

Additionally, all variables are provided as outputs.
