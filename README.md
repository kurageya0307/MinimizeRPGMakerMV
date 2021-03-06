# MinimizeRPGMakerMV
RPGツクールMVの音楽・画像ファイルを最小セットに変更するWindowsバッチファイルです。

# 概要
RPGツクールMVにて「ファイル→プロジェクトの新規作成」を選ぶと，
コピー元となるCドライブのKADOKAWA\RPGMV\NewDataフォルダから
大量のデータがコピーされます。

これがわりとデータ容量を食っていたので
コピー元を必要最小限に変更するようなバッチファイルを作成しました。

バッチファイルを実行することで，例えばBGMのフォルダであれば
以下のようにすっきり最小セットのみに変更されます。

![BGMセット](https://github.com/kurageya0307/MinimizeRPGMakerMV/blob/master/minize_bgm.png)

やっていることは単にカットアンドペーストなので
大したものじゃありません。
ご自由にご利用ください。

# 使い方
## 最小化の方法
1.　CドライブのRPGツクールMVのフォルダ直下に[MinimizeRPGMakerMV.bat](https://github.com/kurageya0307/MinimizeRPGMakerMV/blob/master/MinimizeRPGMakerMV.bat)を置いてください。
（フォルダの例，C:\Program Files (x86)\KADOKAWA\RPGMV）

__2.　【重要】フォルダ「NewData」をバックアップしてください。__

3.　バッチファイルをダブルクリックして実行してください。

4.　バックアップしたかどうか尋ねてくるので，キーボードの「y」を入力してエンターキーを押してください。

5.　キーボードの「1」を入力してエンターキーを押してください。
　　カットアンドペーストを開始します。
  
6.　処理の終了後，エンターキーを押して終了してください。

## 元に戻す方法
4.までは最小化の方法と同じです。

5.でキーボードの「2」を入力してエンターキーを押せば，
「NewData_Backup」のフォルダから「NewData」へデータを元に戻します。

# 謝辞
KADOKAWA\RPGMV\NewData以下のデータがコピー元であることをツイッター上で[P&M Entertainment様](https://twitter.com/PandM_Entertm)に教えていただきました。
ありがとうございました。
