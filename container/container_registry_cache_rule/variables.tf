# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Container Registry Cache Rule. Only Alphanumeric characters allowed. Changing this forces a new resource to be created."
  type        = string

}
variable "container_registry_id" {
  description = "(REQUIRED) The ID of the Container Registry where the Cache Rule should apply. Changing this forces a new resource to be created."
  type        = string

}
variable "source_repo" {
  description = "(REQUIRED) The name of the source repository path. Changing this forces a new resource to be created."
  type        = string

}
variable "target_repo" {
  description = "(REQUIRED) The name of the new repository path to store artifacts. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "credential_set_id" {
  description = "The ARM resource ID of the Credential Store which is associated with the Cache Rule."
  type        = string
  default     = null
}
