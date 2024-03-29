# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created."
  type        = string

}
variable "delegated_management_subnet_id" {
  description = "(REQUIRED) The ID of the delegated management subnet for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "authentication_method" {
  description = "The authentication method that is used to authenticate clients. Possible values are 'None' and 'Cassandra'. Defaults to 'Cassandra'."
  type        = string
  default     = "Cassandra"
}
variable "client_certificate_pems" {
  description = "A list of TLS certificates that is used to authorize client connecting to the Cassandra Cluster."
  type        = list(any)
  default     = []
}
variable "external_gossip_certificate_pems" {
  description = "A list of TLS certificates that is used to authorize gossip from unmanaged Cassandra Data Center."
  type        = list(any)
  default     = []
}
variable "external_seed_node_ip_addresses" {
  description = "A list of IP Addresses of the seed nodes in unmanaged the Cassandra Data Center which will be added to the seed node lists of all managed nodes."
  type        = list(any)
  default     = []
}
variable "hours_between_backups" {
  description = "The number of hours to wait between taking a backup of the Cassandra Cluster. Defaults to '24'. ~> **Note:** To disable this feature, set this property to '0'."
  type        = number
  default     = 24
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Cassandra Cluster. The only possible value is 'SystemAssigned'.


variable "repair_enabled" {
  description = "Is the automatic repair enabled on the Cassandra Cluster? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "version" {
  description = "The version of Cassandra what the Cluster converges to run. Possible values are '3.11' and '4.0'. Defaults to '3.11'. Changing this forces a new Cassandra Cluster to be created."
  type        = string
  default     = "3.11"
}
variable "tags" {
  description = "A mapping of tags assigned to the resource."
  type        = map(any)
  default     = null
}
