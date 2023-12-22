# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the storage blob. Must be unique within the storage container the blob is located. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_name" {
  description = "(REQUIRED) Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_container_name" {
  description = "(REQUIRED) The name of the storage container in which this blob should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "type" {
  description = "(REQUIRED) The type of the storage blob to be created. Possible values are 'Append', 'Block' or 'Page'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "size" {
  description = "Used only for 'page' blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to '0'. Changing this forces a new resource to be created."
  type        = string
  default     = "0"
}
variable "access_tier" {
  description = "The access tier of the storage blob. Possible values are 'Archive', 'Cool' and 'Hot'."
  type        = string
  default     = null
}
variable "cache_control" {
  description = "Controls the [cache control header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control) content of the response when blob is requested ."
  type        = string
  default     = null
}
variable "content_type" {
  description = "The content type of the storage blob. Cannot be defined if 'source_uri' is defined. Defaults to 'application/octet-stream'."
  type        = string
  default     = "application/octet-stream"
}
variable "content_md5" {
  description = "The MD5 sum of the blob contents. Cannot be defined if 'source_uri' is defined, or if blob type is Append or Page. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "source" {
  description = "An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if 'source_content' or 'source_uri' is specified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "source_content" {
  description = "The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if 'source' or 'source_uri' is specified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "source_uri" {
  description = "The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if 'source' or 'source_content' is specified."
  type        = string
  default     = null
}
variable "parallelism" {
  description = "The number of workers per CPU core to run for concurrent uploads. Defaults to '8'. Changing this forces a new resource to be created."
  type        = number
  default     = 8
}
variable "metadata" {
  description = "A map of custom blob metadata."
  type        = string
  default     = null
}
variable "storage_account_resource_group_name" {
  description = "Specifies the name of the resource group the Storage Account is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "storage_container_storage_account_name" {
  description = "The name of the Storage Account where the Container exists..  If not specified, value of var.storage_account_name will be used."
  type        = string
  default     = null
}
