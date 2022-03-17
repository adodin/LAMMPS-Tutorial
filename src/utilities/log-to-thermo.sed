#!/usr/bin/sed -Enf

# ==============================================================================
# Grabs Thermo Data from LAMMPS log file
# Written By: Amro Dodin (Geissler Group - UC Berkeley & LBL)
# ==============================================================================

/^Step/,/^Loop/ {
  /^SHOCK:/n
  /^SHAKE:/n
  /^Loop/ !p
}
