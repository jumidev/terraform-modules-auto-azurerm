# REQUIRED VARIABLES

variable "kubernetes_cluster_id" {
  description = "(REQUIRED) Specifies the Kubernetes Cluster Id within which this Kubernetes Cluster Trusted Access Role Binding should exist. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) Specifies the name of this Kubernetes Cluster Trusted Access Role Binding. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created."
  type        = string

}
variable "roles" {
  description = "(REQUIRED) A list of roles to bind, each item is a resource type qualified role name."
  type        = list(any)

}
variable "source_resource_id" {
  description = "(REQUIRED) The ARM resource ID of source resource that trusted access is configured for. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created."
  type        = string

}
