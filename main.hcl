resource "lab" "main" {
  title       = "Test lab connect - Conflicted title 4"
  description = "This is the Skeleton Lab.  \nYou can use this as a minimal starting point for developing labs. 2"

  # timelimit and idle are both required on every lab.
  settings {
    idle {
      enabled = true
      timeout = "15m"
    }
    timelimit {
      duration = "1h"
    }
  }

  layout = resource.layout.single_panel

  content {
    chapter "__default" {
      title = "Default"
      page "untitled-page-1" {
        reference = resource.page.untitled-page-1
        title     = "Untitled page 1"
      }
    }
  }
}
