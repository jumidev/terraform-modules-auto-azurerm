

resource "azurerm_palo_alto_local_rulestack_rule" "this" {

  ########################################
  # required vars
  ########################################
  applications = var.applications
  rulestack_id = var.rulestack_id
  priority     = var.priority
  action       = var.action
  name         = var.name

  dynamic "destination" { # var.destination
    for_each = var.destination != null ? var.destination : []
    content {
      cidrs                           = lookup(destination.value, "cidrs", null)
      countries                       = lookup(destination.value, "countries", null)
      feeds                           = lookup(destination.value, "feeds", null)
      local_rulestack_fqdn_list_ids   = lookup(destination.value, "local_rulestack_fqdn_list_ids", null)
      local_rulestack_prefix_list_ids = lookup(destination.value, "local_rulestack_prefix_list_ids", null)
    }
  }


  dynamic "source" { # var.source
    for_each = var.source != null ? var.source : []
    content {
      cidrs                           = lookup(source.value, "cidrs", null)
      countries                       = lookup(source.value, "countries", null)
      feeds                           = lookup(source.value, "feeds", null)
      local_rulestack_prefix_list_ids = lookup(source.value, "local_rulestack_prefix_list_ids", null)
    }
  }


  ########################################
  # optional vars
  ########################################
  audit_comment = var.audit_comment

  dynamic "category" { # var.category
    for_each = var.category != null ? var.category : []
    content {
      feeds       = lookup(category.value, "feeds", null)
      custom_urls = lookup(category.value, "custom_urls") # (Required) possible values: abortion | abused-drugs | adult | alcohol-and-tobacco | auctions | business-and-economy | command-and-control | computer-and-internet-info | content-delivery-networks | copyright-infringement | cryptocurrency | dating | dynamic-dns | educational-institutions | entertainment-and-arts | extremism | financial-services | gambling | games | government | grayware | hacking | health-and-medicine | high-risk | home-and-garden | hunting-and-fishing | insufficient-content | internet-communications-and-telephony | internet-portals | job-search | legal | low-risk | malware | medium-risk | military | motor-vehicles | music | newly-registered-domain | news | not-resolved | nudity | online-storage-and-backup | parked | peer-to-peer | personal-sites-and-blogs | philosophy-and-political-advocacy | phishing | private-ip-addresses | proxy-avoidance-and-anonymizers | questionable | real-estate | real-time-detection | recreation-and-hobbies | reference-and-research | religion | search-engines | sex-education | shareware-and-freeware | shopping | social-networking | society | sports | stock-advice-and-tools | streaming-media | swimsuits-and-intimate-apparel | training-and-tools | translation | travel | unknown | weapons | web-advertisements | web-based-email | web-hosting
    }
  }

  decryption_rule_type      = var.decryption_rule_type # Default: None
  description               = var.description
  enabled                   = var.enabled # Default: True
  inspection_certificate_id = var.inspection_certificate_id
  logging_enabled           = var.logging_enabled    # Default: False
  negate_destination        = var.negate_destination # Default: False
  negate_source             = var.negate_source      # Default: False
  protocol                  = var.protocol           # Default: application-default
  protocol_ports            = var.protocol_ports
  tags                      = var.tags
}
