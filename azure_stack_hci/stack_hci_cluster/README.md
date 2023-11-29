# azurerm_stack_hci_cluster

Manages an Azure Stack HCI Cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Azure Stack HCI Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created. | 
| **client_id** | string | True | -  |  -  | The Client ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created. | 
| **tenant_id** | string | False | -  |  -  | The Tenant ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Azure Stack HCI Cluster. | 
| **automanage_configuration_id** | string | False | -  |  -  | The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster. | 

