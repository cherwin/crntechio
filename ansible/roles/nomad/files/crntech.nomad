job "crntech" {
  datacenters = ["dc1"]

  group "crn" {
    count = 1
    task "server" {
      driver = "docker"

      config {
	    force_pull = true
        image = "cherwin/crntechio"
        port_map = {
          http = 80
        }
      }

	  service {
	    tags = ["urlprefix-/"]
	    name = "crntechio"
	    port = "http"

	    check {
	      type     = "http"
	      path     = "/"
		    interval = "5s"
		    timeout  = "5s"
	    }
	}

  resources {
    network {
      mbits = 10
      port "http" {}
    }
  }
}
