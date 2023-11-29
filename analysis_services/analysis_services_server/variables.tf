# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Analysis Services Server. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location where the Analysis Services Server exists. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Analysis Services Server should be exist. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) SKU for the Analysis Services Server. Possible values are: 'D1', 'B1', 'B2', 'S0', 'S1', 'S2', 'S4', 'S8', 'S9', 'S8v2' and 'S9v2'."
  type        = string

}

# OPTIONAL VARIABLES

variable "admin_users" {
  description = "List of email addresses of admin users."
  type        = string
  default     = null
}
variable "querypool_connection_mode" {
  description = "Controls how the read-write server is used in the query pool. If this value is set to 'All' then read-write servers are also used for queries. Otherwise with 'ReadOnly' these servers do not participate in query operations."
  type        = string
  default     = null
}
variable "backup_blob_container_uri" {
  description = "URI and SAS token for a blob container to store backups."
  type        = string
  default     = null
}
variable "enable_power_bi_service" {
  description = "Indicates if the Power BI service is allowed to access or not."
  type        = bool
  default     = null
}
variable "ipv4_firewall_rule" {
  description = "One or more 'ipv4_firewall_rule' block(s) as defined below."
  type        = list(any)
  default     = []
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
