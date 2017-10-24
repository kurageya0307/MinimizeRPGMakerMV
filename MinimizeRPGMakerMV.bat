@echo off

if not exist "NewData\" (
  echo 本バッチファイルは"C:\Program Files (x86)\KADOKAWA\RPGMV"の直下に置いて実行してください。
  pause
  exit
)

echo ツクールMVのコピー元ファイルを最小セットになるようカットアンドペーストします。
echo 本ツールを使用する前にNewData内のバックアップをとってください。
echo 本ツールの使用によって発生した不具合（データが飛んだ等）に作者いかなる保証も致しません。 
set /P YES_OR_NO="バックアップをとりましたか？(Y/N)"
IF "%YES_OR_NO%" == "Y" (
  echo 実行するコマンドを入力してください。
) ELSE IF "%YES_OR_NO%"=="y" ( 
  echo 実行するコマンドを入力してください。
) ELSE (
  echo 処理を中断します。
  pause
  exit
)

echo 1：ツクールMVを最小セットにする。
echo 2：ツクールMVを元に戻す。
echo 上記以外：何もしない。 
set /P STR_INPUT="1 or 2 or その他キー"

IF "%STR_INPUT%" == "1" (
  echo "%STR_INPUT%：最小セット"
  call :label_mkdir
  call :label_move
  call :label_mini_copy
) ELSE IF "%STR_INPUT%"=="2" ( 
  echo "%STR_INPUT%：元に戻す"
  call :label_move_back
) ELSE (
  echo "%STR_INPUT%：処理中止"
)

echo 終了します。
pause
exit

rem バックアップ先のフォルダが存在しなければ作成する
:label_mkdir
if not exist "NewData_Backup\" (
  mkdir NewData_Backup
)
if not exist "NewData_Backup\audio\" (
  mkdir NewData_Backup\audio
)
if not exist "NewData_Backup\audio\bgm\" (
  mkdir NewData_Backup\audio\bgm
)
if not exist "NewData_Backup\audio\bgs\" (
  mkdir NewData_Backup\audio\bgs
)
if not exist "NewData_Backup\audio\me\" (
  mkdir NewData_Backup\audio\me
)
if not exist "NewData_Backup\audio\se\" (
  mkdir NewData_Backup\audio\se
)

if not exist "NewData_Backup\img\animations\" (
  mkdir NewData_Backup\img\animations
)
if not exist "NewData_Backup\img\battlebacks1\" (
  mkdir NewData_Backup\img\battlebacks1
)
if not exist "NewData_Backup\img\battlebacks2\" (
  mkdir NewData_Backup\img\battlebacks2
)
if not exist "NewData_Backup\img\characters\" (
  mkdir NewData_Backup\img\characters
)
if not exist "NewData_Backup\img\enemies\" (
  mkdir NewData_Backup\img\enemies
)
if not exist "NewData_Backup\img\sv_enemies\" (
  mkdir NewData_Backup\img\sv_enemies
)
if not exist "NewData_Backup\img\titles1\" (
  mkdir NewData_Backup\img\titles1
)

exit /b


rem バックアップ先にカットアンドペーストする
:label_move
move NewData\audio\bgm\*        NewData_Backup\audio\bgm\
move NewData\audio\bgs\*        NewData_Backup\audio\bgs\
move NewData\audio\me\*         NewData_Backup\audio\me\
move NewData\audio\se\*         NewData_Backup\audio\se\

move NewData\img\animations\*   NewData_Backup\img\animations\
move NewData\img\battlebacks1\* NewData_Backup\img\battlebacks1\
move NewData\img\battlebacks2\* NewData_Backup\img\battlebacks2\
move NewData\img\characters\*   NewData_Backup\img\characters\
move NewData\img\enemies\*      NewData_Backup\img\enemies\
move NewData\img\sv_enemies\*   NewData_Backup\img\sv_enemies\
move NewData\img\titles1\*      NewData_Backup\img\titles1\

exit /b

rem 最小セットのみコピーして戻す。
:label_mini_copy
copy NewData_Backup\audio\bgm\Battle1.ogg NewData\audio\bgm\
copy NewData_Backup\audio\bgm\Ship1.ogg   NewData\audio\bgm\
copy NewData_Backup\audio\bgm\Ship2.ogg   NewData\audio\bgm\
copy NewData_Backup\audio\bgm\Ship3.ogg   NewData\audio\bgm\
copy NewData_Backup\audio\bgm\Theme6.ogg  NewData\audio\bgm\

copy NewData_Backup\audio\bgs\City.ogg  NewData\audio\bgs\

copy NewData_Backup\audio\me\Defeat1.ogg   NewData\audio\me\
copy NewData_Backup\audio\me\Gameover1.ogg NewData\audio\me\
copy NewData_Backup\audio\me\Inn.ogg       NewData\audio\me\
copy NewData_Backup\audio\me\Victory1.ogg  NewData\audio\me\

copy NewData_Backup\audio\se\Attack3.ogg    NewData\audio\se\
copy NewData_Backup\audio\se\Battle1.ogg    NewData\audio\se\
copy NewData_Backup\audio\se\Buzzer1.ogg    NewData\audio\se\
copy NewData_Backup\audio\se\Blow3.ogg      NewData\audio\se\
copy NewData_Backup\audio\se\Cancel2.ogg    NewData\audio\se\
copy NewData_Backup\audio\se\Chest1.ogg     NewData\audio\se\
copy NewData_Backup\audio\se\Collapse1.ogg  NewData\audio\se\
copy NewData_Backup\audio\se\Collapse2.ogg  NewData\audio\se\
copy NewData_Backup\audio\se\Collapse3.ogg  NewData\audio\se\
copy NewData_Backup\audio\se\Collapse4.ogg  NewData\audio\se\
copy NewData_Backup\audio\se\Cursor2.ogg    NewData\audio\se\
copy NewData_Backup\audio\se\Damage4.ogg    NewData\audio\se\
copy NewData_Backup\audio\se\Damage5.ogg    NewData\audio\se\
copy NewData_Backup\audio\se\Decision1.ogg  NewData\audio\se\
copy NewData_Backup\audio\se\Equip1.ogg     NewData\audio\se\
copy NewData_Backup\audio\se\Evasion1.ogg   NewData\audio\se\
copy NewData_Backup\audio\se\Evasion2.ogg   NewData\audio\se\
copy NewData_Backup\audio\se\Fire3.ogg      NewData\audio\se\
copy NewData_Backup\audio\se\Heal3.ogg      NewData\audio\se\
copy NewData_Backup\audio\se\Item3.ogg      NewData\audio\se\
copy NewData_Backup\audio\se\Load.ogg       NewData\audio\se\
copy NewData_Backup\audio\se\Miss.ogg       NewData\audio\se\
copy NewData_Backup\audio\se\Move1.ogg      NewData\audio\se\
copy NewData_Backup\audio\se\Open1.ogg      NewData\audio\se\
copy NewData_Backup\audio\se\Paralyze1.ogg  NewData\audio\se\
copy NewData_Backup\audio\se\Recovery.ogg   NewData\audio\se\
copy NewData_Backup\audio\se\Reflection.ogg NewData\audio\se\
copy NewData_Backup\audio\se\Run.ogg        NewData\audio\se\
copy NewData_Backup\audio\se\Saint2.ogg     NewData\audio\se\
copy NewData_Backup\audio\se\Save.ogg       NewData\audio\se\
copy NewData_Backup\audio\se\Shop1.ogg      NewData\audio\se\
copy NewData_Backup\audio\se\Slash1.ogg     NewData\audio\se\
copy NewData_Backup\audio\se\Sword5.ogg     NewData\audio\se\
copy NewData_Backup\audio\se\Thunder1.ogg   NewData\audio\se\
copy NewData_Backup\audio\se\Thunder5.ogg   NewData\audio\se\
copy NewData_Backup\audio\se\Thunder6.ogg   NewData\audio\se\

copy NewData_Backup\img\animations\Hit1.png      NewData\img\animations\
copy NewData_Backup\img\animations\Slash.png     NewData\img\animations\
copy NewData_Backup\img\animations\Stick.png     NewData\img\animations\
copy NewData_Backup\img\animations\Recovery1.png NewData\img\animations\
copy NewData_Backup\img\animations\Fire1.png     NewData\img\animations\
copy NewData_Backup\img\animations\Thunder1.png  NewData\img\animations\

copy NewData_Backup\img\battlebacks1\Grassland.png NewData\img\battlebacks1\

copy NewData_Backup\img\battlebacks2\Grassland.png NewData\img\battlebacks2\

copy NewData_Backup\img\characters\!Chest.png  NewData\img\characters\
copy NewData_Backup\img\characters\!Door1.png  NewData\img\characters\
copy NewData_Backup\img\characters\Actor1.png  NewData\img\characters\
copy NewData_Backup\img\characters\Actor2.png  NewData\img\characters\
copy NewData_Backup\img\characters\Actor3.png  NewData\img\characters\
copy NewData_Backup\img\characters\Vehicle.png NewData\img\characters\

copy NewData_Backup\img\enemies\Bat.png      NewData\img\enemies\
copy NewData_Backup\img\enemies\Minotaur.png NewData\img\enemies\
copy NewData_Backup\img\enemies\Orc.png      NewData\img\enemies\
copy NewData_Backup\img\enemies\Slime.png    NewData\img\enemies\

copy NewData_Backup\img\sv_enemies\Bat.png      NewData\img\sv_enemies\
copy NewData_Backup\img\sv_enemies\Minotaur.png NewData\img\sv_enemies\
copy NewData_Backup\img\sv_enemies\Orc.png      NewData\img\sv_enemies\
copy NewData_Backup\img\sv_enemies\Slime.png    NewData\img\sv_enemies\

copy NewData_Backup\img\titles1\Castle.png NewData\img\titles1\

exit /b

rem バックアップを元に戻す。
:label_move_back
move NewData_Backup\audio\bgm\*        NewData\audio\bgm\
move NewData_Backup\audio\bgs\*        NewData\audio\bgs\
move NewData_Backup\audio\me\*         NewData\audio\me\
move NewData_Backup\audio\se\*         NewData\audio\se\

move NewData_Backup\img\animations\*   NewData\img\animations\
move NewData_Backup\img\battlebacks1\* NewData\img\battlebacks1\
move NewData_Backup\img\battlebacks2\* NewData\img\battlebacks2\
move NewData_Backup\img\characters\*   NewData\img\characters\
move NewData_Backup\img\enemies\*      NewData\img\enemies\
move NewData_Backup\img\sv_enemies\*   NewData\img\sv_enemies\
move NewData_Backup\img\titles1\*      NewData\img\titles1\

exit /b

