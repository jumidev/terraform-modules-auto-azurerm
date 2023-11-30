# azurerm_api_management_notification_recipient_user

Manages a API Management Notification Recipient User.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_notification_recipient_user" 
}

inputs = {
   api_management_id = "api_management_id of api_management_notification_recipient_user" 
   user_id = "user_id of api_management_notification_recipient_user" 
   notification_type = "notification_type of api_management_notification_recipient_user" 
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
| **var.api_management_id** | string |  -  |  The ID of the API Management Service from which to create this Notification Recipient User. Changing this forces a new API Management Notification Recipient User to be created. | 
| **var.user_id** | string |  -  |  The recipient user ID. Changing this forces a new API Management Notification Recipient User to be created. | 
| **var.notification_type** | string |  `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, `RequestPublisherNotificationMessage`  |  The Notification Name to be received. Changing this forces a new API Management Notification Recipient User to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Notification Recipient User. | 

Additionally, all variables are provided as outputs.
