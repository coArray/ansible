firewall_pkg: firewalld
web_pkg: httpd
web_svc: httpd
ssl_pkg: mod_ssl
python_pkg: python-passlib
httpdconf_src: files/httpd.conf
httpdconf_file: /etc/httpd/conf/httpd.conf
htaccess_src: files/.htaccess
secrets_dir: /etc/httpd/secrets
secrets_file: "{{ secrets_dir }}/htpasswd"
web_root: /var/www/html
web_user: guest

