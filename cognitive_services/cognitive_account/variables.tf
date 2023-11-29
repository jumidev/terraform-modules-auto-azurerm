# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Cognitive Service Account. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "kind" {
  description = "(REQUIRED) Specifies the type of Cognitive Service Account that should be created. Possible values are 'Academic', 'AnomalyDetector', 'Bing.Autosuggest', 'Bing.Autosuggest.v7', 'Bing.CustomSearch', 'Bing.Search', 'Bing.Search.v7', 'Bing.Speech', 'Bing.SpellCheck', 'Bing.SpellCheck.v7', 'CognitiveServices', 'ComputerVision', 'ContentModerator', 'CustomSpeech', 'CustomVision.Prediction', 'CustomVision.Training', 'Emotion', 'Face', 'FormRecognizer', 'ImmersiveReader', 'LUIS', 'LUIS.Authoring', 'MetricsAdvisor', 'OpenAI', 'Personalizer', 'QnAMaker', 'Recommendations', 'SpeakerRecognition', 'Speech', 'SpeechServices', 'SpeechTranslation', 'TextAnalytics', 'TextTranslation' and 'WebLM'. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) Specifies the SKU Name for this Cognitive Service Account. Possible values are 'F0', 'F1', 'S0', 'S', 'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'P0', 'P1', 'P2', 'E0' and 'DC0'."
  type        = string

}

# OPTIONAL VARIABLES

variable "custom_subdomain_name" {
  description = "The subdomain name used for token-based authentication. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "dynamic_throttling_enabled" {
  description = "Whether to enable the dynamic throttling for this Cognitive Service Account."
  type        = bool
  default     = null
}
variable "customer_managed_key" {
  description = "A 'customer_managed_key' block."
  type        = map(any)
  default     = null
}
#
# customer_managed_key block structure:
#   key_vault_key_id (string)           : (REQUIRED) The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account.
#   identity_client_id (string)         : The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account.


variable "fqdns" {
  description = "List of FQDNs allowed for the Cognitive Account."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Cognitive Account. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Cognitive Account.


variable "local_auth_enabled" {
  description = "Whether local authentication methods is enabled for the Cognitive Account. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "metrics_advisor_aad_client_id" {
  description = "The Azure AD Client ID (Application ID). This attribute is only set when kind is 'MetricsAdvisor'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "metrics_advisor_aad_tenant_id" {
  description = "The Azure AD Tenant ID. This attribute is only set when kind is 'MetricsAdvisor'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "metrics_advisor_super_user_name" {
  description = "The super user of Metrics Advisor. This attribute is only set when kind is 'MetricsAdvisor'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "metrics_advisor_website_name" {
  description = "The website name of Metrics Advisor. This attribute is only set when kind is 'MetricsAdvisor'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "network_acls" {
  description = "A 'network_acls' block."
  type        = map(any)
  default     = null
}
#
# network_acls block structure :
#   default_action (string)      : (REQUIRED) The Default Action to use when no rules match from 'ip_rules' / 'virtual_network_rules'. Possible values are 'Allow' and 'Deny'.
#   ip_rules (list)              : One or more IP Addresses, or CIDR Blocks which should be able to access the Cognitive Account.
#   virtual_network_rules (block): A 'virtual_network_rules' block.
#
# virtual_network_rules block structure      :
#   subnet_id (string)                         : (REQUIRED) The ID of the subnet which should be able to access this Cognitive Account.
#   ignore_missing_vnet_service_endpoint (bool): Whether ignore missing vnet service endpoint or not. Default to 'false'.


variable "outbound_network_access_restricted" {
  description = "Whether outbound network access is restricted for the Cognitive Account. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for the Cognitive Account. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "qna_runtime_endpoint" {
  description = "A URL to link a QnAMaker cognitive account to a QnA runtime."
  type        = string
  default     = null
}
variable "custom_question_answering_search_service_id" {
  description = "If 'kind' is 'TextAnalytics' this specifies the ID of the Search service."
  type        = string
  default     = null
}
variable "custom_question_answering_search_service_key" {
  description = "If 'kind' is 'TextAnalytics' this specifies the key of the Search service."
  type        = string
  default     = null
}
variable "storage" {
  description = "A 'storage' block."
  type        = map(any)
  default     = null
}
#
# storage block structure    :
#   storage_account_id (string): (REQUIRED) Full resource id of a Microsoft.Storage resource.
#   identity_client_id (string): The client ID of the managed identity associated with the storage resource.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
