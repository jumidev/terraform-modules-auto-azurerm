# azurerm_arc_kubernetes_cluster

Manages an Arc Kubernetes Cluster.-> **Note:** Installing and configuring the Azure Arc Agent on your Kubernetes Cluster to establish connectivity is outside the scope of this document. For more details refer to [Deploy agents to your cluster](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/conceptual-agent-overview#deploy-agents-to-your-cluster) and [Connect an existing Kubernetes Cluster](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/quickstart-connect-cluster?tabs=azure-cli#connect-an-existing-kubernetes-cluster). If you encounter issues connecting your Kubernetes Cluster to Azure Arc, we'd recommend opening a ticket with Microsoft Support.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Arc Kubernetes Cluster. Changing this forces a new Arc Kubernetes Cluster to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created. | 
| **var.agent_public_key_certificate** | string | True | Specifies the base64-encoded public certificate used by the agent to do the initial handshake to the backend services in Azure. Changing this forces a new Arc Kubernetes Cluster to be created. | 
| **var.identity** | block | True | An `identity` block. Changing this forces a new Arc Kubernetes Cluster to be created. | 
| **var.location** | string | True | Specifies the Azure Region where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Arc Kubernetes Cluster. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **agent_public_key_certificate** | string  | - | 
| **identity** | block  | - | 
| **location** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Arc Kubernetes Cluster. | 
| **agent_version** | string  | Version of the agent running on the cluster resource. | 
| **distribution** | string  | The distribution running on this Arc Kubernetes Cluster. | 
| **identity** | block  | An `identity` block. | 
| **infrastructure** | string  | The infrastructure on which the Arc Kubernetes Cluster is running on. | 
| **kubernetes_version** | string  | The Kubernetes version of the cluster resource. | 
| **offering** | string  | The cluster offering. | 
| **total_core_count** | int  | Number of CPU cores present in the cluster resource. | 
| **total_node_count** | int  | Number of nodes present in the cluster resource. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "arckubernetes/arc_kubernetes_cluster" 
}

inputs = {
   name = "name of arc_kubernetes_cluster" 
   resource_group_name = "${resource_group}" 
   agent_public_key_certificate = "agent_public_key_certificate of arc_kubernetes_cluster" 
   identity = "identity of arc_kubernetes_cluster" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```