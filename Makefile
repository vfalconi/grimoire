# "           ______              "
# "       .d$$$******$$$$c.        "
# "    .d$P"            "$$c      "
# "   $$$$$.           .$$$*$.    "
# " .$$ 4$L*$$.     .$$Pd$  '$b   "
# " $F   *$. "$$e.e$$" 4$F   ^$b  "
# "d$     $$   z$$$e   $$     '$. "
# "$P     `$L$$P` ''$$d$'      $$ "
# "$$     e$$F       4$$b.     $$ "
# "$b  .$$" $$      .$$ "4$b.  $$ "
# "$$e$P"    $b     d$`    "$$c$F "
# "'$P$$$$$$$$$$$$$$$$$$$$$$$$$$  "
# " '$c.      4$.  $$       .$$   "
# "  ^$$.      $$ d$'      d$P    "
# "    "$$c.   `$b$F    .d$P"     "
# "      `4$$$c.$$$..e$$P"        "
# "          `^^^^^^^`"
SELF := $(lastword $(MAKEFILE_LIST))

default:
	@$(MAKE) -f $(SELF) --quiet install

install:
	bash ./bin/metastatus "Running installer"
	bash ./bin/install
	@$(MAKE) -f $(SELF) clean
	bash ./bin/metastatus "Grimoire install complete"

clean:
	bash ./bin/metastatus "Running cleaner"
	bash ./bin/clean
	bash ./bin/metastatus "Cleanup complete"
