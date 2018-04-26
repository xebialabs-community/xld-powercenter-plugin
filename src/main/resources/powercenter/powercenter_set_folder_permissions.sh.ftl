<#--

    Copyright 2018 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

-->
#!/bin/bash

for ORIGINAL_FILE in `find . -type f | sed "s/.*zip\///g"`; do
    # FILE_TO_CHMOD=${deployed.container.filesDirPath}/${deployed.targetDirectory}/$ORIGINAL_FILE
    FILE_TO_CHMOD=${deployed.targetDirectory}/$ORIGINAL_FILE
    echo Setting file permissions on $FILE_TO_CHMOD to ${deployed.filePermissions}
    chmod -R ${deployed.filePermissions} "$FILE_TO_CHMOD"
    ls -l "$FILE_TO_CHMOD"
done

res=$?
if [ $res != 0 ] ; then
  exit $res
fi
