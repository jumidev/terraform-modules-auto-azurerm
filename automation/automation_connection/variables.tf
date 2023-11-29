# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Connection. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Connection is created. Changing this forces a new resource to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the Connection is created. Changing this forces a new resource to be created."
  type        = string

}
variable "type" {
  description = "(REQUIRED) The type of the Connection - can be either builtin type such as 'Azure', 'AzureClassicCertificate', and 'AzureServicePrincipal', or a user defined types. Changing this forces a new resource to be created."
  type        = string

}
variable "values" {
  description = "(REQUIRED) A mapping of key value pairs passed to the connection. Different 'type' needs different parameters in the 'values'. Builtin types have required field values as below:"
  type        = string

}

# OPTIONAL VARIABLES

variable "Azure" {
  description = ": parameters 'AutomationCertificateName' and 'SubscriptionID'."
  type        = string
  default     = null
}
variable "AzureClassicCertificate" {
  description = ": parameters 'SubscriptionName', 'SubscriptionId' and 'CertificateAssetName'."
  type        = string
  default     = null
}
variable "AzureServicePrincipal" {
  description = ": parameters 'ApplicationId', 'CertificateThumbprint', 'SubscriptionId' and 'TenantId'."
  type        = string
  default     = null
}
variable "description" {
  description = "A description for this Connection."
  type        = string
  default     = null
}
variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
