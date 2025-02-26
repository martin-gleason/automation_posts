
# purpose -----------------------------------------------------------------

#creating and sending emails with blastula
#note on system.file(): this function pulls from a package. Since Schatzi is
#in a different directory, I can use here()

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
    
I am sending you an email from an R package called **blastula**.
    
This is a version sent from an R script.

This email is approved by Schatzi.

{pic}
    
Enjoy,<br>
Marty
  {btn}"
  )  
)
)imng
  pass_envvar = "PRIVATE_EMAIL_PASS",
  host = "mail.privateemail.com",
  port = 465,
  use_ssl = TRUE
  )


# sending email via smtp --------------------------------------------------

test_emails <- c("Marty Gleason" = "martin.gleason.ms@gmail.com", 
                 "Kylah Seltzer Johnston" = "kylahrsj@gmail.com",
                 "Shannon Erin Glass" = "Shannonerin@gmail.com")

test %>%
  smtp_send(
    to = test_emails,
    from = Sys.getenv("INFO"),
    subject ="Test Email, Approved by Schatzi" ,
    credentials = private_email_creds
  )



# Next steps --------------------------------------------------------------

# pull first line from .qmd

  
