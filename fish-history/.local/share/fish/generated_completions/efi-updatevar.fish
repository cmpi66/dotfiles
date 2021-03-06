# efi-updatevar
# Autogenerated from man page /usr/share/man/man1/efi-updatevar.1.gz
complete -c efi-updatevar -s a -d 'append a value to the variable instead of replacing it'
complete -c efi-updatevar -s e -d 'use EFI Signature List instead of signed update (only works in Setup Mode'
complete -c efi-updatevar -s b -d 'Add hash of <binfile> to the signature list'
complete -c efi-updatevar -s f -d 'Add or Replace the key file (. esl or . auth) to the <var>'
complete -c efi-updatevar -s c -d 'Add or Replace the x509 certificate to the <var> (with <guid> if provided)'
complete -c efi-updatevar -s g -d 'Optional <guid> for the X509 Certificate'
complete -c efi-updatevar -s k -d 'Secret key file for authorising User Mode updates'
complete -c efi-updatevar -s d -d 'Delete the signature list <list> (or just a single <entry> within the list)'
complete -c efi-updatevar -l engine -d 'Use engine <eng> for private key EXAMPLES'

