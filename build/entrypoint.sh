  #!/bin/sh
echo '👍 ENTRYPOINT HAS STARTED—'
npm install > /dev/null 2>&1
npm list | grep markbind-cli
echo '👍 MARKBIND INSTALLED—BUILDING THE SITE'
markbind build
echo '👍 THE SITE IS BUILT—GREAT SUCCESS'
