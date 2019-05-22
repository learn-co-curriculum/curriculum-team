if [ -a '.learn' ]; then

  if [ ! -s '.learn' ]; then
    echo "${PWD##*/} - WARNING: .learn Must not be blank"
  fi
  
  if ! grep -q 'tags:' '.learn'; then
    echo "${PWD##*/} - Missing tags - Recommended"
  fi

  if ! { grep -q 'languages:' '.learn' || grep -q 'language:' '.learn'; }; then
    echo "${PWD##*/} - Missing language - Recommended"
  fi
  
  if grep -q 'after_ide_submission' '.learn'; then
    echo "${PWD##*/} - WARNING: after_ide_submission found - Deprecated - Must remove"
  fi

  if grep -q 'github: false' '.learn'; then
    echo "${PWD##*/} - WARNING: github: false found - Deprecated - Must remove"
  fi

else
  echo "${PWD##*/} - WARNING: Missing .learn file - Required"
fi
