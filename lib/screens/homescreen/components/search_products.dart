import 'package:esewa_clone/consts/colors.dart';
import 'package:esewa_clone/home.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> recentSearches = [];
var returndata ='';
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
       onWillPop: () async {
   print("onWillPop callback triggered");
   Navigator.pop(context, 'Data to return');
   return false;
},
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () async {
              //to refresh the previously selected items
      // to refresh the previously selected items
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
              // var result = await Navigator.push(context,
              //     MaterialPageRoute(builder: (context) {
              //   return Home();
              // }
              // ));
              // setState(() {
              // //  returndata = result;
              // });
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: "Search products".text.color(whiteColor).make(),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade700,
                ),
                child: Stack(
                  children: [
                    TextField(
                      controller: _searchController,
                      style: const TextStyle(color: whiteColor, fontSize: 18),
                      decoration: const InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: Colors.white70),
                        contentPadding: EdgeInsets.all(16.0),
                        border: InputBorder.none,
                      ),
                    ),
                    Positioned(
                        top: 15,
                        right: 20,
                        child: IconButton(
                          onPressed: () {
                            // Handle the search icon press
                            String searchTerm = _searchController.text.trim();
                            if (searchTerm.isNotEmpty) {
                              // Add the search term to the recent searches list
                              setState(() {
                                recentSearches.add(searchTerm);
                              });
                              _searchController.clear();
                            }
                          },
                          icon: const Icon(
                            size: 28,
                            Icons.search,
                            color: whiteColor,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            // Recent Searches
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recent Searches',
                    style: TextStyle(color: whiteColor, fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle clear recent searches
                      setState(() {
                        recentSearches.clear();
                      });
                    },
                    child: const Text(
                      'Clear',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: recentSearches.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(recentSearches[index],
                          style: const TextStyle(color: Colors.white)),
                      onTap: () {
                        // Handle tapping on a recent search item
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
