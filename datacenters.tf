resource "akamai_gtm_datacenter" "Datacenter1" {
  domain                            = akamai_gtm_domain.www_akamaiflowershop_com.name
  nickname                          = "US-east"
  city                              = "Boston"
  state_or_province                 = "MA"
  country                           = "US"
  latitude                          = 42.35899
  longitude                         = -71.05863
  cloud_server_host_header_override = false
  cloud_server_targeting            = false
  depends_on = [
    akamai_gtm_domain.www_akamaiflowershop_com
  ]
}

resource "akamai_gtm_datacenter" "Datacenter2" {
  domain                            = akamai_gtm_domain.www_akamaiflowershop_com.name
  nickname                          = "US-west"
  city                              = "San Francisco"
  state_or_province                 = "CA"
  country                           = "US"
  latitude                          = 37.78008
  longitude                         = -122.42016
  cloud_server_host_header_override = false
  cloud_server_targeting            = false
  depends_on = [
    akamai_gtm_domain.www_akamaiflowershop_com
  ]
}
