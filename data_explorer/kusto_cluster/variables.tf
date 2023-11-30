# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Kusto Cluster to create. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location where the Kusto Cluster should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) A 'sku' block."
  type        = map(any)
}
#
# sku block structure:
#   capacity (string)  : Specifies the node count for the cluster. Boundaries depend on the SKU name.



# OPTIONAL VARIABLES

variable "allowed_fqdns" {
  description = "List of allowed FQDNs(Fully Qualified Domain Name) for egress from Cluster."
  type        = string
  default     = null
}
variable "allowed_ip_ranges" {
  description = "The list of ips in the format of CIDR allowed to connect to the cluster."
  type        = string
  default     = null
}
variable "double_encryption_enabled" {
  description = "Is the cluster's double encryption enabled? Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that is configured on this Kusto Cluster. Possible values are: 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned'.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Kusto Cluster.


variable "auto_stop_enabled" {
  description = "Specifies if the cluster could be automatically stopped (due to lack of data or no activity for many days). Defaults to 'true'."
  type        = bool
  default     = true
}
variable "disk_encryption_enabled" {
  description = "Specifies if the cluster's disks are encrypted."
  type        = bool
  default     = null
}
variable "streaming_ingestion_enabled" {
  description = "Specifies if the streaming ingest is enabled."
  type        = bool
  default     = null
}
variable "public_ip_type" {
  description = "Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6). Defaults to 'IPv4'."
  type        = string
  default     = "IPv4"
}
variable "public_network_access_enabled" {
  description = "Is the public network access enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "outbound_network_access_restricted" {
  description = "Whether to restrict outbound network access. Value is optional but if passed in, must be 'true' or 'false', default is 'false'."
  type        = bool
  default     = false
}
variable "purge_enabled" {
  description = "Specifies if the purge operations are enabled."
  type        = bool
  default     = null
}
variable "virtual_network_configuration" {
  description = "A 'virtual_network_configuration' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# virtual_network_configuration block structure:
#   subnet_id (string)                           : (REQUIRED) The subnet resource id.
#   engine_public_ip_id (string)                 : (REQUIRED) Engine service's public IP address resource id.
#   data_management_public_ip_id (string)        : (REQUIRED) Data management's service public IP address resource id.


variable "language_extensions" {
  description = "An list of 'language_extensions' to enable. Valid values are: 'PYTHON', 'PYTHON_3.10.8' and 'R'. 'PYTHON' is used to specify Python 3.6.5 image and 'PYTHON_3.10.8' is used to specify Python 3.10.8 image. Note that 'PYTHON_3.10.8' is only available in skus which support nested virtualization."
  type        = string
  default     = null
}
variable "optimized_auto_scale" {
  description = "An 'optimized_auto_scale' block."
  type        = map(any)
  default     = null
}
#
# optimized_auto_scale block structure:
#   minimum_instances (int)             : (REQUIRED) The minimum number of allowed instances. Must between '0' and '1000'.
#   maximum_instances (int)             : (REQUIRED) The maximum number of allowed instances. Must between '0' and '1000'.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "trusted_external_tenants" {
  description = "Specifies a list of tenant IDs that are trusted by the cluster. Default setting trusts all other tenants. Use 'trusted_external_tenants = ['*']' to explicitly allow all other tenants, 'trusted_external_tenants = ['MyTenantOnly']' for only your tenant or 'trusted_external_tenants = ['<tenantId1>', '<tenantIdx>']' to allow specific other tenants."
  type        = string
  default     = null
}
variable "zones" {
  description = "Specifies a list of Availability Zones in which this Kusto Cluster should be located. Changing this forces a new Kusto Cluster to be created."
  type        = string
  default     = null
}
