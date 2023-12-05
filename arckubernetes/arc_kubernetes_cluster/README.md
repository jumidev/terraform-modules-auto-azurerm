# azurerm_arc_kubernetes_cluster

Manages an Arc Kubernetes Cluster.-> **Note:** Installing and configuring the Azure Arc Agent on your Kubernetes Cluster to establish connectivity is outside the scope of this document. For more details refer to [Deploy agents to your cluster](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/conceptual-agent-overview#deploy-agents-to-your-cluster) and [Connect an existing Kubernetes Cluster](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/quickstart-connect-cluster?tabs=azure-cli#connect-an-existing-kubernetes-cluster). If you encounter issues connecting your Kubernetes Cluster to Azure Arc, we'd recommend opening a ticket with Microsoft Support.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "arckubernetes/arc_kubernetes_cluster"   
}

inputs = {
   name = "Specifies the name which should be used for this Arc Kubernetes Cluster..."   
   resource_group_name = "${resource_group}"   
   agent_public_key_certificate = "Specifies the base64-encoded public certificate used by the agent to do the init..."   
   identity = {
      type = "..."      
   }
   
   location = "${location}"   
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
| **name** | string |  Specifies the name which should be used for this Arc Kubernetes Cluster. Changing this forces a new Arc Kubernetes Cluster to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created. | 
| **agent_public_key_certificate** | string |  Specifies the base64-encoded public certificate used by the agent to do the initial handshake to the backend services in Azure. Changing this forces a new Arc Kubernetes Cluster to be created. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block. Changing this forces a new Arc Kubernetes Cluster to be created. | 
| **location** | string |  Specifies the Azure Region where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Arc Kubernetes Cluster. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity assigned to this Arc Kubernetes Cluster. At this time the only possible value is 'SystemAssigned'. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Arc Kubernetes Cluster. | 
| **agent_version** | string | No  | Version of the agent running on the cluster resource. | 
| **distribution** | string | No  | The distribution running on this Arc Kubernetes Cluster. | 
| **identity** | block | No  | An `identity` block. | 
| **infrastructure** | string | No  | The infrastructure on which the Arc Kubernetes Cluster is running on. | 
| **kubernetes_version** | string | No  | The Kubernetes version of the cluster resource. | 
| **offering** | string | No  | The cluster offering. | 
| **total_core_count** | int | No  | Number of CPU cores present in the cluster resource. | 
| **total_node_count** | int | No  | Number of nodes present in the cluster resource. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
