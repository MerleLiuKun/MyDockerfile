# 地址和端口
external_url 'http://127.0.0.1:10010'
gitlab_rails['gitlab_shell_ssh_port'] = 10011
# 邮件设置 以腾讯企业邮为例
gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_address'] = "smtp.exmail.qq.com"
gitlab_rails['smtp_port'] = 465
gitlab_rails['smtp_user_name'] = "your email address"
gitlab_rails['smtp_password'] = "your email password"
gitlab_rails['smtp_domain'] = "exmail.qq.com"
gitlab_rails['smtp_authentication'] = "login"
gitlab_rails['smtp_enable_starttls_auto'] = true
gitlab_rails['smtp_tls'] = true
gitlab_rails['gitlab_email_from'] = 'your email address'
gitlab_rails['gitlab_email_reply_to'] = 'noreply email address'