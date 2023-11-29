# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Storage Mover Source Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_mover_id" {
  description = "(REQUIRED) Specifies the ID of the Storage Mover for this Storage Mover Source Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "host" {
  description = "(REQUIRED) Specifies the host name or IP address of the server exporting the file system. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "export" {
  description = "Specifies the directory being exported from the server. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "nfs_version" {
  description = "Specifies the NFS protocol version. Possible values are 'NFSauto', 'NFSv3' and 'NFSv4'. Defaults to 'NFSauto'. Changing this forces a new resource to be created."
  type        = string
  default     = "NFSauto"
}
variable "description" {
  description = "Specifies a description for the Storage Mover Source Endpoint."
  type        = string
  default     = null
}
