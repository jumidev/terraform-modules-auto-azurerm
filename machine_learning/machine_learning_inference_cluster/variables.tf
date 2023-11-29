# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created."
  type        = string

}
variable "kubernetes_cluster_id" {
  description = "(REQUIRED) The ID of the Kubernetes Cluster. Changing this forces a new Machine Learning Inference Cluster to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Machine Learning Inference Cluster should exist. Changing this forces a new Machine Learning Inference Cluster to be created."
  type        = string

}
variable "machine_learning_workspace_id" {
  description = "(REQUIRED) The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Inference Cluster to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "cluster_purpose" {
  description = "The purpose of the Inference Cluster. Options are 'DevTest', 'DenseProd' and 'FastProd'. If used for Development or Testing, use 'DevTest' here. Default purpose is 'FastProd', which is recommended for production workloads. Changing this forces a new Machine Learning Inference Cluster to be created."
  type        = string
  default     = null
}
variable "description" {
  description = "The description of the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block. Changing this forces a new Machine Learning Inference Cluster to be created."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Machine Learning Inference Cluster. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). Changing this forces a new resource to be created.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Inference Cluster. Changing this forces a new resource to be created.


variable "ssl" {
  description = "A 'ssl' block. Changing this forces a new Machine Learning Inference Cluster to be created."
  type        = map(any)
  default     = null
}
#
# ssl block structure               :
#   cert (string)                     : The certificate for the SSL configuration.Conflicts with 'ssl.0.leaf_domain_label','ssl.0.overwrite_existing_domain'. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to ''''.
#   cname (string)                    : The cname of the SSL configuration.Conflicts with 'ssl.0.leaf_domain_label','ssl.0.overwrite_existing_domain'. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to ''''.
#   key (string)                      : The key content for the SSL configuration.Conflicts with 'ssl.0.leaf_domain_label','ssl.0.overwrite_existing_domain'. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to ''''.
#   leaf_domain_label (string)        : The leaf domain label for the SSL configuration. Conflicts with 'ssl.0.cert','ssl.0.key','ssl.0.cname'. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to ''''.
#   overwrite_existing_domain (string): Whether or not to overwrite existing leaf domain. Conflicts with 'ssl.0.cert','ssl.0.key','ssl.0.cname' Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to ''''.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created."
  type        = map(any)
  default     = null
}
