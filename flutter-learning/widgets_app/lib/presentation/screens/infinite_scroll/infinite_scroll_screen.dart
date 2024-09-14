import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  static const name = 'infinite_screen';

  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imageIds = [1, 2, 3, 4, 5];
  bool isLoading = false;
  bool isMounted = true;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.position.pixels + 200 >=
          scrollController.position.maxScrollExtent) {
        print('Load next page');
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    isMounted = false;
    super.dispose();
  }

  loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2), () {});
    addFiveImages();

    isLoading = false;

    // revisar si esta montado el componente / widget
    setState(() {});
  }

  void addFiveImages() {
    final lastId = imageIds.last;
    imageIds.addAll([1, 2, 3, 4, 5].map((e) => e + lastId));
    if (!isMounted) return;
    setState(() {});
  }

  Future<void> onRefresh() async {
    if (!isMounted) return;
    await Future.delayed(const Duration(seconds: 2), () {});
    final int lastIds = imageIds.last;
    imageIds.clear();
    imageIds.add(lastIds + 1);
    addFiveImages();
  }

  void moveScrollToBottom() {
    if (scrollController.position.pixels + 150 <=
        scrollController.position.maxScrollExtent) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Infinite Scroll'),
        ),
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: RefreshIndicator(
            edgeOffset: 10,
            strokeWidth: 2,
            onRefresh: onRefresh,
            child: ListView.builder(
              controller: scrollController,
              itemCount: imageIds.length,
              itemBuilder: (context, index) {
                return FadeInImage(
                    fit: BoxFit.cover,
                    width: double.infinity,
                    placeholder: AssetImage('assets/images/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/id/${imageIds[index]}/500/300'));
              },
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          child: isLoading
              ? FadeIn(
                  child: SpinPerfect(
                      infinite: true, child: const Icon(Icons.refresh)))
              : FadeIn(child: const Icon(Icons.arrow_back_ios_new_outlined)),
        ));
  }
}
