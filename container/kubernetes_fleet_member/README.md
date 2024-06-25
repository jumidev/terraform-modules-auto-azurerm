# azurerm_kubernetes_fleet_member



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/kubernetes_fleet_member"   
}
inputs = {
   # kubernetes_cluster_id → set in component_inputs
   kubernetes_fleet_id = "Specifies the Kubernetes Fleet Id within which this Kubernetes Fleet Member shou..."   
   name = "Specifies the name of this Kubernetes Fleet Member"   
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
| **kubernetes_cluster_id** | string |  The ARM resource ID of the cluster that joins the Fleet. Changing this forces a new Kubernetes Fleet Member to be created. | 
| **kubernetes_fleet_id** | string |  Specifies the Kubernetes Fleet Id within which this Kubernetes Fleet Member should exist. Changing this forces a new Kubernetes Fleet Member to be created. | 
| **name** | string |  Specifies the name of this Kubernetes Fleet Member. Changing this forces a new Kubernetes Fleet Member to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **group** | string |  The group this member belongs to for multi-cluster update management. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **group** | string | No  | The group this member belongs to for multi-cluster update management. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Kubernetes Fleet Member. | 

Additionally, all variables are provided as outputs.
