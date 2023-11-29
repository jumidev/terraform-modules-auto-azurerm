# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Search Service should exist. Changing this forces a new Search Service to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The Name which should be used for this Search Service. Changing this forces a new Search Service to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Search Service should exist. Changing this forces a new Search Service to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) The SKU which should be used for this Search Service. Possible values include 'basic', 'free', 'standard', 'standard2', 'standard3', 'storage_optimized_l1' and 'storage_optimized_l2'. Changing this forces a new Search Service to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "allowed_ips" {
  description = "Specifies a list of inbound IPv4 or CIDRs that are allowed to access the Search Service. If the incoming IP request is from an IP address which is not included in the 'allowed_ips' it will be blocked by the Search Services firewall."
  type        = string
  default     = null
}
variable "authentication_failure_mode" {
  description = "Specifies the response that the Search Service should return for requests that fail authentication. Possible values include 'http401WithBearerChallenge' or 'http403'."
  type        = string
  default     = null
}
variable "customer_managed_key_enforcement_enabled" {
  description = "Specifies whether the Search Service should enforce that non-customer resources are encrypted. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "hosting_mode" {
  description = "Specifies the Hosting Mode, which allows for High Density partitions (that allow for up to 1000 indexes) should be supported. Possible values are 'highDensity' or 'default'. Defaults to 'default'. Changing this forces a new Search Service to be created."
  type        = string
  default     = "default"
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Search Service. The only possible value is 'SystemAssigned'.


variable "local_authentication_enabled" {
  description = "Specifies whether the Search Service allows authenticating using API Keys? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "partition_count" {
  description = "Specifies the number of partitions which should be created. This field cannot be set when using a 'free' or 'basic' sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)). Possible values include '1', '2', '3', '4', '6', or '12'. Defaults to '1'."
  type        = string
  default     = "1"
}
variable "public_network_access_enabled" {
  description = "Specifies whether Public Network Access is allowed for this resource. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "replica_count" {
  description = "Specifies the number of Replica's which should be created for this Search Service. This field cannot be set when using a 'free' sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier))."
  type        = int
  default     = null
}
variable "semantic_search_sku" {
  description = "Specifies the Semantic Search SKU which should be used for this Search Service. Possible values include 'free' and 'standard'."
  type        = string
  default     = null
}
variable "tags" {
  description = "Specifies a mapping of tags which should be assigned to this Search Service."
  type        = map(any)
  default     = null
}
