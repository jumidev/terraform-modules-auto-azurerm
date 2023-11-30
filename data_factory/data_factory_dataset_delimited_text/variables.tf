# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "linked_service_name" {
  description = "(REQUIRED) The Data Factory Linked Service name in which to associate the Dataset with."
  type        = string

}

# OPTIONAL VARIABLES

variable "folder" {
  description = "The folder that this Dataset is in. If not specified, the Dataset will appear at the root level."
  type        = string
  default     = null
}
variable "schema_column" {
  description = "A 'schema_column' block."
  type        = map(any)
  default     = null
}
#
# schema_column block structure:
#   type (string)                : Type of the column. Valid values are 'Byte', 'Byte[]', 'Boolean', 'Date', 'DateTime','DateTimeOffset', 'Decimal', 'Double', 'Guid', 'Int16', 'Int32', 'Int64', 'Single', 'String', 'TimeSpan'. Please note these values are case sensitive.
#   description (string)         : The description of the column.


variable "description" {
  description = "The description for the Data Factory Dataset."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Dataset."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Dataset."
  type        = string
  default     = null
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Dataset."
  type        = string
  default     = null
}
variable "azure_blob_fs_location" {
  description = "An 'azure_blob_fs_location' block."
  type        = map(any)
  default     = null
}
#
# azure_blob_fs_location block structure:
#   file_system (string)                  : The storage data lake gen2 file system on the Azure Blob Storage Account hosting the file.
#   dynamic_file_system_enabled (bool)    : Is the 'file_system' using dynamic expression, function or system variables? Defaults to 'false'.
#   path (string)                         : The folder path to the file.
#   dynamic_path_enabled (bool)           : Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'.
#   filename (string)                     : The filename of the file.
#   dynamic_filename_enabled (bool)       : Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'.


variable "azure_blob_storage_location" {
  description = "An 'azure_blob_storage_location' block."
  type        = map(any)
  default     = null
}
#
# azure_blob_storage_location block structure:
#   container (string)                         : (REQUIRED) The container on the Azure Blob Storage Account hosting the file.
#   path (string)                              : The folder path to the file. This can be an empty string.
#   filename (string)                          : The filename of the file.
#   dynamic_container_enabled (bool)           : Is the 'container' using dynamic expression, function or system variables? Defaults to 'false'.
#   dynamic_path_enabled (bool)                : Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'.
#   dynamic_filename_enabled (bool)            : Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'.


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


variable "column_delimiter" {
  description = "The column delimiter. Defaults to ','."
  type        = string
  default     = ","
}
variable "row_delimiter" {
  description = "The row delimiter. Defaults to any of the following values on read: ''r'n', ''r', ''n', and ''n' or ''r'n' on write by mapping data flow and Copy activity respectively."
  type        = string
  default     = "\r\n"
}
variable "encoding" {
  description = "The encoding format for the file."
  type        = string
  default     = null
}
variable "quote_character" {
  description = "The quote character. Defaults to '''."
  type        = string
  default     = "\""
}
variable "escape_character" {
  description = "The escape character. Defaults to '''."
  type        = string
  default     = "\\"
}
variable "first_row_as_header" {
  description = "When used as input, treat the first row of data as headers. When used as output, write the headers into the output as the first row of data. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "null_value" {
  description = "The null value string. Defaults to ''''."
  type        = string
  default     = ""
}
variable "compression_codec" {
  description = "The compression codec used to read/write text files. Valid values are 'None', 'bzip2', 'gzip', 'deflate', 'ZipDeflate', 'TarGzip', 'Tar', 'snappy' and 'lz4'. Please note these values are case sensitive."
  type        = string
  default     = null
}
variable "compression_level" {
  description = "The compression ratio for the Data Factory Dataset. Valid values are 'Fastest' or 'Optimal'. Please note these values are case sensitive."
  type        = string
  default     = null
}
