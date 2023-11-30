# azurerm_notification_hub

Manages a Notification Hub within a Notification Hub Namespace.

## Example minimal component.hclt

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

### `apns_credential` block structure

> `application_mode` (string): (REQUIRED) The Application Mode which defines which server the APNS Messages should be sent to. Possible values are 'Production' and 'Sandbox'.
> `bundle_id` (string): (REQUIRED) The Bundle ID of the iOS/macOS application to send push notifications for, such as 'com.hashicorp.example'.
> `key_id` (string): (REQUIRED) The Apple Push Notifications Service (APNS) Key.
> `team_id` (string): (REQUIRED) The ID of the team the Token.
> `token` (string): (REQUIRED) The Push Token associated with the Apple Developer Account. This is the contents of the 'key' downloaded from [the Apple Developer Portal](https://developer.apple.com/account/ios/authkey/) between the '-----BEGIN PRIVATE KEY-----' and '-----END PRIVATE KEY-----' blocks.

### `gcm_credential` block structure

> `api_key` (string): (REQUIRED) The API Key associated with the Google Cloud Messaging service.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Notification Hub. | 

Additionally, all variables are provided as outputs.
