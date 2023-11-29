# azurerm_api_management_notification_recipient_user

Manages a API Management Notification Recipient User.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.api_management_id** | string | True | -  |  -  | The ID of the API Management Service from which to create this Notification Recipient User. Changing this forces a new API Management Notification Recipient User to be created. | 
| **var.user_id** | string | True | -  |  -  | The recipient user ID. Changing this forces a new API Management Notification Recipient User to be created. | 
| **var.notification_type** | string | True | -  |  `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, `RequestPublisherNotificationMessage`  | The Notification Name to be received. Changing this forces a new API Management Notification Recipient User to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_id** | string  | - | 
| **user_id** | string  | - | 
| **notification_type** | string  | - | 
| **id** | string  | The ID of the API Management Notification Recipient User. | 