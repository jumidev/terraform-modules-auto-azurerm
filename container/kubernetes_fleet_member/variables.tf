# REQUIRED VARIABLES

variable "kubernetes_cluster_id" {
  description = "(REQUIRED) The ARM resource ID of the cluster that joins the Fleet. Changing this forces a new Kubernetes Fleet Member to be created."
  type        = string

}
variable "kubernetes_fleet_id" {
  description = "(REQUIRED) Specifies the Kubernetes Fleet Id within which this Kubernetes Fleet Member should exist. Changing this forces a new Kubernetes Fleet Member to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) Specifies the name of this Kubernetes Fleet Member. Changing this forces a new Kubernetes Fleet Member to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "group" {
  description = "The group this member belongs to for multi-cluster update management."
  type        = string
  default     = null
}
