import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _currentIndex = 0;
  TabController? _tapController;

  @override
  void initState() {
    super.initState();
    _tapController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Dars 21"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey.shade800,
              child: TabBar(
                onTap: (v) {},
                indicatorColor: Colors.white,
                controller: _tapController,
                tabs: const [
                  Icon(Icons.person),
                  Icon(Icons.person),
                  Icon(Icons.person),
                  Icon(Icons.person),
                  Icon(Icons.person),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: PageView.builder(
              onPageChanged: (v) {
                setState(
                  () {
                    _currentIndex = v;
                  },
                );
              },
              itemBuilder: (_, __) {
                return Container(
                  color: Colors.red,
                  margin: const EdgeInsets.all(15),
                );
              },
            ),
          ),
          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                "Index: ${_currentIndex.toString()}",
                style: const TextStyle(fontSize: 33),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
