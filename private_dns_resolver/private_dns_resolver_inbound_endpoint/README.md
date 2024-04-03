# azurerm_private_dns_resolver_inbound_endpoint



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "private_dns_resolver/private_dns_resolver_inbound_endpoint"   
}

inputs = {
   name = "Specifies the name which should be used for this Private DNS Resolver Inbound En..."   
   # private_dns_resolver_id → set in component_inputs
   ip_configurations = {
      # subnet_id → set in component_inputs
   }
   
   location = "${location}"   
}

component_inputs = {
   private_dns_resolver_id = "path/to/private_dns_resolver_component:id"   
   ip_configurations.subnet_id = "path/to/subnet_component:id"   
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
| **name** | string |  Specifies the name which should be used for this Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created. | 
| **private_dns_resolver_id** | string |  Specifies the ID of the Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created. | 
| **ip_configurations** | [block](#ip_configurations-block-structure) |  Can be specified multiple times to define multiple IP configurations. Each `ip_configurations` block. | 
| **location** | string |  Specifies the Azure Region where the Private DNS Resolver Inbound Endpoint should exist. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Private DNS Resolver Inbound Endpoint. | 

### `ip_configurations` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `private_ip_allocation_method` | string | No | Dynamic | Private IP address allocation method. Allowed value is 'Dynamic'. Defaults to 'Dynamic'. |
| `subnet_id` | string | Yes | - | The subnet ID of the IP configuration. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **subnet_id** | string | No  | The subnet ID of the IP configuration. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Private DNS Resolver Inbound Endpoint. | 
| **private_ip_address** | string | No  | Private IP address of the IP configuration. | 

Additionally, all variables are provided as outputs.
