resource "cloudflare_dns_record" "kubefest_com" {
  zone_id = var.cloudflare_zone_id
  name    = "kubefest.com"
  content = "cloudnativerioja.github.io"
  type    = "CNAME"
  ttl     = "1"
  proxied = false
}

resource "cloudflare_dns_record" "www_kubefest_com" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  content = "cloudnativerioja.github.io"
  type    = "CNAME"
  ttl     = "1"
  proxied = false
}

resource "cloudflare_dns_record" "year_2024_kubefest_com" {
  zone_id = var.cloudflare_zone_id
  name    = "2024"
  content = "cloudnativerioja.github.io"
  type    = "CNAME"
  ttl     = "1"
  proxied = false
}

# Google Search Console verification
resource "cloudflare_dns_record" "gsc_kubefest_com" {
  zone_id = var.cloudflare_zone_id
  name    = "kubefest.com"
  content = "google-site-verification=eTKt9_NpprU6T0FDPi-He0oZirSyEZqDMOBqmKfMNpc"
  type    = "TXT"
  ttl     = "1"
}
