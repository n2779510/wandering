@SETLOCAL

@SET SCRIPTNAME=%~nx0
@SET CURRENTDIR=%~dp0

@FOR /F "tokens=5" %%G IN ('vagrant global-status^|find /I "running"') DO @(
	cd %%G
	vagrant halt
)
vagrant global-status

