for %%A IN (*.tif) do (
"C:\Program Files\QGIS 3.28.14\bin\gdal_translate.exe" -of ENVI -ot UInt16 -scale MIN MAX 0 65535 -outsize 4097 4097 -r bilinear "%%A" "%%~nA".raw
)

 @echo off    
del *.hdr *.xml