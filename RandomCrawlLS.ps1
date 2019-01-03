cls
cd "~"
while(1){$list = ls
$list

$directories = ls -dir

$randomDirectory = ($directories| get-random -count 1)
$goback = Get-Random -Maximum 1 -Minimum 0

Write-Host $randomDirectory

if($goback -eq 1 -or $randomDirectory.Exists){
cd $randomDirectory
}
else{cd "~"
cd ../..
}
Start-Sleep (Get-Random -Maximum 10 -Minimum 0)
}
