# azurerm_route_server

Manages an Azure Route Server

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/route_server"   
}

inputs = {
   name = "The name of the Route Server"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # subnet_id → set in component_inputs
   sku = "The SKU of the Route Server"   
   # public_ip_address_id → set in component_inputs
}

component_inputs = {
   subnet_id = "path/to/subnet_component:id"   
   public_ip_address_id = "path/to/public_ip_component:id"   
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
| **name** | string |  The name of the Route Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group where the Route Server should exist. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the Route Server should exist. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  The ID of the Subnet that the Route Server will reside. Changing this forces a new resource to be created. -> **NOTE:** Azure Route Server requires a dedicated subnet named RouteServerSubnet. The subnet size has to be at least /27 or short prefix (such as /26 or /25) and cannot be attached to any security group, otherwise, you'll receive an error message when deploying the Route Server | 
| **sku** | string |  The SKU of the Route Server. The only possible value is `Standard`. Changing this forces a new resource to be created. | 
| **public_ip_address_id** | string |  The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **branch_to_branch_traffic_enabled** | bool |  Whether to enable route exchange between Azure Route Server and the gateway(s) | 
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Route Server . | 

Additionally, all variables are provided as outputs.
