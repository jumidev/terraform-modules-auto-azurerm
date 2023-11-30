# REQUIRED VARIABLES

variable "tier" {
  description = "(REQUIRED) The pricing tier to use. Possible values are 'Free' and 'Standard'."
  type        = string

}

# OPTIONAL VARIABLES

variable "resource_type" {
  description = "The resource type this setting affects. Possible values are 'Api', 'AppServices', 'ContainerRegistry', 'KeyVaults', 'KubernetesService', 'SqlServers', 'SqlServerVirtualMachines', 'StorageAccounts', 'VirtualMachines', 'Arm', 'Dns', 'OpenSourceRelationalDatabases', 'Containers', 'CosmosDbs' and 'CloudPosture'. Defaults to 'VirtualMachines'"
  type        = string
  default     = "VirtualMachines"
}
variable "subplan" {
  description = "Resource type pricing subplan. Contact your MSFT representative for possible values."
  type        = string
  default     = null
}
variable "extension" {
  description = "One or more 'extension' blocks."
  type        = map(map(any))
  default     = null
}
#
# extension block structure               :
#   additional_extension_properties (string): Key/Value pairs that are required for some extensions.


