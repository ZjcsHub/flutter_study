// 第三方
/*
* 1.自定义库
* 2.系统内置库
* 3.第三方库 pub 包管理系统中的库
* */

import 'dart:convert';
import 'dart:math';
import 'dart:io';
// 只引用部分功能
// show  hide

main() async {

  print(min(12, 23));
  print(max(12, 15));

  var result = await _getDataFromZhiHuApi();
  print(result);
}


_getDataFromZhiHuApi() async {
  // 1.创建HttpClient对象
  var httpClient = new HttpClient();
  // 2.创建url对象
  var uri = new Uri.http('news-at.zhihu.com','/api/3/stories/latest');
  // 3.发起请求，等待请求
  var request = await httpClient.getUrl(uri);
  // 4. 关闭请求等待响应
  var response = await request.close();
  // 5.解码响应内容
  return await response.transform(utf8.decoder).join();
}