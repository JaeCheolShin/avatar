import 'package:flutter/material.dart';

class qqwwee extends StatefulWidget {
  const qqwwee({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<qqwwee>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final menuWidth = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: _appbar(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(
              delegate: SliverChildListDelegate([
                _header(),
                _username(),
                _bio(),
                _editProfileButton(),
              ]),
            )
          ];
        },
        body: TabBarView(controller: _tabController, children: [
          GridView.builder(
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) =>
                  Image.asset('assets/images/logo.png')
              //Image.network(""), 주소에서 이미지 불러오기
              ),
          Container(
            color: Colors.red,
          )
        ]),
      ),
    );
  }
}

Widget _header() {
  return Row(
    children: [
      const Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          width: 80,
          height: 80,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/logo.png"),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Table(
            children: [
              TableRow(children: [
                _valueText("180"),
                _valueText("80"),
                _valueText("275"),
                _valueText("24"),
              ]),
              TableRow(children: [
                _labelText("키"),
                _labelText("몸무게"),
                _labelText("발사이즈"),
                _labelText("나이"),
              ]),
            ],
          ),
        ),
      )
    ],
  );
}

Text _valueText(String value) {
  return Text(
    value,
    style: const TextStyle(fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

Text _labelText(String label) {
  return Text(
    label,
    style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 11.0),
    textAlign: TextAlign.center,
  );
}

Padding _editProfileButton() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: const Text(
        "프로필 수정하기",
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}

Padding _bio() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Text("저는 OOO입니다."),
  );
}

Padding _username() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Text("사용자 이름", style: TextStyle(fontWeight: FontWeight.bold)),
  );
}

AppBar _appbar() {
  return AppBar(
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
      onPressed: () {},
    ),
    title: const Text(
      "내 프로필",
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: true,
    actions: [
      Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () => Scaffold.of(context).openEndDrawer(),
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
      ),
    ],
  );
}
