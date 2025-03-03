

private_email_creds <- blastula::creds_envvar(
  user = "EMAIL",
  pass_envvar = "PASSWORD",
  host = "mail.privateemail.com",
  port = 465,
  use_ssl = TRUE
)
