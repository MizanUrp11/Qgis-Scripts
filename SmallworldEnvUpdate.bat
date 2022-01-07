set PATH=%PATH%;C:\Program Files\7-Zip\
for /f %%I in ('dir /b /s *.zip') do (set myvar="%%I")
for /f %%I in ('dir /b /s *.zip') do (7z x -o"%%~dpI" "%%I")
if exist %myvar% del %myvar%
for /f %%I in ('dir /b /s *.zip') do (7z x -o"%%~dpI" "%%I")
for /f %%I in ('dir /b /s *.zip') do (del %%I)


rmdir /Q /S C:\SW_Source\bangladesh430
xcopy D:\latest_env\bangladesh430 C:\SW_Source\bangladesh430 /E/H/C/I

rmdir /Q /S C:\SW_Source\gp_prd430
xcopy D:\latest_env\gp_prd430 C:\SW_Source\gp_prd430 /E/H/C/I

rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\config
xcopy D:\latest_env\config C:\SW_Data\bangladesh\bangladesh\config /E/H/C/I

rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\ds\ds_admin
rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\ds\ds_bgdcl
rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\ds\ds_gis
rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\ds\ds_jgtdsl
rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\ds\ds_kgdcl
rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\ds\ds_pgcl
rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\ds\ds_rpgcl
rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\ds\ds_sgcl
rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\ds\ds_survey
rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\ds\ds_tgtdcl
rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\ds\ds_winnap
rmdir /Q /S C:\SW_Data\bangladesh\bangladesh\ds\ds_wn_kgdcl


xcopy D:\latest_env\ds\ds_admin C:\SW_Data\bangladesh\bangladesh\ds\ds_admin /E/H/C/I
xcopy D:\latest_env\ds\ds_bgdcl C:\SW_Data\bangladesh\bangladesh\ds\ds_bgdcl /E/H/C/I
xcopy D:\latest_env\ds\ds_gis C:\SW_Data\bangladesh\bangladesh\ds\ds_gis /E/H/C/I
xcopy D:\latest_env\ds\ds_jgtdsl C:\SW_Data\bangladesh\bangladesh\ds\ds_jgtdsl /E/H/C/I
xcopy D:\latest_env\ds\ds_kgdcl C:\SW_Data\bangladesh\bangladesh\ds\ds_kgdcl /E/H/C/I
xcopy D:\latest_env\ds\ds_pgcl C:\SW_Data\bangladesh\bangladesh\ds\ds_pgcl /E/H/C/I
xcopy D:\latest_env\ds\ds_rpgcl C:\SW_Data\bangladesh\bangladesh\ds\ds_rpgcl /E/H/C/I
xcopy D:\latest_env\ds\ds_sgcl C:\SW_Data\bangladesh\bangladesh\ds\ds_sgcl /E/H/C/I
xcopy D:\latest_env\ds\ds_survey C:\SW_Data\bangladesh\bangladesh\ds\ds_survey /E/H/C/I
xcopy D:\latest_env\ds\ds_tgtdcl C:\SW_Data\bangladesh\bangladesh\ds\ds_tgtdcl /E/H/C/I
xcopy D:\latest_env\ds\ds_winnap C:\SW_Data\bangladesh\bangladesh\ds\ds_winnap /E/H/C/I
xcopy D:\latest_env\ds\ds_wn_kgdcl C:\SW_Data\bangladesh\bangladesh\ds\ds_wn_kgdcl /E/H/C/I
del /f/s/q "C:\SW_Source\images" > nul
call c:\SW_Source\bangladesh430\bangladesh\scripts\emacs_bangla430_sa.bat
