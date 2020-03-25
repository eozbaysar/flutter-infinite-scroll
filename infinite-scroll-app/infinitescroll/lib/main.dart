import 'package:flutter/material.dart';
import 'package:infinitescroll/product_item_widget.dart';
import 'package:infinitescroll/theme.dart';


void main() => runApp(InfiniteScrollApp());

class InfiniteScrollApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Infinite Scroll App',
      theme: AppTheme.theme,
      home: InfiniteScrollPage(title: 'Infinite Scroll App'),
    );
  }
}

class InfiniteScrollPage extends StatefulWidget {
  InfiniteScrollPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InfiniteScrollPageState createState() => _InfiniteScrollPageState();
}

class SampleData {
  int _index;

  String _url;

  SampleData(this._index, this._url);

  int get index => _index;

  String get url => _url;

  set index(int value) {
    _index = value;
  }

  set url(String value) {
    _url = value;
  }
}

class _InfiniteScrollPageState extends State<InfiniteScrollPage> {
  List<SampleData> sampleDatas = new List<SampleData>();
  bool loadingWait = false;

  @override
  void initState() {
    super.initState();
    var list=List<SampleData>.generate(
        24,
            (i) => SampleData(i,
            "https://marisundvoll.weebly.com/uploads/4/5/5/2/45527563/8995703_orig.jpg"));
    setState(() {
      sampleDatas.addAll(list);
    });
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 5));
    var list= List<SampleData>.generate(
        24,
        (i) => SampleData(i,
            "https://marisundvoll.weebly.com/uploads/4/5/5/2/45527563/8995703_orig.jpg"));
    setState(() {
      sampleDatas.addAll(list);
      loadingWait=false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppTheme.darkTangerine[50],
          title: Text(
            widget.title,
            style: Theme.of(context).textTheme.title,
          ),
        ),
        body: Stack(
          children: <Widget>[
            NotificationListener(
              child: GridView.builder(
                shrinkWrap: false,
                key: PageStorageKey("list1"),
                itemCount: sampleDatas.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) => ItemWidget(
                  sampleData: sampleDatas[index],
                ),
              ),
              // ignore: missing_return
              onNotification: (ScrollNotification scrollInfo) {
                if (scrollInfo is ScrollEndNotification) {
                  setState(() {
                    loadingWait = true;
                    loadData();
                  });
                }
              },
            ),
            Visibility(
              visible: loadingWait ? true : false,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: new Container(
                      width: 100.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        color: AppTheme.eclipse[50],
                        border: new Border.all(
                            color: AppTheme.lightGrey[50], width: 2.0),
                        borderRadius: new BorderRadius.circular(50.0),
                      ),
                      child: new Center(
                        child: new Text("Loading...",
                            style: Theme.of(context).textTheme.display1),
                      ),
                    ),
                  )),
            ),
          ],
        ));
  }
}
