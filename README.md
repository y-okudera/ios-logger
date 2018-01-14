# ios-logger
iOS カスタムログ(Swift4)

| メソッド名 | 説明 | サンプル |
|:-----------:|:------------:|:------------:|
| debug | デバッグ情報を出力する | Logger.debug(message: "demo1") |
| info | 一般情報を出力する | Logger.info(message: "demo2") |
| warning | 警告を出力する | Logger.warning(message: "demo3") |
| error | エラーを出力する | Logger.error(message: "demo4") |


| 出力例 |
|:-----------:|
| [2017/04/06 1:41:51] viewDidLoad() @ViewController.swift(line 16) [DEBUG] => "demo1" |
| [2017/04/06 1:41:51] viewWillAppear @ViewController.swift(line 22) [INFO] => "demo2" |
| [2017/04/06 1:42:20] didReceiveMemoryWarning() @ViewController.swift(line 27) [WARNING] => "demo3" |
| [2017/04/06 1:41:51] viewDidAppear @ViewController.swift(line 32) [ERROR] => "demo4" |
