import '../utils/app_export.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.blackLight,
      appBar: AppBar(
        backgroundColor: ColorConstants.black,
        title: Text(
          "Avatar Gallery",
          style: TextStyle(color: ColorConstants.orangeDeep),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(ImageConstant.home, height: 40),
          ),
          SizedBox(width: 10),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: ColorConstants.orangeDeep),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(height: 1, color: ColorConstants.whiteDivider),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
        height: kBottomNavigationBarHeight,
        decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.blackBorder, width: 1),
          color: ColorConstants.blackLight,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 3,
              blurRadius: 20,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BottomNavWIdget(isSelected:selectedIndex==0,iconImage: ImageConstant.homeBottom,onTap: () {
              setState(() {
                selectedIndex=0;
              });

            },),
            BottomNavWIdget(isSelected:selectedIndex==1,iconImage: ImageConstant.games,onTap: () {
              setState(() {
                selectedIndex=1;
              });

            },),
            BottomNavWIdget(isSelected:selectedIndex==2,iconImage: ImageConstant.activities,onTap: () {
              setState(() {
                selectedIndex=2;
              });

            },),
            BottomNavWIdget(isSelected:selectedIndex==3,iconImage: ImageConstant.setings,onTap: () {
              setState(() {
                selectedIndex=3;
              });

            },),
          ],
        ),
      ),
    );
  }
}

class BottomNavWIdget extends StatelessWidget {
  const BottomNavWIdget({
    super.key, required this.iconImage, required this.isSelected, this.onTap,
  });
final String iconImage;
final bool isSelected;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: Material(
        color: isSelected? ColorConstants.buttonSelected:ColorConstants.buttonUnSelected,
        elevation: 5,
        shadowColor:isSelected? ColorConstants.orangeDeepShadoe:ColorConstants.black,
        borderRadius: BorderRadius.circular(6),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(6),
          splashColor: ColorConstants.orangeDeep.withValues(alpha: 0.2),
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Image.asset(
             iconImage,
              height: 10,
              width: 10,
            ),
          ),
        ),
      ),
    );
  }
}
