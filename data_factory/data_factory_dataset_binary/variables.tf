# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Binary Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "linked_service_name" {
  description = "(REQUIRED) The Data Factory Linked Service name in which to associate the Binary Dataset with."
  type        = string

}

# OPTIONAL VARIABLES

variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Binary Dataset."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Binary Dataset."
  type        = string
  default     = null
}
variable "compression" {
  description = "A 'compression' block."
  type        = map(any)
  default     = null
}
#
# compression block structure:
#   type (string)              : (REQUIRED) The type of compression used during transport. Possible values are 'BZip2', 'Deflate', 'GZip', 'Tar', 'TarGZip' and 'ZipDeflate'.
#   level (string)             : The level of compression. Possible values are 'Fastest' and 'Optimal'.


variable "description" {
  description = "The description for the Data Factory Dataset."
  type        = string
  default     = null
}
variable "folder" {
  description = "The folder that this Dataset is in. If not specified, the Dataset will appear at the root level."
  type        = string
  default     = null
}
variable "parameters" {
  description = "Specifies a list of parameters to associate with the Data Factory Binary Dataset."
  type        = list(any)
  default     = []
}
variable "http_server_location" {
  description = "A 'http_server_location' block."
  type        = map(any)
  default     = null
}
#
# http_server_location block structure:
#   relative_url (string)               : (REQUIRED) The base URL to the web server hosting the file.
#   path (string)                       : (REQUIRED) The folder path to the file on the web server.
#   filename (string)                   : (REQUIRED) The filename of the file on the web server.
#   dynamic_path_enabled (bool)         : Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'.
#   dynamic_filename_enabled (bool)     : Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'.


variable "azure_blob_storage_location" {
  description = "A 'azure_blob_storage_location' block."
  type        = map(any)
  default     = null
}
#
# azure_blob_storage_location block structure:
#   container (string)                         : (REQUIRED) The container on the Azure Blob Storage Account hosting the file.
#   path (string)                              : The folder path to the file in the blob container.
#   filename (string)                          : The filename of the file in the blob container.
#   dynamic_container_enabled (bool)           : Is the 'container' using dynamic expression, function or system variables? Defaults to 'false'.
#   dynamic_path_enabled (bool)                : Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'.
#   dynamic_filename_enabled (bool)            : Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'.


variable "sftp_server_location" {
  description = "A 'sftp_server_location' block."
  type        = map(any)
  default     = null
}
#
# sftp_server_location block structure:
#   path (string)                       : (REQUIRED) The folder path to the file on the SFTP server.
#   filename (string)                   : (REQUIRED) The filename of the file on the SFTP server.
#   dynamic_path_enabled (bool)         : Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'.
#   dynamic_filename_enabled (bool)     : Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'.


