import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:transparent_image/transparent_image.dart';

class NetworkVideoGrid extends StatefulWidget 
{
  /// 网络视频网格宽度
  final double width;
  /// 网络视频网格高度
  final double height;
  /// 网络视频网格圆角
  final double radius;
  /// 网络视频封面的网址
  final String coverURL;
  /// 网络视频的网址
  final String videoURL;

  const NetworkVideoGrid
  (
    { 
      super.key, required this.width, required this.height, 
      this.radius = 4.0, required this.coverURL,  required this.videoURL
    }
  );

  @override
  State<NetworkVideoGrid> createState() => _NetworkVideoGridState();
}

class _NetworkVideoGridState extends State<NetworkVideoGrid> 
{
  /// 视频控制器
  late VideoPlayerController _videoPlayerController;
  /// 视频播放控制器
  late ChewieController _chewieController;

  @override
  void initState() 
  {
    super.initState();
    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(widget.videoURL));
    _chewieController = ChewieController
    (
      videoPlayerController: _videoPlayerController,
      aspectRatio: _videoPlayerController.value.aspectRatio,
    );
  }

  @override
  void dispose() 
  {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container
  (  
    width: widget.width, height: widget.height,
    decoration: BoxDecoration
    (
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.circular(widget.radius)
    ),
    child: Stack
    (
      clipBehavior: Clip.none,    // 允许溢出部分显示
      children: 
      [
        _videoPlayerController.value.isInitialized
        ? Chewie(controller: _chewieController)
        : Image.memory(kTransparentImage, fit: BoxFit.cover),
        // 播放/暂停按钮
        Positioned
        (
          left: widget.width / 2, top: widget.height / 2,
          child: IconButton
          (
            icon: _videoPlayerController.value.isPlaying 
            ? const Icon(Icons.pause) : const Icon(Icons.play_arrow),
            onPressed: () 
            {
              setState
              (() =>
                _videoPlayerController.value.isPlaying 
                ? _videoPlayerController.pause()
                : _videoPlayerController.play()
              );
            }
          )
        ),
        // 全屏按钮
        Positioned
        (
          right: 10, bottom: 10,
          child: IconButton
          (
            icon: const Icon(Icons.fullscreen),
            // TODO: 跳转全屏
            onPressed: () {}
          )
        ),
        // 进度条
        Positioned
        (
          bottom: 0,
          child: VideoProgressIndicator
          (
            _videoPlayerController,
            allowScrubbing: true
          )
        )
      ]
    )
  );
}