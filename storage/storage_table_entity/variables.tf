# REQUIRED VARIABLES

variable "storage_account_name" {
  description = "(REQUIRED) Specifies the storage account in which to create the storage table entity. Changing this forces a new resource to be created."
  type        = string

}
variable "table_name" {
  description = "(REQUIRED) The name of the storage table in which to create the storage table entity. Changing this forces a new resource to be created."
  type        = string

}
variable "partition_key" {
  description = "(REQUIRED) The key for the partition where the entity will be inserted/merged. Changing this forces a new resource."
  type        = string

}
variable "row_key" {
  description = "(REQUIRED) The key for the row where the entity will be inserted/merged. Changing this forces a new resource."
  type        = string

}
variable "entity" {
  description = "(REQUIRED) A map of key/value pairs that describe the entity to be inserted/merged in to the storage table."
  type        = string

}
