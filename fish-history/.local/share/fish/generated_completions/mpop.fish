# mpop
# Autogenerated from man page /usr/share/man/man1/mpop.1.gz
complete -c mpop -l version -d 'Print version information, including information about the libraries used'
complete -c mpop -l help -d 'Print help'
complete -c mpop -s P -l pretend -d 'Print the configuration settings that would be used, but do not take further …'
complete -c mpop -s d -l debug -d 'Print lots of debugging information, including the whole conversation with th…'
complete -c mpop -l configure -d 'Generate a configuration for the given mail address and print it'
complete -c mpop -s S -l serverinfo -d 'Print information about the POP3 server(s) and exit'
complete -c mpop -s C -l file -d 'Use the given file instead of ~/'
complete -c mpop -l host -d 'Use this server with settings from the command line; do not use any configura…'
complete -c mpop -l port -d 'Set the port number to connect to.  See the port command'
complete -c mpop -l source-ip -d 'Set or unset an IP address to bind the socket to.  See the source_ip command'
complete -c mpop -l proxy-host -d 'Set or unset a SOCKS proxy to use.  See the proxy_host command'
complete -c mpop -l proxy-port -d 'Set or unset a port number for the proxy host.  See the proxy_port command'
complete -c mpop -l socket -d 'Set or unset a local unix domain socket name to connect to'
complete -c mpop -l timeout -d 'Set a network timeout.  See the timeout command'
complete -c mpop -l pipelining -d 'Enable or disable POP3 pipelining.  See the pipelining command'
complete -c mpop -l received-header -d 'Enable or disable the Received header.  See the received_header command'
complete -c mpop -l auth -d 'Set the authentication method to automatic (with "on") or manually choose an …'
complete -c mpop -l user -d 'Set or unset the user name for authentication.  See the user command'
complete -c mpop -l passwordeval -d 'Evaluate password for authentication.  See the passwordeval command'
complete -c mpop -l tls -d 'Enable or disable TLS/SSL.  See the tls command'
complete -c mpop -l tls-starttls -d 'Enable or disable STARTTLS for TLS.  See the tls_starttls command'
complete -c mpop -l tls-trust-file -d 'Set or unset a trust file for TLS.  See the tls_trust_file command'
complete -c mpop -l tls-crl-file -d 'Deprecated.  Set or unset a certificate revocation list (CRL) file for TLS'
complete -c mpop -l tls-fingerprint -d 'Set or unset the fingerprint of a trusted TLS certificate'
complete -c mpop -l tls-key-file -d 'Set or unset a key file for TLS.  See the tls_key_file command'
complete -c mpop -l tls-cert-file -d 'Set or unset a cert file for TLS.  See the tls_cert_file command'
complete -c mpop -l tls-certcheck -d 'Enable or disable server certificate checks for TLS'
complete -c mpop -l tls-priorities -d 'Set or unset TLS priorities.  See the tls_priorities command'
complete -c mpop -l tls-host-override -d 'Set or unset override for TLS host verification'
complete -c mpop -l tls-min-dh-prime-bits -d 'Deprecated, use --tls-priorities instead'
complete -c mpop -s q -l quiet -d 'Do not print status or progress information'
complete -c mpop -s Q -l half-quiet -d 'Print status but not progress information'
complete -c mpop -s a -l all-accounts -d 'Query all accounts in the configuration file'
complete -c mpop -s A -l auth-only -d 'Authenticate only; do not retrieve mail.  Useful for SMTP-after-POP'
complete -c mpop -s s -l status-only -d 'Print number and size of mails in each account only; do not retrieve mail'
complete -c mpop -s n -l only-new -d 'Process only new messages.  See the only_new command'
complete -c mpop -s k -l keep -d 'Do not delete mails from POP3 servers, regardless of other options or settings'
complete -c mpop -l killsize -d 'Set or unset kill size.  See the killsize command'
complete -c mpop -l skipsize -d 'Set or unset skip size.  See the skipsize command'
complete -c mpop -l filter -d 'Set a filter which will decide whether to retrieve, skip, or delete each mail…'
complete -c mpop -l delivery -d 'How to deliver messages received from this account.  See the delivery command'
complete -c mpop -l uidls-file -d 'File to store UIDLs in.  See the uidls_file command'
complete -c mpop -s r -s w -d 'In both examples, replace pop. freemail'
complete -c mpop -l list-privkeys -l login -d 'requires a PIN to access the data, you can specify that using one of the pass…'

