# azurerm_notification_hub_authorization_rule

Manages an Authorization Rule associated with a Notification Hub within a Notification Hub Namespace.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/notification_hub_authorization_rule" 
}

inputs = {
   name = "name of notification_hub_authorization_rule" 
   notification_hub_name = "notification_hub_name of notification_hub_authorization_rule" 
   namespace_name = "namespace_name of notification_hub_authorization_rule" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name to use for this Authorization Rule. Changing this forces a new resource to be created. | 
| **var.notification_hub_name** | string | True | -  |  The name of the Notification Hub for which the Authorization Rule should be created. Changing this forces a new resource to be created. | 
| **var.namespace_name** | string | True | -  |  The name of the Notification Hub Namespace in which the Notification Hub exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created. | 
| **var.manage** | bool | False | `False`  |  Does this Authorization Rule have Manage access to the Notification Hub? Defaults to `false`. | 
| **var.send** | bool | False | `False`  |  Does this Authorization Rule have Send access to the Notification Hub? Defaults to `false`. | 
| **var.listen** | bool | False | `False`  |  Does this Authorization Rule have Listen access to the Notification Hub? Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Authorization Rule. | 
| **primary_access_key** | string | No  | The Primary Access Key associated with this Authorization Rule. | 
| **secondary_access_key** | string | No  | The Secondary Access Key associated with this Authorization Rule. | 

Additionally, all variables are provided as outputs.
