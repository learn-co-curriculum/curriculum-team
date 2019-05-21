if [ -a '.learn' ]; then
  if [ ! -s '.learn' ]; then
    echo 'WARNING: .learn Must not be blank'
  fi
  if ! grep -q 'tags:' '.learn'; then
    echo '- Missing tags - Recommended'
  fi
  if ! grep -q 'languages:' '.learn'; then
    echo '- Missing languages - Recommended'
  fi
  if grep -q 'after_ide_submission' '.learn'; then
    echo 'WARNING: after_ide_submission found - Deprecated - Must remove'
  fi
  if grep -q 'github: false' '.learn'; then
    echo 'WARNING: github: false found - Deprecated - Must remove'
  fi
else
  echo 'WARNING: Missing .learn file - Required'
fi

