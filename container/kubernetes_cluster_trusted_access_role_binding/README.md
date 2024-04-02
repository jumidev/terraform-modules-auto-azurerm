# azurerm_kubernetes_cluster_trusted_access_role_binding



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/kubernetes_cluster_trusted_access_role_binding"   
}

inputs = {
   # kubernetes_cluster_id → set in component_inputs
   name = "Specifies the name of this Kubernetes Cluster Trusted Access Role Binding..."   
   roles = "A list of roles to bind, each item is a resource type qualified role name..."   
   source_resource_id = "The ARM resource ID of source resource that trusted access is configured for..."   
}

component_inputs = {
   kubernetes_cluster_id = "path/to/kubernetes_cluster_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **kubernetes_cluster_id** | string |  Specifies the Kubernetes Cluster Id within which this Kubernetes Cluster Trusted Access Role Binding should exist. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created. | 
| **name** | string |  Specifies the name of this Kubernetes Cluster Trusted Access Role Binding. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created. | 
| **roles** | list |  A list of roles to bind, each item is a resource type qualified role name. | 
| **source_resource_id** | string |  The ARM resource ID of source resource that trusted access is configured for. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **source_resource_id** | string | No  | The ARM resource ID of source resource that trusted access is configured for. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Kubernetes Cluster Trusted Access Role Binding. | 

Additionally, all variables are provided as outputs.
