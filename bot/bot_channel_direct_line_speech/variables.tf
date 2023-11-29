# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the Direct Line Speech Channel should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "bot_name" {
  description = "(REQUIRED) The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created."
  type        = string

}
variable "cognitive_service_access_key" {
  description = "(REQUIRED) The access key to access the Cognitive Service."
  type        = string

}
variable "cognitive_service_location" {
  description = "(REQUIRED) Specifies the supported Azure location where the Cognitive Service resource exists."
  type        = string

}

# OPTIONAL VARIABLES

variable "cognitive_account_id" {
  description = "The ID of the Cognitive Account this Bot Channel should be associated with."
  type        = string
  default     = null
}
variable "custom_speech_model_id" {
  description = "The custom speech model id for the Direct Line Speech Channel."
  type        = string
  default     = null
}
variable "custom_voice_deployment_id" {
  description = "The custom voice deployment id for the Direct Line Speech Channel."
  type        = string
  default     = null
}
