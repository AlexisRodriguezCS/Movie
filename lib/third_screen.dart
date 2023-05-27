import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  final List<List<String>> directors = <List<String>>[
    ["John Lasseter","Andrew Stanton"],
    ["David Gordon Green"],
    ["Andrew Stanton","Lee Unkrich"],
    ["Brad Bird"],
    ["Andy Muschietti"],
    ["Pete Docter","David Silverman","Lee Unkrich"],
    ["Christopher Nolan"]
  ];
  final List<List<String>> movieStars = <List<String>>[
    ["Kevin Spacey","Dave Foley", "Julia Louis-Dreyfus","Phyllis Diller","Hayden Panettiere","David Hyde Pierce"],
    ["Jamie Lee Curtis","James Jude Courtney","Andi Matichak","Will Patton","Nancy Stephens","Judy Greer"],
    ["Albert Brooks", "Ellen DeGeneres","Alexander Gould", "Willem Dafoe", "Brad Garrett","Allison Janney", "Austin Pendleton"],
    ["Craig T. Nelson","Holly Hunter","Sarah Vowell", "Sarah Vowell","Samuel L. Jackson", "John Ratzenberger", "Huck Milner"],
    [" Jessica Chastain", "James McAvoy", "Bill Hader", "Isaiah Mustafa", "Jay Ryan", "James Ransone", "Andy Bean", "Bill Skarsgård"],
    ["John Goodman","Billy Crystal","Mary Gibbs","Steve Buscemi","James Coburn","Jennifer Tilly","	Bob Peterson","	John Ratzenberger"],
    ["Christian Bale","	Gary Oldman","Tom Hardy","Joseph Gordon-Levitt","Anne Hathaway","	Marion Cotillard","Morgan Freeman","Michael Caine"]
  ];
  final List<String> duration = <String>["1h 35m","1h 46m","1h 40m","2h 6m","2h 49m","1h 36m","2h 45m"];
  final List<String> imdbRating = <String>["7.2","5.7","8.1","7.6","6.5","8.1","8.4"];
  final List<String> rtRating = <String>["92%","40%","99%","93%","62%","96%","87%"];
  final int index;
  ThirdScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Project Three'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Director(s)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  const Padding(padding: EdgeInsets.only(top: 15.0)),
                  Text(directors[index].join(", "),
                    style: const TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const Divider(
                height: 15,
                thickness: 5,
                indent: 20,
                endIndent: 20,
              ),
              Column(
                children:  [
                  const Text('Movie stars', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  const Padding(padding: EdgeInsets.only(top: 15.0)),
                  Text(movieStars[index].join(", "),
                    style: const TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const Divider(
                height: 15,
                thickness: 5,
                indent: 20,
                endIndent: 20,
              ),
              Column(
                children: [
                  const Text('Duration', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  const Padding(padding: EdgeInsets.only(top: 15.0)),
                  Text(duration[index], style: const TextStyle(fontSize: 17)),
                ],
              ),
              const Divider(
                height: 15,
                thickness: 5,
                indent: 20,
                endIndent: 20,
              ),
              Column(
                children:[
                  const Text('IDMb rating', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  const Padding(padding: EdgeInsets.only(top: 15.0)),
                  Text("${imdbRating[index]} / 10", style: const TextStyle(fontSize: 17)),
                ],
              ),
              const Divider(
                height: 15,
                thickness: 5,
                indent: 20,
                endIndent: 20,
              ),
              Column(
                children: [
                  const Text('Rotten Tomatoes rating', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  const Padding(padding: EdgeInsets.only(top: 15.0)),
                  Text(rtRating[index], style: const TextStyle(fontSize: 17)),
                ],
              ),
            ],
          ),
        )
    );
  }
}