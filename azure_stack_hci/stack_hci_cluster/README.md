# azurerm_stack_hci_cluster

Manages an Azure Stack HCI Cluster.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string  The name which should be used for this Azure Stack HCI Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the Resource Group where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created. | 
| **var.location** | string  The Azure Region where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created. | 
| **var.client_id** | string  The Client ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tenant_id** | string  The Tenant ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created. | 
| **var.tags** | map  A mapping of tags which should be assigned to the Azure Stack HCI Cluster. | 
| **var.automanage_configuration_id** | string  The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Stack HCI Cluster. | 

Additionally, all variables are provided as outputs.
