# ��ʽ���ļ���ÿ�ж�Ӧһ����Ԫ�����ݣ����ݼ��һ��

$colCount = 3

$lines = (Get-Content E:\download\table.txt)

$addCount = (3 - ($lines.Count % 3))
for($addi = 0; $addi -lt $addCount; $addi++)
{
    $lines += ''
}

$colNum = 0
for($i = 0; $i -lt $lines.Count; $i++)
{
    if($colNum % 3 -eq 0)
    {
        $rowText = '|'    
    }
    
    $rowText += ' '
    $rowText += $lines[$i].Replace('$', '\$')
    $rowText += ' |'
    $i++
    $colNum++
    $colNum = $colNum % 3
    if($colNum -eq 0)
    {
        Write-Host $rowText
    }
}