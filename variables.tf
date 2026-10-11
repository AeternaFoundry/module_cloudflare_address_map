variable "address_maps" {
  description = <<EOT
Map of address_maps, attributes below
Required:
    - account_id
Optional:
    - default_sni
    - description
    - enabled
    - ips
    - memberships
EOT

  type = map(object({
    account_id  = string
    default_sni = optional(string)
    description = optional(string)
    enabled     = optional(bool)
    ips         = optional(list(string))
    memberships = optional(list(object({
      identifier = optional(string)
      kind       = optional(string)
    })))
  }))
}

