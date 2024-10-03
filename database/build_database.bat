@echo off
setlocal enabledelayedexpansion

echo "���MySQL��Ϣ��"
for /f "tokens=1,2 delims==" %%a in (config.txt) do (
    set %%a=%%b
    echo %%a=%%b
)

:: �����ַ���
set CHARSET=utf8mb4
:: �������ݿ�
set DATABASE=verto

echo ִ�� "init.sql"
mysql -h !HOST! -u !USER! -p!PASSWORD! --default-character-set=!CHARSET! < init.sql
echo ִ�� "userCoreInfo.sql"
mysql -h !HOST! -u !USER! -p!PASSWORD! --default-character-set=!CHARSET! !DATABASE! < ./test_data/userCoreInfo.sql
echo ִ�� "landmark.sql"
mysql -h !HOST! -u !USER! -p!PASSWORD! --default-character-set=!CHARSET! !DATABASE! < ./test_data/landmark.sql
echo ִ�� "post.sql"
mysql -h !HOST! -u !USER! -p!PASSWORD! --default-character-set=!CHARSET! !DATABASE! < ./test_data/post.sql
echo ִ�� "groups.sql"
mysql -h !HOST! -u !USER! -p!PASSWORD! --default-character-set=!CHARSET! !DATABASE! < ./test_data/groups.sql
echo ִ�� "chatRecord.sql"
mysql -h !HOST! -u !USER! -p!PASSWORD! --default-character-set=!CHARSET! !DATABASE! < ./test_data/chatRecord.sql
echo ִ�� "postLike.sql"
mysql -h !HOST! -u !USER! -p!PASSWORD! --default-character-set=!CHARSET! !DATABASE! < ./test_data/postLike.sql
echo ִ�� "postMedia.sql"
mysql -h !HOST! -u !USER! -p!PASSWORD! --default-character-set=!CHARSET! !DATABASE! < ./test_data/postMedia.sql
echo ִ�� "talkBox.sql"
mysql -h !HOST! -u !USER! -p!PASSWORD! --default-character-set=!CHARSET! !DATABASE! < ./test_data/talkBox.sql
echo ִ�� "userBaseInfo.sql"
mysql -h !HOST! -u !USER! -p!PASSWORD! --default-character-set=!CHARSET! !DATABASE! < ./test_data/userBaseInfo.sql
echo ִ�� "userFriend.sql"
mysql -h !HOST! -u !USER! -p!PASSWORD! --default-character-set=!CHARSET! !DATABASE! < ./test_data/userFriend.sql
echo ִ�� "userGroup.sql"
mysql -h !HOST! -u !USER! -p!PASSWORD! --default-character-set=!CHARSET! !DATABASE! < ./test_data/userGroup.sql

echo SQL ִ�����

pause
endlocal
