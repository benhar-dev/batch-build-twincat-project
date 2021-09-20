# Simple example of building a TwinCAT project from the command line

## Disclaimer
This is a personal guide not a peer reviewed journal or a sponsored publication. We make
no representations as to accuracy, completeness, correctness, suitability, or validity of any
information and will not be liable for any errors, omissions, or delays in this information or any
losses injuries, or damages arising from its display or use. All information is provided on an as
is basis. It is the reader’s responsibility to verify their own facts.

The views and opinions expressed in this guide are those of the authors and do not
necessarily reflect the official policy or position of any other agency, organization, employer or
company. Assumptions made in the analysis are not reflective of the position of any entity
other than the author(s) and, since we are critically thinking human beings, these views are
always subject to change, revision, and rethinking at any time. Please do not hold us to them
in perpetuity.

## Overview 
You can build a TwinCAT project without using the Automation Interface using the following as an example    

## Code Snippets

```bat
set Devenv=C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe

set Project=%1
set Platform=TwinCAT RT (x64)
set Configuration=Release

echo "Build '%Project%'..."
"%Devenv%" "%Project%" /rebuild "%Configuration%|%Platform%" /log "%~dp0\Log.xml"
if errorlevel 1 echo "Build failed!" & exit /b 1
```

## Need more help?
Please visit http://beckhoff.com/ for further guides
