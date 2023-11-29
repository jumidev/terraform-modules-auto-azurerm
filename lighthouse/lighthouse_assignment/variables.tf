# REQUIRED VARIABLES

variable "scope" {
  description = "(REQUIRED) The scope at which the Lighthouse Assignment applies too, such as '/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333' or '/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup'. Changing this forces a new resource to be created."
  type        = string

}
variable "lighthouse_definition_id" {
  description = "(REQUIRED) A Fully qualified path of the lighthouse definition, such as '/subscriptions/0afefe50-734e-4610-8c82-a144aff49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-8e081c90ada2'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "name" {
  description = "A unique UUID/GUID which identifies this lighthouse assignment- one will be generated if not specified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
