#!/usr/local/bin/elvish
use re
hugo-ver = (put (re:find 'v([\d.]+)' (hugo version))[groups][1][text])
hugo-env = "production"
echo '[build.environment]
  HUGO_ENV = "'$hugo-env'"
  HUGO_VERSION = "'$hugo-ver'"' > netlify.toml
