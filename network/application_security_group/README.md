# azurerm_application_security_group

Manages an Application Security Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/application_security_group"   
}

inputs = {
   name = "Specifies the name of the Application Security Group..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resources


### `network_interface_id` 

- If set to a valid `azurerm_network_interface` `id`, makes a **azurerm_network_interface_application_security_group_association** - Manages the association between a Network Interface and a Application Security Group.

Example component snippet:

```hcl
component_inputs = {
   network_interface_id = "path/to/network_interface_component:id"
}
```

### `private_endpoint_id` 

- If set to a valid `azurerm_private_endpoint` `id`, makes a **azurerm_private_endpoint_application_security_group_association** - Manages an association between Private Endpoint and Application Security Group.

Example component snippet:

```hcl
component_inputs = {
   private_endpoint_id = "path/to/private_endpoint_component:id"
}
```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the Application Security Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Application Security Group. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Application Security Group. | 

Additionally, all variables are provided as outputs.
