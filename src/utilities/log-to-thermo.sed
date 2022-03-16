#!/usr/bin/sed -nf

/^Step/,/^Loop/ {
  /^SHOCK/!p
  /^Loop/!p
}
