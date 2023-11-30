# azurerm_route_server

Manages an Azure Route Server

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/route_server" 
}

inputs = {
   name = "name of route_server" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   subnet_id = "subnet_id of route_server" 
   sku = "sku of route_server" 
   public_ip_address_id = "public_ip_address_id of route_server" 
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
| **var.name** | string  The name of the Route Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  Specifies the name of the Resource Group where the Route Server should exist. Changing this forces a new resource to be created. | 
| **var.location** | string  Specifies the supported Azure location where the Route Server should exist. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string  The ID of the Subnet that the Route Server will reside. Changing this forces a new resource to be created. | 
| **var.sku** | string  The SKU of the Route Server. The only possible value is `Standard`. Changing this forces a new resource to be created. | 
| **var.public_ip_address_id** | string  The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.branch_to_branch_traffic_enabled** | bool  Whether to enable route exchange between Azure Route Server and the gateway(s) | 
| **var.tags** | map  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Route Server . | 

Additionally, all variables are provided as outputs.
