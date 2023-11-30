# azurerm_api_management_notification_recipient_email

Manages a API Management Notification Recipient Email.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.api_management_id** | string | True | -  |  The ID of the API Management Service from which to create this Notification Recipient Email. Changing this forces a new API Management Notification Recipient Email to be created. | 
| **var.email** | string | True | -  |  The recipient email address. Changing this forces a new API Management Notification Recipient Email to be created. | 
| **var.notification_type** | string | True | `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, `RequestPublisherNotificationMessage`  |  The Notification Name to be received. Changing this forces a new API Management Notification Recipient Email to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_id** | string  | - | 
| **email** | string  | - | 
| **notification_type** | string  | - | 
| **id** | string  | The ID of the API Management Notification Recipient Email. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_notification_recipient_email" 
}

inputs = {
   api_management_id = "api_management_id of api_management_notification_recipient_email" 
   email = "email of api_management_notification_recipient_email" 
   notification_type = "notification_type of api_management_notification_recipient_email" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```