# sg_raw
# Autogenerated from man page /usr/share/man/man8/sg_raw.8.gz
complete -c sg_raw -s b -l binary -d 'Dump data in binary form, even when writing to stdout'
complete -c sg_raw -s c -l cmdfile -d 'CF is the name of a file which contains the command to be executed'
complete -c sg_raw -s C -l cmdset -d 'CS is a number to indicate which command set (i. e.  SCSI or NVMe) to use'
complete -c sg_raw -s h -l help -d 'Display usage information and exit'
complete -c sg_raw -s i -l infile -d 'Read binary data from IFILE instead of stdin'
complete -c sg_raw -s n -l nosense -d 'Don\'t display SCSI Sense information'
complete -c sg_raw -s N -l nvm -d 'When sending NVMe commands, the Admin command set is assumed'
complete -c sg_raw -s o -l outfile -d 'Write data received from the DEVICE to OFILE'
complete -c sg_raw -s w -l raw -d 'interpret CF (i. e.  the command file) as containing binary'
complete -c sg_raw -s R -l readonly -d 'Open DEVICE read-only'
complete -c sg_raw -s r -l request -d 'Expect to receive up to RLEN bytes of data from the DEVICE'
complete -c sg_raw -s Q -l scan -d 'Scan a range of opcodes (i. e.  first byte of each command)'
complete -c sg_raw -s s -l send -d 'Read SLEN bytes of data, either from stdin or from a file, and send them to t…'
complete -c sg_raw -s k -l skip -d 'Skip the first KLEN bytes of the input file or stream'
complete -c sg_raw -s t -l timeout -d 'Wait up to SECS seconds for command completion (default: 20)'
complete -c sg_raw -s v -l verbose -d 'Increase level of verbosity.  Can be used multiple times'
complete -c sg_raw -s V -l version -d 'Display version and license information and exit'

