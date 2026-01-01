for %%A IN (*.tif) do (
"C:\Program Files\QGIS 3.28.14\bin\gdal_translate.exe" -of JPEG -b 1 -b 2 -b 3 -outsize 8192 8192 -r cubic -co QUALITY=95 "%%A" "%%~nA".jpg
)

 @echo off    
del *.xml