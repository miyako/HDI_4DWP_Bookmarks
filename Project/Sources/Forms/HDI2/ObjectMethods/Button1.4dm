C_TEXT:C284($path)

$path:=Get 4D folder:C485(Current resources folder:K5:16)+"HDI_Info.4wp"

// Export 4D Write Pro document
WP EXPORT DOCUMENT:C1337(vInfos; $path)