# azurerm_private_dns_resolver_inbound_endpoint

Manages a Private DNS Resolver Inbound Endpoint.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns_resolver/private_dns_resolver_inbound_endpoint" 
}

inputs = {
   name = "name of private_dns_resolver_inbound_endpoint" 
   private_dns_resolver_id = "private_dns_resolver_id of private_dns_resolver_inbound_endpoint" 
   ip_configurations = {
      example_ip_configurations = {
         subnet_id = "TODO link to network.subnet.id"   
      }
  
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
| **var.name** | string |  Specifies the name which should be used for this Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created. | 
| **var.private_dns_resolver_id** | string |  Specifies the ID of the Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created. | 
| **var.ip_configurations** | block |  Can be specified multiple times to define multiple IP configurations. Each `ip_configurations` block. | 
| **var.location** | string |  Specifies the Azure Region where the Private DNS Resolver Inbound Endpoint should exist. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags which should be assigned to the Private DNS Resolver Inbound Endpoint. | 

### `ip_configurations` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `private_ip_allocation_method` | string | No | Dynamic | Private IP address allocation method. Allowed value is 'Dynamic'. Defaults to 'Dynamic'. |
| `subnet_id` | string | Yes | - | The subnet ID of the IP configuration. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Private DNS Resolver Inbound Endpoint. | 
| **private_ip_address** | string | No  | Private IP address of the IP configuration. | 

Additionally, all variables are provided as outputs.
