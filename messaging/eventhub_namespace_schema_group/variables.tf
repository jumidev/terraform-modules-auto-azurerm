# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of this schema group. Changing this forces a new resource to be created."
  type        = string

}
variable "namespace_id" {
  description = "(REQUIRED) Specifies the ID of the EventHub Namespace. Changing this forces a new resource to be created."
  type        = string

}
variable "schema_compatibility" {
  description = "(REQUIRED) Specifies the compatibility of this schema group. Possible values are 'None', 'Backward', 'Forward'. Changing this forces a new resource to be created."
  type        = string

}
variable "schema_type" {
  description = "(REQUIRED) Specifies the Type of this schema group. Possible values are 'Avro', 'Unknown'. Changing this forces a new resource to be created."
  type        = string

}
