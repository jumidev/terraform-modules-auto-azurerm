# azurerm_stack_hci_cluster

Manages an Azure Stack HCI Cluster.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Azure Stack HCI Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created. | 
| **var.client_id** | string | True | The Client ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created. | 
| **var.tenant_id** | string | False | The Tenant ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Azure Stack HCI Cluster. | 
| **var.automanage_configuration_id** | string | False | The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **client_id** | string  | - | 
| **tenant_id** | string  | - | 
| **tags** | map  | - | 
| **automanage_configuration_id** | string  | - | 
| **id** | string  | The ID of the Azure Stack HCI Cluster. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "azure_stack_hci/stack_hci_cluster" 
}

inputs = {
   name = "name of stack_hci_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   client_id = "client_id of stack_hci_cluster" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```