resource "cloudflare_address_map" "address_maps" {
  for_each = var.address_maps

  account_id  = each.value.account_id
  default_sni = each.value.default_sni
  description = each.value.description
  enabled     = each.value.enabled
  ips         = each.value.ips
  memberships = each.value.memberships
}

