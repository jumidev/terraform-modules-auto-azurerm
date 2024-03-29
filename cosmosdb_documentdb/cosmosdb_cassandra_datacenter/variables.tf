# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Cassandra Datacenter should exist. Changing this forces a new Cassandra Datacenter to be created."
  type        = string

}
variable "cassandra_cluster_id" {
  description = "(REQUIRED) The ID of the Cassandra Cluster. Changing this forces a new Cassandra Datacenter to be created."
  type        = string

}
variable "delegated_management_subnet_id" {
  description = "(REQUIRED) The ID of the delegated management subnet for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "node_count" {
  description = "The number of nodes the Cassandra Datacenter should have. The number should be equal or greater than '3'. Defaults to '3'."
  type        = number
  default     = 3
}
variable "backup_storage_customer_key_uri" {
  description = "The key URI of the customer key to use for the encryption of the backup Storage Account."
  type        = string
  default     = null
}
variable "base64_encoded_yaml_fragment" {
  description = "The fragment of the cassandra.yaml configuration file to be included in the cassandra.yaml for all nodes in this Cassandra Datacenter. The fragment should be Base64 encoded and only a subset of keys is allowed."
  type        = string
  default     = null
}
variable "disk_sku" {
  description = "The Disk SKU that is used for this Cassandra Datacenter. Defaults to 'P30'."
  type        = string
  default     = "P30"
}
variable "managed_disk_customer_key_uri" {
  description = "The key URI of the customer key to use for the encryption of the Managed Disk."
  type        = string
  default     = null
}
variable "sku_name" {
  description = "Determines the selected sku. -> **NOTE:** In v4.0 of the provider the 'sku_name' will have a default value of 'Standard_E16s_v5'."
  type        = string
  default     = null
}
variable "disk_count" {
  description = "Determines the number of p30 disks that are attached to each node."
  type        = number
  default     = null
}
variable "availability_zones_enabled" {
  description = "Determines whether availability zones are enabled. Defaults to 'true'."
  type        = bool
  default     = true
}
