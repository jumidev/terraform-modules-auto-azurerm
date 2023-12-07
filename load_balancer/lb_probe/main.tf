

resource "azurerm_lb_probe" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  loadbalancer_id = var.loadbalancer_id
  port            = var.port

  ########################################
  # optional vars
  ########################################
  protocol            = var.protocol
  probe_threshold     = var.probe_threshold # Default: 1
  request_path        = var.request_path
  interval_in_seconds = var.interval_in_seconds
  number_of_probes    = var.number_of_probes # Default: 2
}
