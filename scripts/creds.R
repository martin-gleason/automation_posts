
private_email_creds <- blastula::creds_envvar(
  user = Sys.getenv("EMAIL"),
  pass_envvar = Sys.getenv("PASSWORD"),
  host = "mail.privateemail.com",
  port = 465,
  use_ssl = TRUE
)
