function paramFunction ($arg1, $arg2) 
{
    $arg1
    $arg2
}

# $args
function sum
{
    $sum = 0
    $args | foreach { $sum += $_ }
    $sum
}

# ���ز���
function boolParam([bool]$switch)
{
    $switch
}

# Ĭ��ֵ
function Add([int]$one=1, [int]$another=1)
{
	$one + $another
}

# �쳣Ĭ��ֵ
function doNotMiss($arg=$(throw "���ṩ���� arg��"))
{
    $arg
}
