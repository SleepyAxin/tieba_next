import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

/// 网络图片网格
class NetworkImageGrid extends StatelessWidget 
{
  /// 图片宽度
  final double? width;
  /// 图片高度
  final double? height;
  /// 图片圆角
  final double radius;
  /// 图片填充方式
  final BoxFit fitType;
  /// 图片链接
  final String url;

  /// 网络图片网格
  const NetworkImageGrid
  (
    { 
      super.key, this.width, this.height, 
      this.radius = 4.0, this.fitType = BoxFit.cover,
      required this.url 
    }
  );

  @override
  Widget build(BuildContext context) => Container
  (
    width: width, height: height,
    decoration: BoxDecoration
    (
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.circular(radius)
    ),
    child: ClipRRect
    (
      borderRadius: BorderRadius.circular(radius),
      child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: url, fit: fitType)
    )
  );
}