import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:jenniferlee/widgets/sliverAppbar.dart';
import 'package:video_player/video_player.dart';

class AgeFriendlyPage extends StatefulWidget {
  @override
  _AgeFriendlyPageState createState() => _AgeFriendlyPageState();
}

class _AgeFriendlyPageState extends State<AgeFriendlyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CollapsingAppbar(),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: Text(
                      'Age-Friendly Health System',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo. Sit amet consectetur adipiscing elit ut aliquam purus sit. Scelerisque purus semper eget duis. Consequat mauris nunc congue nisi vitae suscipit.',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
                PlayVideo(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc aliquet bibendum enim facilisis gravida. Et molestie ac feugiat sed lectus vestibulum.',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Play a video from assets
class PlayVideo extends StatefulWidget {
  @override
  _PlayVideoState createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  VideoPlayerController _controller;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset('assets/videos/rush4ms.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 3 / 2,
      autoInitialize: true,
      looping: true,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(
      controller: _chewieController,
    );
  }
}
