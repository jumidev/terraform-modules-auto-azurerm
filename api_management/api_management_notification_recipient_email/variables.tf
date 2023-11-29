# REQUIRED VARIABLES

variable "api_management_id" {
  description = "(REQUIRED) The ID of the API Management Service from which to create this Notification Recipient Email. Changing this forces a new API Management Notification Recipient Email to be created."
  type        = string

}
variable "email" {
  description = "(REQUIRED) The recipient email address. Changing this forces a new API Management Notification Recipient Email to be created."
  type        = string

}
variable "notification_type" {
  description = "(REQUIRED) The Notification Name to be received. Changing this forces a new API Management Notification Recipient Email to be created. Possible values are 'AccountClosedPublisher', 'BCC', 'NewApplicationNotificationMessage', 'NewIssuePublisherNotificationMessage', 'PurchasePublisherNotificationMessage', 'QuotaLimitApproachingPublisherNotificationMessage', and 'RequestPublisherNotificationMessage'."
  type        = string

}
