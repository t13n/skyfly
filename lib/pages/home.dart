import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text(
                  'SkyFly',
                  style: TextStyle(
                      color: innerBoxIsScrolled
                          ? Colors.black
                          : Colors.transparent),
                ),
                backgroundColor: Colors.white,
                elevation: 0,
                pinned: true,
                snap: false,
                floating: false,
                expandedHeight: 160.0,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 310,
                              child: Text(
                                'Where would you like to travel?',
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                            CircleAvatar(),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          cursorColor: Colors.grey,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                            labelText: 'Search',
                            filled: true,
                            fillColor: Colors.grey[350],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            suffixIcon: Icon(
                              Icons.tune,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ChoiceChip(
                        label: Text(
                          'asdfasdf',
                          style: TextStyle(color: Colors.white),
                        ),
                        selected: true,
                        selectedColor: Colors.red[400],
                        onSelected: (_) {},
                      ),
                      SizedBox(width: 10),
                      ChoiceChip(label: Text('asdfasdf'), selected: false),
                      SizedBox(width: 10),
                      ChoiceChip(label: Text('asdfasdf'), selected: false),
                      SizedBox(width: 10),
                      ChoiceChip(label: Text('asdfasdf'), selected: false),
                      SizedBox(width: 10),
                      ChoiceChip(label: Text('asdfasdf'), selected: false),
                      SizedBox(width: 10),
                      ChoiceChip(label: Text('asdfasdf'), selected: false),
                      SizedBox(width: 10),
                      ChoiceChip(label: Text('asdfasdf'), selected: false),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: StaggeredGridView.countBuilder(
                      crossAxisCount: 4,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink[100],
                        ),
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text('$index'),
                          ),
                        ),
                      ),
                      staggeredTileBuilder: (int index) =>
                          new StaggeredTile.count(2, index.isEven ? 2 : 3),
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // child: Container(
        //   color: Colors.white,
        //   padding: EdgeInsets.all(5),
        //   child: CustomScrollView(
        //     slivers: [
        //       SliverAppBar(
        //         title: Text(
        //           'SkyFly',
        //           style: TextStyle(color: Colors.black),
        //         ),
        //         backgroundColor: Colors.white,
        //         pinned: true,
        //         snap: true,
        //         floating: true,
        //         expandedHeight: 180.0,
        //         flexibleSpace: FlexibleSpaceBar(
        //           collapseMode: CollapseMode.pin,
        //           background: Container(
        //             padding: EdgeInsets.symmetric(horizontal: 10),
        //             color: Colors.amber,
        //             width: double.infinity,
        //             child: Column(
        //               children: [
        //                 Row(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   mainAxisSize: MainAxisSize.max,
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Container(
        //                       width: 310,
        //                       child: Text(
        //                         'Where would you like to travel?',
        //                         overflow: TextOverflow.fade,
        //                         style: TextStyle(
        //                           fontSize: 35,
        //                         ),
        //                       ),
        //                     ),
        //                     CircleAvatar(),
        //                   ],
        //                 ),
        //                 SizedBox(
        //                   height: 20,
        //                 ),
        //                 TextField(
        //                   cursorColor: Colors.grey,
        //                   style: TextStyle(
        //                     fontSize: 15,
        //                   ),
        //                   decoration: InputDecoration(
        //                     contentPadding: EdgeInsets.symmetric(
        //                       vertical: 5,
        //                       horizontal: 10,
        //                     ),
        //                     labelText: 'Search',
        //                     filled: true,
        //                     fillColor: Colors.grey[350],
        //                     border: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(15),
        //                       borderSide: BorderSide.none,
        //                     ),
        //                     floatingLabelBehavior: FloatingLabelBehavior.never,
        //                     suffixIcon: Icon(
        //                       Icons.settings,
        //                       color: Colors.grey,
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //       SliverList(
        //         delegate: SliverChildListDelegate([
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //           Text('asdfasdf'),
        //         ]),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
