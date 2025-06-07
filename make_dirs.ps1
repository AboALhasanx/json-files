# المسار الأساسي
$base = 'C:\Users\aboalhasan\OneDrive\Desktop\json-files-1'

# لائحة الأسماء
$names = 'ai','ar','com','ds_algo','iot','mobApp','networks','oop','os','se'

foreach ($name in $names) {
    # أنشئ المجلد <name>_quizzes
    $folder = Join-Path $base ("${name}_quizzes")
    New-Item -ItemType Directory -Path $folder -Force | Out-Null

    # أنشئ الملف الفارغ <name>_quiz_pt1.json
    $file = Join-Path $folder ("${name}_quiz_pt1.json")
    New-Item -ItemType File -Path $file -Force | Out-Null
}

Write-Host "✅ تم إنشاء المجلدات والملفات في $base"
