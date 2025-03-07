
# purpose -----------------------------------------------------------------

#creating and sending emails with blastula
#note on system.file(): this function pulls from a package. Since Schatzi is
#in a different directory, I can use here()

# help from https://www.youtube.com/watch?v=_QQGW_RUw_I !!

# packages ----------------------------------------------------------------

library(blastula)
library(here)
library(glue)

image_path <- here("pics", "schatzi_approve.jpeg")

pic <- add_image(file = image_path)

btn <- add_cta_button(
  url = "https://organizers.science",
  text = "r4Revolution"
)

test <- compose_email(
  body = md(glue(    
  "
Hello friend,
    
I am sending you an email from an R package called **blastula** and a github action.
    
This is a version sent from an R script.

This email is approved by Schatzi.

{pic}
    
Enjoy,<br>
Marty
  {btn}"
  )  
)
)


# CREDENTIALS -------------------------------------------------------------

EMAIL <- Sys.getenv("EMAIL")
PASSWORD <- Sys.getenv("PASSWORD")

private_email_creds <- creds_envvar(
  user = EMAIL,
  pass_envvar = "PASSWORD",
  host = "mail.privateemail.com",
  port = 465,
  use_ssl = TRUE
)

print(private_email_creds)

print(private_email_creds)

# sending email via smtp --------------------------------------------------

test_emails <- c("Marty Gleason" = "martin.gleason.ms@gmail.com")

test %>%
  smtp_send(
    to = test_emails,
    from = Sys.getenv("INFO"),
    subject ="2nd Test Email, Approved by Schatzi" ,
    credentials = private_email_creds
  )

# Next steps --------------------------------------------------------------

# pull first line from .qmd
