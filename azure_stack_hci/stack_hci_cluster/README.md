# azurerm_stack_hci_cluster



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "azure_stack_hci/stack_hci_cluster"   
}
inputs = {
   name = "The name which should be used for this Azure Stack HCI Cluster..."   
   resource_group_name = "${resource_group}"   
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
| **name** | string |  The name which should be used for this Azure Stack HCI Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure Region where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **client_id** | string |  The Client ID of the Azure Active Directory Application which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block. | 
| **tenant_id** | string |  The Tenant ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created. ~> **NOTE** If unspecified the Tenant ID of the Provider will be used. | 
| **tags** | map |  A mapping of tags which should be assigned to the Azure Stack HCI Cluster. | 
| **automanage_configuration_id** | string |  The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on the Azure Stack HCI Cluster. Possible value is 'SystemAssigned'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **type** | string | No  | Specifies the type of Managed Service Identity that should be configured on the Azure Stack HCI Cluster. Possible value is `SystemAssigned`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The resource ID of the Azure Stack HCI Cluster. | 
| **cloud_id** | string | No  | An immutable UUID for the Azure Stack HCI Cluster. | 
| **resource_provider_object_id** | string | No  | The object ID of the Resource Provider Service Principal. | 
| **identity** | block | No  | An `identity` block. | 
| **service_endpoint** | string | No  | The region specific Data Path Endpoint of the Azure Stack HCI Cluster. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. -> You can access the Principal ID via `azurerm_stack_hci_cluster.example.identity.0.principal_id` | 

Additionally, all variables are provided as outputs.
