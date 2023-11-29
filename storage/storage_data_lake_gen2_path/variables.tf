# REQUIRED VARIABLES

variable "path" {
  description = "(REQUIRED) The path which should be created within the Data Lake Gen2 File System in the Storage Account. Changing this forces a new resource to be created."
  type        = string

}
variable "filesystem_name" {
  description = "(REQUIRED) The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) Specifies the ID of the Storage Account in which the Data Lake Gen2 File System should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "resource" {
  description = "(REQUIRED) Specifies the type for path to create. Currently only 'directory' is supported. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "owner" {
  description = "Specifies the Object ID of the Azure Active Directory User to make the owning user. Possible values also include '$superuser'."
  type        = string
  default     = null
}
variable "group" {
  description = "Specifies the Object ID of the Azure Active Directory Group to make the owning group. Possible values also include '$superuser'."
  type        = string
  default     = null
}
variable "ace" {
  description = "One or more 'ace' blocks to specify the entries for the ACL for the path."
  type        = map(map(any))
  default     = null
}
#
# ace block structure :
#   scope (bool)        : Specifies whether the ACE represents an 'access' entry or a 'default' entry. Default value is 'access'.
#   type (string)       : (REQUIRED) Specifies the type of entry. Can be 'user', 'group', 'mask' or 'other'.
#   permissions (string): (REQUIRED) Specifies the permissions for the entry in 'rwx' form. For example, 'rwx' gives full permissions but 'r--' only gives read permissions.


