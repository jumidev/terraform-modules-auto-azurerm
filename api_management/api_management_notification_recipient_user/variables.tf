# REQUIRED VARIABLES

variable "api_management_id" {
  description = "(REQUIRED) The ID of the API Management Service from which to create this Notification Recipient User. Changing this forces a new API Management Notification Recipient User to be created."
  type        = string

}
variable "user_id" {
  description = "(REQUIRED) The recipient user ID. Changing this forces a new API Management Notification Recipient User to be created."
  type        = string

}
variable "notification_type" {
  description = "(REQUIRED) The Notification Name to be received. Changing this forces a new API Management Notification Recipient User to be created. Possible values are 'AccountClosedPublisher', 'BCC', 'NewApplicationNotificationMessage', 'NewIssuePublisherNotificationMessage', 'PurchasePublisherNotificationMessage', 'QuotaLimitApproachingPublisherNotificationMessage', and 'RequestPublisherNotificationMessage'."
  type        = string

}
