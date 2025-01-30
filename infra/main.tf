# kubefest.com zone
resource "cloudflare_zone" "kubefest" {
  account_id = var.account_id
  zone       = "kubefest.com"
}

resource "cloudflare_record" "kubefest_com" {
  zone_id = cloudflare_zone.kubefest.id
  name    = "kubefest.com"
  content = "cloudnativerioja.github.io"
  type    = "CNAME"
}

resource "cloudflare_record" "www_kubefest_com" {
  zone_id = cloudflare_zone.kubefest.id
  name    = "www"
  content = "cloudnativerioja.github.io"
  type    = "CNAME"
}

resource "cloudflare_record" "year_2024_kubefest_com" {
  zone_id = cloudflare_zone.kubefest.id
  name    = "2024"
  content = "cloudnativerioja.github.io"
  type    = "CNAME"
}

# Google Search Console verification
resource "cloudflare_record" "gsc_kubefest_com" {
  zone_id = cloudflare_zone.kubefest.id
  name    = "kubefest.com"
  content = "google-site-verification=eTKt9_NpprU6T0FDPi-He0oZirSyEZqDMOBqmKfMNpc"
  type    = "TXT"
}
