
C:\WinDDK\7600.16385.1\bin\amd64\makecert -r -pe -n "CN=USB/IP Test Certificate" -ss CA -sr CurrentUser -a sha1 -sky signature -sv USBIP_TestCert.pvk USBIP_TestCert.cer
C:\WinDDK\7600.16385.1\bin\amd64\pvk2pfx -pvk USBIP_TestCert.pvk -spc USBIP_TestCert.cer -pfx USBIP_TestCert.pfx

rem certutil -user -addstore Root USBIP_TestCert.cer
		 
rem Bcdedit.exe /set TESTSIGNING ON 
