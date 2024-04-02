# azurerm_virtual_hub_routing_intent



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_hub_routing_intent"   
}

inputs = {
   name = "The name which should be used for this Virtual Hub Routing Intent..."   
   # virtual_hub_id → set in component_inputs
   routing_policy = {
      this_routing_policy = {
         destinations = "Possible values: Internet | PrivateTraffic"         
         next_hop = "..."         
      }
      
   }
   
}

component_inputs = {
   virtual_hub_id = "path/to/virtual_hub_component:id"   
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
| **name** | string |  The name which should be used for this Virtual Hub Routing Intent. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string |  The resource ID of the Virtual Hub. Changing this forces a new resource to be created. | 
| **routing_policy** | [block](#routing_policy-block-structure) |  One or more `routing_policy` blocks. | 

### `routing_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The unique name for the routing policy. |
| `destinations` | list | Yes | - | A list of destinations which this routing policy is applicable to. Possible values are 'Internet' and 'PrivateTraffic'. |
| `next_hop` | string | Yes | - | The resource ID of the next hop on which this routing policy is applicable to. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **next_hop** | string | No  | The resource ID of the next hop on which this routing policy is applicable to. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Virtual Hub Routing Intent. | 

Additionally, all variables are provided as outputs.
