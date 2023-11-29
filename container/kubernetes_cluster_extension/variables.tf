# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Kubernetes Cluster Extension. Changing this forces a new Kubernetes Cluster Extension to be created."
  type        = string

}
variable "cluster_id" {
  description = "(REQUIRED) Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created."
  type        = string

}
variable "extension_type" {
  description = "(REQUIRED) Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for AKS](https://learn.microsoft.com/en-us/azure/aks/cluster-extensions?tabs=azure-cli#currently-available-extensions). Changing this forces a new Kubernetes Cluster Extension to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "configuration_protected_settings" {
  description = "Configuration settings that are sensitive, as name-value pairs for configuring this extension."
  type        = string
  default     = null
}
variable "configuration_settings" {
  description = "Configuration settings, as name-value pairs for configuring this extension."
  type        = string
  default     = null
}
variable "plan" {
  description = "A 'plan' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# plan block structure   :
#   name (string)          : (REQUIRED) Specifies the name of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created.
#   product (string)       : (REQUIRED) Specifies the product of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created.
#   publisher (string)     : (REQUIRED) Specifies the publisher of the plan. Changing this forces a new Kubernetes Cluster Extension to be created.
#   promotion_code (string): Specifies the promotion code to use with the plan. Changing this forces a new Kubernetes Cluster Extension to be created.
#   version (string)       : Specifies the version of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created.


variable "release_train" {
  description = "The release train used by this extension. Possible values include but are not limited to 'Stable', 'Preview'. Changing this forces a new Kubernetes Cluster Extension to be created."
  type        = string
  default     = null
}
variable "release_namespace" {
  description = "Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created."
  type        = string
  default     = null
}
variable "target_namespace" {
  description = "Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created."
  type        = string
  default     = null
}
variable "version" {
  description = "User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Kubernetes Cluster Extension to be created."
  type        = string
  default     = null
}
