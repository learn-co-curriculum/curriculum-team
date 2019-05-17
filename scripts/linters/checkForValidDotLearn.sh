if [ -a '.learn' ]

then
  if ! grep -q 'tags:' '.learn'; then
    echo '- Missing tags'
  fi
  if ! grep -q 'languages:' '.learn'; then
    echo '- Missing languages'
  fi
else
  echo '- Missing .learn file'
fi