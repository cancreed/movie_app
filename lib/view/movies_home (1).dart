import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/const_streaming_mobile.dart';
class MoviesHome extends StatefulWidget {
  const MoviesHome({super.key});

  @override
  State<MoviesHome> createState() => _MoviesHomeState();
}

class _MoviesHomeState extends State<MoviesHome> with TickerProviderStateMixin {
  late final TabController _tabController;

  final List<Tab> _tabbarList = [
    Tab(
      child: Text('Action'),
    ),
    Tab(
      child: Text('Horror'),
    ),
    Tab(
      child: Text('Adventure'),
    ),
    Tab(
      child: Text('Comedy'),
    ),
    Tab(
      child: Text('Romantic'),
    ),
  ];

  final List<Widget> _tabbarView = [
   
  ];

  final double _containerTabbarHeight = 25;

  double _top = 50;
  double _left = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabbarList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabbarList.length,
      child:Scaffold(
        body:  Padding(
          padding: EdgeInsets.only(top: _top, left: _left, right: _left),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _rowAppBar(),
                ConstStreamingMobile.sizedBoxHeight10,
                textField(),
                 ConstStreamingMobile.sizedBoxHeight10,
                SizedBox(
                  height:
                      MediaQuery.of(context).size.height / _containerTabbarHeight,
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    indicator: BoxDecoration(
                        borderRadius: ConstStreamingMobile.borderRadius25,
                        color: ConstStreamingMobile.colorOrange),
                    labelColor: ConstStreamingMobile.colorWhite,
                    unselectedLabelColor: ConstStreamingMobile.colorAmber,
                    tabs: _tabbarList,
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: TabBarView(
                    controller: _tabController,
                    children: _tabbarView,
                    physics: NeverScrollableScrollPhysics(),
                  ),
                ))
              ],
            ),
          ),
        ),
      )
    );
  }
}

class textField extends StatelessWidget {
  const textField({
    Key? key,
  }) : super(key: key);
  final double _fontSize = 19;
  final double _iconSize = 25;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: ConstStreamingMobile.colorBlueGrey,
        filled: true,
        hoverColor: ConstStreamingMobile.colorBlueGrey,
        border: OutlineInputBorder(borderRadius: ConstStreamingMobile.borderRadius20),
        hintText: ConstStreamingMobile.textFieldTitle,
        hintStyle:
            TextStyle(fontSize: _fontSize, color: ConstStreamingMobile.colorWhite),
        prefixIcon: Icon(
          Icons.search,
          color: ConstStreamingMobile.colorWhite,
          size: _iconSize,
        ),
      ),
    );
  }
}

class _rowAppBar extends StatelessWidget {
  const _rowAppBar({
    Key? key,
  }) : super(key: key);

  final double _iconSize = 35;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.list,
          color: ConstStreamingMobile.colorWhite,
          size: _iconSize,
        ),
        Row(children: [
          textBengeMovie(
              text: ConstStreamingMobile.text_benge, color: ConstStreamingMobile.colorBlueGrey),
          textBengeMovie(
              text: ConstStreamingMobile.text_Movie, color: ConstStreamingMobile.colorOrange)
        ]),
        containerImage(),
      ],
    );
  }
}

class containerImage extends StatelessWidget {
  const containerImage({
    Key? key,
  }) : super(key: key);
  final double _containerWidth = 8;
  final double _containerHeight = 18;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / _containerWidth,
      height: MediaQuery.of(context).size.height / _containerHeight,
      decoration: BoxDecoration(
          borderRadius: ConstStreamingMobile.borderRadius25,
          color: ConstStreamingMobile.colorBlueGrey),
      child: Image.asset(
        ConstStreamingMobile.imageHomeAvatar,
        fit: BoxFit.contain,
      ),
    );
  }
}
class textBengeMovie extends StatelessWidget {
  const textBengeMovie({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: color),
    );
  }
}
