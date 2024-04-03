# azurerm_private_link_service



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/private_link_service"   
}
inputs = {
   name = "Specifies the name of this Private Link Service"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   nat_ip_configuration = {
      name = "..."      
      # subnet_id → set in component_inputs
      primary = true      
   }   
   # load_balancer_frontend_ip_configuration_ids → set in component_inputs
}
component_inputs = {
   nat_ip_configuration.subnet_id = "path/to/subnet_component:id"   
   load_balancer_frontend_ip_configuration_ids = ["path/to/lb_outbound_rule_component:frontend_ip_configuration", "..."]   
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
| **name** | string |  Specifies the name of this Private Link Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Private Link Service should exist. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **nat_ip_configuration** | [block](#nat_ip_configuration-block-structure) |  One or more (up to 8) `nat_ip_configuration` block. | 
| **load_balancer_frontend_ip_configuration_ids** | list |  A list of Frontend IP Configuration IDs from a Standard Load Balancer, where traffic from the Private Link Service should be routed. You can use Load Balancer Rules to direct this traffic to appropriate backend pools where your applications are running. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **auto_approval_subscription_ids** | list |  A list of Subscription UUID/GUID's that will be automatically be able to use this Private Link Service. | 
| **enable_proxy_protocol** | bool |  Should the Private Link Service support the Proxy Protocol? | 
| **fqdns** | string |  List of FQDNs allowed for the Private Link Service. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 
| **visibility_subscription_ids** | list |  A list of Subscription UUID/GUID's that will be able to see this Private Link Service. -> **NOTE:** If no Subscription IDs are specified then Azure allows every Subscription to see this Private Link Service. | 

### `nat_ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name which should be used for the NAT IP Configuration. Changing this forces a new resource to be created. |
| `subnet_id` | string | Yes | - | Specifies the ID of the Subnet which should be used for the Private Link Service. -> **NOTE:** Verify that the Subnet's 'enforce_private_link_service_network_policies' attribute is set to 'true'. |
| `primary` | bool | Yes | True | Is this is the Primary IP Configuration? Changing this forces a new resource to be created. |
| `private_ip_address` | string | No | - | Specifies a Private Static IP Address for this IP Configuration. |
| `private_ip_address_version` | string | No | IPv4 | The version of the IP Protocol which should be used. At this time the only supported value is 'IPv4'. Defaults to 'IPv4'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **private_ip_address_version** | string | No  | The version of the IP Protocol which should be used. At this time the only supported value is `IPv4`. Defaults to `IPv4`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **alias** | string | No  | A globally unique DNS Name for your Private Link Service. You can use this alias to request a connection to your Private Link Service. | 

Additionally, all variables are provided as outputs.
