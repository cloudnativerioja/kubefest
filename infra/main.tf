# kubefest.com zone

resource "cloudflare_zone" "kubefest" {
  account = {
    id = var.account_id
  }
  name = "kubefest.com"
  type = "full"
}

resource "cloudflare_dns_record" "kubefest_com" {
  zone_id = cloudflare_zone.kubefest.id
  name    = "kubefest.com"
  content = "cloudnativerioja.github.io"
  proxied = false
  type    = "CNAME"
}

resource "cloudflare_dns_record" "www_kubefest_com" {
  zone_id = cloudflare_zone.kubefest.id
  name    = "www"
  content = "cloudnativerioja.github.io"
  proxied = false
  type    = "CNAME"
}

# Google Search Console verification
resource "cloudflare_record" "gsc_kubefest_com" {
  zone_id = cloudflare_zone.kubefest.id
  name    = "kubefest.com"
  content = "google-site-verification=eTKt9_NpprU6T0FDPi-He0oZirSyEZqDMOBqmKfMNpc"
  type    = "TXT"
}
