# REQUIRED VARIABLES

variable "template_name" {
  description = "(REQUIRED) The name of the Email Template. Possible values are 'AccountClosedDeveloper', 'ApplicationApprovedNotificationMessage', 'ConfirmSignUpIdentityDefault', 'EmailChangeIdentityDefault', 'InviteUserNotificationMessage', 'NewCommentNotificationMessage', 'NewDeveloperNotificationMessage', 'NewIssueNotificationMessage', 'PasswordResetByAdminNotificationMessage', 'PasswordResetIdentityDefault', 'PurchaseDeveloperNotificationMessage', 'QuotaLimitApproachingDeveloperNotificationMessage', 'RejectDeveloperNotificationMessage', 'RequestDeveloperNotificationMessage'. Changing this forces a new API Management Email Template to be created."
  type        = string

}
variable "api_management_name" {
  description = "(REQUIRED) The name of the API Management Service in which the Email Template should exist. Changing this forces a new API Management Email Template to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the API Management Email Template should exist. Changing this forces a new API Management Email Template to be created."
  type        = string

}
variable "subject" {
  description = "(REQUIRED) The subject of the Email."
  type        = string

}
variable "body" {
  description = "(REQUIRED) The body of the Email. Its format has to be a well-formed HTML document."
  type        = string

}

# OPTIONAL VARIABLES

variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
