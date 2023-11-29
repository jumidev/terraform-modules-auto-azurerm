# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Data Share Data Lake Gen2 Dataset. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created."
  type        = string

}
variable "share_id" {
  description = "(REQUIRED) The resource ID of the Data Share where this Data Share Data Lake Gen2 Dataset should be created. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created."
  type        = string

}
variable "file_system_name" {
  description = "(REQUIRED) The name of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) The resource id of the storage account of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "file_path" {
  description = "The path of the file in the data lake file system to be shared with the receiver. Conflicts with 'folder_path' Changing this forces a new Data Share Data Lake Gen2 Dataset to be created."
  type        = string
  default     = null
}
variable "folder_path" {
  description = "The folder path in the data lake file system to be shared with the receiver. Conflicts with 'file_path' Changing this forces a new Data Share Data Lake Gen2 Dataset to be created."
  type        = string
  default     = null
}
