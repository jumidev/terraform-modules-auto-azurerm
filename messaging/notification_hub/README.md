# azurerm_notification_hub

Manages a Notification Hub within a Notification Hub Namespace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/notification_hub"   
}

inputs = {
   name = "The name to use for this Notification Hub"   
   # namespace_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   location = "${location}"   
}

tfstate_inputs = {
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
| **name** | string |  The name to use for this Notification Hub. Changing this forces a new resource to be created. | 
| **namespace_name** | string |  The name of the Notification Hub Namespace in which to create this Notification Hub. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure Region in which this Notification Hub Namespace exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **apns_credential** | [block](#apns_credential-block-structure) |  A `apns_credential` block. | 
| **gcm_credential** | [block](#gcm_credential-block-structure) |  A `gcm_credential` block. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `gcm_credential` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `api_key` | string | Yes | - | The API Key associated with the Google Cloud Messaging service. |

### `apns_credential` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `application_mode` | string | Yes | - | The Application Mode which defines which server the APNS Messages should be sent to. Possible values are 'Production' and 'Sandbox'. |
| `bundle_id` | string | Yes | - | The Bundle ID of the iOS/macOS application to send push notifications for, such as 'com.hashicorp.example'. |
| `key_id` | string | Yes | - | The Apple Push Notifications Service (APNS) Key. |
| `team_id` | string | Yes | - | The ID of the team the Token. |
| `token` | string | Yes | - | The Push Token associated with the Apple Developer Account. This is the contents of the 'key' downloaded from [the Apple Developer Portal](https://developer.apple.com/account/ios/authkey/) between the '-----BEGIN PRIVATE KEY-----' and '-----END PRIVATE KEY-----' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Notification Hub. | 

Additionally, all variables are provided as outputs.
