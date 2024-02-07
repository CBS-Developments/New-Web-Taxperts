import 'package:flutter/material.dart';
import 'package:new_web_taxperts/BlogPage/blogMobile.dart';
import 'package:new_web_taxperts/BlogPage/blog_desktop.dart';
import 'package:new_web_taxperts/responsive.dart';

import 'blogTablet.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: BlogMobile(),
        tablet: BlogTablet(),
        desktop: BlogDesktop());
  }
}
