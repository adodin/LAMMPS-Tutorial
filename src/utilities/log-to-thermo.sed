#!/usr/bin/sed -Enf

/^Step/,/^Loop/ {
  /^SHOCK:/n
  /^Loop/ !p
}
