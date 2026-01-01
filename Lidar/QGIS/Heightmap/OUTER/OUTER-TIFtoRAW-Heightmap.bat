for %%A IN (*.tif) do (
"C:\Program Files\QGIS 3.28.14\bin\gdal_translate.exe" -of ENVI -ot UInt16 -scale 599.527 726.69 0 65535 -outsize 4097 4097 -r bilinear "%%A" "%%~nA".raw
)

 @echo off    
del *.hdr *.xml