# azurerm_lb_probe

Manages a LoadBalancer Probe Resource.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "load_balancer/lb_probe" 
}

inputs = {
   name = "name of lb_probe" 
   loadbalancer_id = "loadbalancer_id of lb_probe" 
   port = "port of lb_probe" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Probe. Changing this forces a new resource to be created. | 
| **var.loadbalancer_id** | string | True | -  |  -  |  The ID of the LoadBalancer in which to create the NAT Rule. Changing this forces a new resource to be created. | 
| **var.protocol** | string | False | -  |  `Http`, `Https`, `Tcp`  |  Specifies the protocol of the end point. Possible values are `Http`, `Https` or `Tcp`. If TCP is specified, a received ACK is required for the probe to be successful. If HTTP is specified, a 200 OK response from the specified URI is required for the probe to be successful. | 
| **var.port** | string | True | -  |  -  |  Port on which the Probe queries the backend endpoint. Possible values range from 1 to 65535, inclusive. | 
| **var.probe_threshold** | string | False | -  |  `1`, `100`  |  The number of consecutive successful or failed probes that allow or deny traffic to this endpoint. Possible values range from `1` to `100`. The default value is `1`. | 
| **var.request_path** | string | False | -  |  -  |  The URI used for requesting health status from the backend endpoint. Required if protocol is set to `Http` or `Https`. Otherwise, it is not allowed. | 
| **var.interval_in_seconds** | int | False | -  |  -  |  The interval, in seconds between probes to the backend endpoint for health status. The default value is 15, the minimum value is 5. | 
| **var.number_of_probes** | int | False | `2`  |  -  |  The number of failed probe attempts after which the backend endpoint is removed from rotation. Default to `2`. NumberOfProbes multiplied by intervalInSeconds value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Load Balancer Probe. | 

Additionally, all variables are provided as outputs.
