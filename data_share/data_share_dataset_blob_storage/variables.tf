# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Data Share Blob Storage Dataset. Changing this forces a new Data Share Blob Storage Dataset to be created."
  type        = string

}
variable "data_share_id" {
  description = "(REQUIRED) The ID of the Data Share in which this Data Share Blob Storage Dataset should be created. Changing this forces a new Data Share Blob Storage Dataset to be created."
  type        = string

}
variable "container_name" {
  description = "(REQUIRED) The name of the storage account container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created."
  type        = string

}
variable "storage_account" {
  description = "(REQUIRED) A 'storage_account' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# storage_account block structure:
#   resource_group_name (string)   : (REQUIRED) The resource group name of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
#   subscription_id (string)       : (REQUIRED) The subscription id of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.



# OPTIONAL VARIABLES

variable "file_path" {
  description = "The path of the file in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created."
  type        = string
  default     = null
}
variable "folder_path" {
  description = "The path of the folder in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created."
  type        = string
  default     = null
}
