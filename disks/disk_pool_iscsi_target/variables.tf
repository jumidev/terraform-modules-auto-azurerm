# REQUIRED VARIABLES

variable "acl_mode" {
  description = "(REQUIRED) Mode for Target connectivity. The only supported value is 'Dynamic' for now. Changing this forces a new iSCSI Target to be created."
  type        = string

}
variable "disks_pool_id" {
  description = "(REQUIRED) The ID of the Disk Pool. Changing this forces a new iSCSI Target to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name of the iSCSI Target. The name can only contain lowercase letters, numbers, periods, or hyphens, and length should between [5-223]. Changing this forces a new iSCSI Target to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "target_iqn" {
  description = "ISCSI Target IQN (iSCSI Qualified Name); example: 'iqn.2005-03.org.iscsi:server'. IQN should follow the format 'iqn.yyyy-mm.<abc>.<pqr>[:xyz]'; supported characters include alphanumeric characters in lower case, hyphen, dot and colon, and the length should between '4' and '223'. Changing this forces a new iSCSI Target to be created."
  type        = string
  default     = null
}
