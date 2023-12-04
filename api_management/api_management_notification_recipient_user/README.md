# azurerm_api_management_notification_recipient_user

Manages a API Management Notification Recipient User.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_notification_recipient_user" 
}

inputs = {
   # api_management_id → set in tfstate_inputs
   user_id = "user_id of api_management_notification_recipient_user" 
   notification_type = "notification_type of api_management_notification_recipient_user" 
}

tfstate_inputs = {
   api_management_id = "path/to/api_management_component:id" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **api_management_id** | string |  -  |  The ID of the API Management Service from which to create this Notification Recipient User. Changing this forces a new API Management Notification Recipient User to be created. | 
| **user_id** | string |  -  |  The recipient user ID. Changing this forces a new API Management Notification Recipient User to be created. | 
| **notification_type** | string |  `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, `RequestPublisherNotificationMessage`  |  The Notification Name to be received. Changing this forces a new API Management Notification Recipient User to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Notification Recipient User. | 

Additionally, all variables are provided as outputs.
