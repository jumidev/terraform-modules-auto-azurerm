# azurerm_notification_hub

Manages a Notification Hub within a Notification Hub Namespace.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name to use for this Notification Hub. Changing this forces a new resource to be created. | 
| **var.namespace_name** | string | True | The name of the Notification Hub Namespace in which to create this Notification Hub. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region in which this Notification Hub Namespace exists. Changing this forces a new resource to be created. | 
| **var.apns_credential** | block | False | A `apns_credential` block. | 
| **var.gcm_credential** | block | False | A `gcm_credential` block. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **namespace_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **apns_credential** | block  | - | 
| **gcm_credential** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Notification Hub. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/notification_hub" 
}

inputs = {
   name = "name of notification_hub" 
   namespace_name = "namespace_name of notification_hub" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```