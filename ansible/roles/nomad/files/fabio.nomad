job "fabio" {
  datacenters = ["dc1"]
  type = "system"

  group "fabio" {
    task "fabio" {
      driver = "exec"

      config {
        command = "/usr/local/bin/fabio"
      }

      resources {
        network {
          mbits = 10
          port "http" {
            static = 9999
          }
        }
      }
    }
  }
}