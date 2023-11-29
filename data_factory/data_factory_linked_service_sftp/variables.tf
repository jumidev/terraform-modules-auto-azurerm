# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "authentication_type" {
  description = "(REQUIRED) The type of authentication used to connect to the web table source. Valid options are 'Anonymous', 'Basic' and 'ClientCertificate'."
  type        = string

}
variable "host" {
  description = "(REQUIRED) The SFTP server hostname."
  type        = string

}
variable "port" {
  description = "(REQUIRED) The TCP port number that the SFTP server uses to listen for client connection. Default value is 22."
  type        = string

}
variable "username" {
  description = "(REQUIRED) The username used to log on to the SFTP server."
  type        = string

}
variable "password" {
  description = "(REQUIRED) Password to logon to the SFTP Server for Basic Authentication."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description for the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "integration_runtime_name" {
  description = "The integration runtime reference to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "host_key_fingerprint" {
  description = "The host key fingerprint of the SFTP server."
  type        = string
  default     = null
}
variable "skip_host_key_validation" {
  description = "Whether to validate host key fingerprint while connecting. If set to 'false', 'host_key_fingerprint' must also be set."
  type        = string
  default     = null
}
