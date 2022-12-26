@echo off

set /p input1="Search Software to Download:" 

if "%input1%"=="eclipse" (
    echo "Downloading Eclipse..."
    curl -v -o eclipse.exe "https://ftp.yz.yamagata-u.ac.jp/pub/eclipse//oomph/epp/2022-12/R/eclipse-inst-jre-win64.exe"
    echo "Java Downloaded Successfully!"
    pause
) else if %input1%=="android" (
    echo "Downloading Android Studio..."
    curl -v -o android.exe "https://r3---sn-xmjpuxa-qxad.gvt1.com/edgedl/android/studio/install/2021.3.1.17/android-studio-2021.3.1.17-windows.exe"
    echo "Android Studio Downloaded Successfully!"
) else if "%input1%"=="vscode" (
    echo "Downloading VSCode..."
    curl -v -o vscode.exe "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
) else (
    echo "Software not found!"
    pause
)

@REM set /p question="Download Java? (y/n):" 
@REM if %question%==y (
@REM     echo "Downloading Java..."
@REM     curl -o java.exe "https://sdlc-esd.oracle.com/ESD6/JSCDL/jdk/8u351-b10/10e8cce67c7843478f41411b7003171c/jre-8u351-windows-x64.exe?GroupName=JSC&FilePath=/ESD6/JSCDL/jdk/8u351-b10/10e8cce67c7843478f41411b7003171c/jre-8u351-windows-x64.exe&BHost=javadl.sun.com&File=jre-8u351-windows-x64.exe&AuthParam=1671879639_04f34e71247dcf1753dd0e792896e477&ext=.exe"
@REM     echo "Java Downloaded Successfully!"
@REM ) else (
@REM     echo "skipping download"

@REM )
@REM pause

pause