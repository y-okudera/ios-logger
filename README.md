# ios-logger
iOS カスタムログ(Swift3)

| メソッド名 | 説明 | サンプル |
|:-----------:|:------------:|:------------:|
| debug | デバッグ情報を出力する | Logger.debug(message: "demo1") |
| info | サーバ情報を出力する | Logger.info(message: "demo2") |
| warning | 警告を出力する | Logger.warning(message: "demo3") |
| error | エラーを出力する | Logger.error(message: "demo4") |


| 出力 |
|:-----------:|
| 2017/04/04 3:05:32 line:24 @ViewController.swift viewDidLoad() [DEBUG] => "demo1" |
| 2017/04/04 3:11:12 line:25 @ViewController.swift viewWillAppear [INFO] => "demo2" |
| 2017/04/04 3:11:25 line:30 @ViewController.swift didReceiveMemoryWarning() [WARNING] => "demo3" |
| 2017/04/04 3:11:12 line:35 @ViewController.swift viewDidAppear [ERROR] => "demo4" |
