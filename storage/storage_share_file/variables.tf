# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name (or path) of the File that should be created within this File Share. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_share_id" {
  description = "(REQUIRED) The Storage Share ID in which this file will be placed into. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "path" {
  description = "The storage share directory that you would like the file placed into. Changing this forces a new resource to be created. Defaults to ''''."
  type        = string
  default     = ""
}
variable "source" {
  description = "An absolute path to a file on the local system. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "content_type" {
  description = "The content type of the share file. Defaults to 'application/octet-stream'."
  type        = string
  default     = "application/octet-stream"
}
variable "content_md5" {
  description = "The MD5 sum of the file contents. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "content_encoding" {
  description = "Specifies which content encodings have been applied to the file."
  type        = string
  default     = null
}
variable "content_disposition" {
  description = "Sets the file’s Content-Disposition header."
  type        = string
  default     = null
}
variable "metadata" {
  description = "A mapping of metadata to assign to this file."
  type        = string
  default     = null
}
