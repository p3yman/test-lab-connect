resource "lab" "main" {
  title       = "Conflicted title New"
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
      page "untitled-page-2" {
        reference = resource.page.untitled-page-2
        title     = "Untitled page 2"
      }
      page "untitled-page-3" {
        reference = resource.page.untitled-page-3
        title     = "Untitled page 3"
      }

      page "untitled-page-4" {
        reference = resource.page.untitled-page-4
        title     = "Untitled page 4"
      }
    }
    chapter "untitled-chapter-1" {
      title = "Untitled chapter 1"
    }
  }
}
