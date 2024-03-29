# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the DNS CNAME Record. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created."
  type        = string

}
variable "zone_name" {
  description = "(REQUIRED) Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "ttl" {
  description = "(REQUIRED) The Time To Live (TTL) of the DNS record in seconds."
  type        = number

}

# OPTIONAL VARIABLES

variable "record" {
  description = "The target of the CNAME."
  type        = string
  default     = null
}
variable "target_resource_id" {
  description = "The Azure resource id of the target object. Conflicts with 'record'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource. ~> **Note:** either 'record' OR 'target_resource_id' must be specified, but not both."
  type        = map(any)
  default     = null
}
