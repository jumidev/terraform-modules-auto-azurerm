# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The Name of the firewall rule. Changing this forces a new resource to be created."
  type        = string

}
variable "synapse_workspace_id" {
  description = "(REQUIRED) The ID of the Synapse Workspace on which to create the Firewall Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "start_ip_address" {
  description = "(REQUIRED) The starting IP address to allow through the firewall for this rule."
  type        = string

}
variable "end_ip_address" {
  description = "(REQUIRED) The ending IP address to allow through the firewall for this rule. -> **NOTE:** The Azure feature 'Allow access to Azure services' can be enabled by setting 'start_ip_address' and 'end_ip_address' to '0.0.0.0'. -> **NOTE:** The Azure feature 'Allow access to Azure services' requires the 'name' to be 'AllowAllWindowsAzureIps'."
  type        = string

}
