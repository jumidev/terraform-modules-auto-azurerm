# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The fully qualified name of the Custom Domain. Must be the CN or a named SAN in the certificate specified by the 'container_app_environment_certificate_id'. Changing this forces a new resource to be created. ~> **Note:** The Custom Domain verification TXT record requires a prefix of 'asuid.', however, this must be trimmed from the 'name' property here. See the [official docs](https://learn.microsoft.com/en-us/azure/container-apps/custom-domains-certificates) for more information."
  type        = string

}
variable "container_app_id" {
  description = "(REQUIRED) The ID of the Container App to which this Custom Domain should be bound. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "container_app_environment_certificate_id" {
  description = "The ID of the Container App Environment Certificate to use. Changing this forces a new resource to be created. -> **NOTE:** Omit this value if you wish to use an Azure Managed certificate. You must create the relevant DNS verification steps before this process will be successful."
  type        = string
  default     = null
}
variable "certificate_binding_type" {
  description = "The Certificate Binding type. Possible values include 'Disabled' and 'SniEnabled'.  Required with 'container_app_environment_certificate_id'. Changing this forces a new resource to be created. !> **NOTE:** If using an Azure Managed Certificate 'container_app_environment_certificate_id' and 'certificate_binding_type' should be added to 'ignore_changes' to prevent resource recreation due to these values being modified asynchronously outside of Terraform."
  type        = bool
  default     = null
}
