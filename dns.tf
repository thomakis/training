#

# DO NOT DELETE THESE LINES!

#

# Your DNSimple email is:

#

#     sethvargo+terraform@gmail.com

#

# Your DNSimple token is:

#

#     sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF

#

# Your Identity is:

#

#     totaljobs-6f4922f45568161a8cdf4ad2299f6d23

#

provider "dnsimple" {
  token = "sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF"
  email = "sethvargo+terraform@gmail.com"
}

resource "dnsimple_record" "terraformrocks" {
  domain = "terraform.rocks"
  name   = "totaljobs-6f4922f45568161a8cdf4ad2299f6d23"
  value  = "${aws_instance.web.0.public_ip}"
  type   = "A"
  ttl    = 3600
}
