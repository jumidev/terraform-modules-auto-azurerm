# azurerm_virtual_hub_routing_intent

Manages a Virtual Hub Routing Intent.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_hub_routing_intent" 
}

inputs = {
   name = "name of virtual_hub_routing_intent" 
   virtual_hub_id = "virtual_hub_id of virtual_hub_routing_intent" 
   routing_policy = "routing_policy of virtual_hub_routing_intent" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Virtual Hub Routing Intent. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | True | The resource ID of the Virtual Hub. Changing this forces a new resource to be created. | 
| **var.routing_policy** | block | True | One or more `routing_policy` blocks. | | `routing_policy` block structure: || 
|   name (string): (REQUIRED) The unique name for the routing policy. ||
|   destinations (string): (REQUIRED) A list of destinations which this routing policy is applicable to. Possible values are 'Internet' and 'PrivateTraffic'. ||
|   next_hop (string): (REQUIRED) The resource ID of the next hop on which this routing policy is applicable to. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Hub Routing Intent. | 

Additionally, all variables are provided as outputs.
