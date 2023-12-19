# azurerm_notification_hub_authorization_rule

Manages an Authorization Rule associated with a Notification Hub within a Notification Hub Namespace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/notification_hub_authorization_rule"   
}

inputs = {
   name = "The name to use for this Authorization Rule"   
   # notification_hub_name → set in component_inputs
   # namespace_name → set in component_inputs
   resource_group_name = "${resource_group}"   
}

component_inputs = {
   notification_hub_name = "path/to/notification_hub_component:name"   
   namespace_name = "path/to/eventhub_namespace_component:name"   
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
| **name** | string |  The name to use for this Authorization Rule. Changing this forces a new resource to be created. | 
| **notification_hub_name** | string |  The name of the Notification Hub for which the Authorization Rule should be created. Changing this forces a new resource to be created. | 
| **namespace_name** | string |  The name of the Notification Hub Namespace in which the Notification Hub exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **manage** | bool |  `False`  |  Does this Authorization Rule have Manage access to the Notification Hub? Defaults to `false`. | 
| **send** | bool |  `False`  |  Does this Authorization Rule have Send access to the Notification Hub? Defaults to `false`. | 
| **listen** | bool |  `False`  |  Does this Authorization Rule have Listen access to the Notification Hub? Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Authorization Rule. | 
| **primary_access_key** | string | Yes  | The Primary Access Key associated with this Authorization Rule. | 
| **secondary_access_key** | string | Yes  | The Secondary Access Key associated with this Authorization Rule. | 

Additionally, all variables are provided as outputs.
