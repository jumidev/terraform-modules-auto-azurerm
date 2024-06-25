# REQUIRED VARIABLES

variable "storage_table_id" {
  description = "(REQUIRED) The Storage Share ID in which this file will be placed into. Changing this forces a new resource to be created."
  type        = string

}
variable "partition_key" {
  description = "(REQUIRED) The key for the partition where the entity will be inserted/merged. Changing this forces a new resource to be created."
  type        = string

}
variable "row_key" {
  description = "(REQUIRED) The key for the row where the entity will be inserted/merged. Changing this forces a new resource to be created."
  type        = string

}
variable "entity" {
  description = "(REQUIRED) A map of key/value pairs that describe the entity to be inserted/merged in to the storage table."
  type        = string

}
