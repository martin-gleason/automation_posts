
# Purpose -----------------------------------------------------------------

# experimenting with a posting to bluesky to then follow 
# https://drmowinckels.io/blog/2024/bluesky/ 's github action


# From:
#Dr. Mowinckel (Dec 2, 2024) 
#Posting to Bluesky from R. 
#Retrieved from https://drmowinckels.io/blog/2024/bluesky/. 
#DOI: https://www.doi.org/10.5281/zenodo.14259387

# Packages ----------------------------------------------------------------

library(tidyverse)
library(bskyr)



# Credentials -------------------------------------------------------------

set_bluesky_user("organizers.science")
set_bluesky_pass("lqep-wtz6-x3h7-crh6",
                 install = TRUE,
                 r_env = file.path(Sys.getenv("HOME"),
                                   ".Renviron"))
bs_auth(user = get_bluesky_user(),
        pass = get_bluesky_pass(),
        save_auth = TRUE)

#Alternative from documentation:
#usethis::edit_r_environ() and adding lines like so:
#BLUESKY_APP_USER='YOUR-USERNAME.bsky.social'
#BLUESKY_APP_PASS='your-apps-pass-word'
#maybe used for persistent secrets across github actions


# Post test ---------------------------------------------------------------

img <- here("pics", "Hell_yeah.png")

# Get Image ---------------------------------------------------------------

public_image <- file.path("/Users/marty/Hell_yeah.png")

bs_post(
  text = "This is a the second version of a test post from an R Script."
  )

# 
# bs_post(
#   text = "This is the third version of a test post from an R Script.
# via @bskyr.bsky.social (https://christophertkenny.com/bskyr/)",
#   user = "organizers.science"
# )
# 
# #image must be under 1 meg
# bs_post(
#   text = "This is the fourth version of a test post from an R Script.
# via @bskyr.bsky.social (https://christophertkenny.com/bskyr/)",
#   images = img,
#   images_alt = "Kite man from DC Comics saying hell yeah"
#   )

bs_post(
  text = "Yet another post on bluesky, this time from github actions."
)
