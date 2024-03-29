 #!/bin/sh

tmp=${TMPDIR-/tmp}/pacman-disowned-$UID-$$
db=$tmp/db
fs=$tmp/fs

mkdir "$tmp"
trap 'rm -rf "$tmp"' EXIT

pacman -Qlq | sort -u > "$db"

sudo find /bin /etc /opt/ /sbin /usr \
  ! -name lost+found \
  \( -type d -printf '%p/\n' -o -print \) | sort > "$fs"

comm -23 "$fs" "$db"
