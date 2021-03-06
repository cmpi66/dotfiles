# paclock
# Autogenerated from man page /usr/share/man/man1/paclock.1.gz
complete -c paclock -l config -d 'Set an alternate configuration file path'
complete -c paclock -l lockfile -d 'Set an alternate lock file path'
complete -c paclock -l root -d 'Set an alternate installation root'
complete -c paclock -l sysroot -d 'Set an alternate system root.   See pacutils-sysroot\\|(7)'
complete -c paclock -l lock -d 'Lock the database (default)'
complete -c paclock -l unlock -d 'Unlock the database'
complete -c paclock -l run -d 'Treat \\f(CW\\*(C`argv\\*(C\' as a command to run with the database locked'
complete -c paclock -l fail-ok -d 'Unlock the database after running a command with --run even if the command re…'
complete -c paclock -l print -d 'Write the lock file path to stdout and exit without modifying the lock file'
complete -c paclock -l no-check-keys -d 'Skip checking for an identity key match before unlocking'
complete -c paclock -l enoent-ok -d 'Do not treat a non-existent lock file as an error when unlocking'
complete -c paclock -l key -d 'An identifier to write to the lock file'
complete -c paclock -l help -d 'Display usage information and exit'

