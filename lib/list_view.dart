import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'image_view.dart';
import 'third_screen.dart';

class MovieList extends StatelessWidget {

  Future<void>? _launched;
  final List<String> movies = <String>['A Bug\'s Life', 'Halloween Kills', 'Finding Nemo','Incredibles 2','It Chapter Two','Monsters Inc','The Dark Knight Rises'];
  final List<String> images = <String>[
    "assets/images/ABugsLife.jpeg",
    "assets/images/HalloweenKills.jpg",
    "assets/images/FindingNemo.jpg",
    "assets/images/Incredibles2.jpg",
    "assets/images/ItChapterTwo.jpg",
    "assets/images/MonstersInc.jpg",
    "assets/images/TheDarkKnightRises.jpg"
  ];
  final List<String> imdbUrls = <String>["https://www.imdb.com/title/tt0120623/","https://www.imdb.com/title/tt10665338/","https://www.imdb.com/title/tt0266543/","https://www.imdb.com/title/tt3606756/","https://www.imdb.com/title/tt7349950/","https://www.imdb.com/title/tt0198781/","https://www.imdb.com/title/tt1345836/"];
  final List<String> wikiUrls = <String>["https://en.wikipedia.org/wiki/A_Bug%27s_Life","https://en.wikipedia.org/wiki/Halloween_Kills","https://en.wikipedia.org/wiki/Finding_Nemo","https://en.wikipedia.org/wiki/Incredibles_2","https://en.wikipedia.org/wiki/It_Chapter_Two","https://en.wikipedia.org/wiki/Monsters,_Inc.","https://en.wikipedia.org/wiki/The_Dark_Knight_Rises"];
  final List<String> genre = <String>["Comedy/Family","Horror/Thriller","Family/Adventure","Family/Comedy","Thriller/Supernatural","Comedy/Fantasy","Action/Thriller"];
  final List<String> directors = <String>["John Lasseter","David Gordon Green","Andrew Stanton","Brad Bird","Andrés Muschietti","Pete Docter","Christopher Nolan"];
  final List<String> released = <String>["November 15, 1998","October 15, 2021","May 30, 2003","June 15, 2018","September 6, 2019","November 2, 2001","July 20, 2012"];

  // The pop up menu the shows on a long click
  _showPopupMenu(BuildContext context, int index) async {
    await showMenu(
      position: const RelativeRect.fromLTRB(30, 30, 10, 30),
      items: [
        const PopupMenuItem(
          value: 1,
          child: Text("More Info"),
        ),
        const PopupMenuItem(
          value: 2,
          child: Text("Wikipedia"),
        ),
        const PopupMenuItem(
          value: 3,
          child: Text("IMDb"),
        ),
      ],
      elevation: 8.0,
      context: context,
    ).then((value){
      if(value == 1){
        // Launches Third Screen for list item selected
        Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen(key: null, index: index,)));
      }
      if(value == 2){
        // Launches Wiki for list item selected
        _launched = _launchURL(wikiUrls[index]);
      }
      if(value == 3){
        // Launches IMDb for list item selected
        _launched = _launchURL(imdbUrls[index]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 15.0),
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return Container(
                        height: 140.0,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: const Color(0xffffffff)),
                          boxShadow:  [
                            BoxShadow(
                              color: const Color(0xff00001a).withOpacity(0.125),
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 5.0,
                              spreadRadius: 2.5,
                              blurStyle: BlurStyle.normal,
                            )
                          ],
                        color: const Color(0xffffffff)
                        ),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                                  height: 140,
                                  // child: Center(
                                      child: GestureDetector(
                                        onTap: ()=> {
                                          _launched = _launchURL(imdbUrls[index]),
                                        }, // handle your image tap here
                                        child: Image.asset(images[index],
                                          fit: BoxFit.cover,
                                          width: 100,
                                        ),
                                      )
                                  // ),
                                ),
                            //),
                            Flexible(
                                flex: 2,
                                child: Container(
                                    alignment: Alignment.center,
                                    height: 150,
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          ListTile(
                                            title: Text(
                                              movies[index],
                                                style: const TextStyle(
                                                fontSize: 20, // Replace with your desired color
                                              ),
                                            ),
                                            subtitle: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(top: 3.0),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                                                  child: Text('Genre: ${genre[index]}'
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                                                  child: Text('Director: ${directors[index]}'
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                                                  child: Text('Released: ${released[index]}'
                                                  ),
                                                ),
                                              ],
                                            ),
                                            onTap: ()=>{
                                              // short click brings up a new screen (page)
                                              // that shows the entire picture of the selected movie on the entire device display
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => ImageItem(key: null, index: index,))),
                                            },
                                            onLongPress: ()=>{
                                              // Long click brings up a pop-up menu
                                              _showPopupMenu(context,index)
                                            },
                                          )
                                        ]
                                    )
                                )
                            )
                          ],
                        )
                    );
                //);
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(
                color: CupertinoColors.inactiveGray,
              ),
            )
        )
    );
  }

  // Used to get wiki or imdb pages for selected item
  Future<void> _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

}