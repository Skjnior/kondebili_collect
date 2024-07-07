import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Contains useful functions to reduce boilerplate code
class UIHelper {
  // Vertical spacing constants. Adjust to your liking.
  static final double _verticalSpaceSmallX = 10.0.h;
  static final double _verticalSpaceSmall = 20.0.h;
  static final double _verticalSpaceMediumX = 30.0.h;
  static final double _verticalSpaceMedium = 40.0.h;
  static final double _verticalSpaceLarge = 50.0.h;

  // Horizontal spacing constants. Adjust to your liking.
  static final double _horizontalSpaceSmallX = 10.0.w;
  static final double _horizontalSpaceSmall = 20.0.w;
  static final double _horizontalSpaceMedium = 40.0.w;
  static final double _horizontalSpaceLarge = 50.0.w;

  /// Returns a vertical space with height set to [_VerticalSpaceSmall]
  static Widget verticalSpaceSmallX() {
    return verticalSpace(_verticalSpaceSmallX);
  }

  static Widget verticalSpaceSmall() {
    return verticalSpace(_verticalSpaceSmall);
  }

  static Widget verticalSpaceMediumX() {
    return verticalSpace(_verticalSpaceMediumX);
  }

  static Widget verticalSpaceMedium() {
    return verticalSpace(_verticalSpaceMedium);
  }

  static Widget verticalSpaceLarge() {
    return verticalSpace(_verticalSpaceLarge);
  }

  /// Returns a vertical space equal to the [height] supplied
  static Widget verticalSpace(double height) {
    return Container(height: height);
  }

  /// Returns a horizontal space with height set to [_HorizontalSpaceSmall]
  static Widget horizontalSpaceSmallX() {
    return horizontalSpace(_horizontalSpaceSmallX);
  }

  static Widget horizontalSpaceSmall() {
    return horizontalSpace(_horizontalSpaceSmall);
  }

  /// Returns a horizontal space with height set to [_HorizontalSpaceMedium]
  static Widget horizontalSpaceMedium() {
    return horizontalSpace(_horizontalSpaceMedium);
  }

  /// Returns a horizontal space with height set to [HorizontalSpaceLarge]
  static Widget horizontalSpaceLarge() {
    return horizontalSpace(_horizontalSpaceLarge);
  }

  /// Returns a horizontal space equal to the [width] supplied
  static Widget horizontalSpace(double width) {
    return Container(width: width);
  }

  static ListTile sectionHeadline(String title, {bool? isShowMoreButton = false, Function()? onTapMore}) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
        title: Text(
          title.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: InkWell(
          onTap: onTapMore,
          child: isShowMoreButton ?? false ? Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text("PLUS", style: TextStyle(color: Colors.white)),
          )
              : const SizedBox(),
        ));
  }

  /// Provides an input field with a title that stretches the full width of the screen
  static Widget inputField({
    bool isPassword = false,
    Color inputTextColor = Colors.black,
    Color inputHintColor = const Color(0xffadadad),
    double inputRadius = 8.0,
    required TextEditingController controller,
    String? title,
    String? placeholder,
    String? validationMessage,
    int? maxLength,
    textInputType,
  }) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title != null ?
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0).r,
            child: Text(title, style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.black)),
          ) : Container(),
          validationMessage != null ? Text(validationMessage, style: TextStyle(color: Colors.red[400], fontSize: 12.0.sp)) : Container(),
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  border: Border.all(color: const Color(0xffe5e5e5)),
                  borderRadius: BorderRadius.circular(inputRadius).w
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0).r,
                child: TextField(
                    controller: controller,
                    obscureText: isPassword,
                    keyboardType: textInputType,
                    maxLength: maxLength,
                    style: TextStyle(color: inputTextColor),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: placeholder,
                        hintStyle: TextStyle(color: inputHintColor),
                        counterText: ''
                    )
                )
              )
          )
        ]
    );
  }


  static  SliverToBoxAdapter buildSliverToBoxAdapter({required String description}) {
    return SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
              height: 100.h,
              child: Center(
                  child: Text(
                    description.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                  )
              )
          )
        )
    );
  }

  static Widget overlapped() {
    const overlap = 20.0;
    final items = [
      ClipOval(
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(image: AssetImage("assets/logo/split_amalan_logo.png")),
          ),
        ),
      ),
      ClipOval(
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(image: AssetImage("assets/logo/split_amalan_logo.png")),
          ),
        ),
      ),
      ClipOval(
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(image: AssetImage("assets/logo/split_amalan_logo.png")),
          ),
        ),
      ),
      ClipOval(
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(image: AssetImage("assets/logo/split_amalan_logo.png")),
          ),
        ),
      ),
      ClipOval(
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(image: AssetImage("assets/logo/split_amalan_logo.png")),
          ),
        ),
      ),
    ];

    List<Widget> stackLayers = List<Widget>.generate(items.length, (index) {
      return Padding(
        padding: EdgeInsets.only(
          left: index.toDouble() * overlap,
        ),
        child: items[index],
      );
    });

    return Stack(children: stackLayers.toList());
  }

  static Widget inputSearch({
    required String placeholder,
    required TextEditingController controller,
    Color inputTextColor = Colors.black,
    Color inputHintColor = const Color(0xffadadad),
    textInputType,
    double bottom = 10.0}) {
    return  Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 5.0, bottom: bottom),
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(color: const Color(0xffe5e5e5)),
                borderRadius: BorderRadius.circular(50).w
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0).r,
              child: TextField(
                  controller: controller,
                  keyboardType: textInputType,
                  style: TextStyle(color: inputTextColor),
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search, color: inputHintColor),
                      border: InputBorder.none,
                      hintText: placeholder,
                      hintStyle: TextStyle(color: inputHintColor),
                      counterText: ''
                  )
              ),
            )
        )
    );
  }

  static Widget failureNoInternet({required String content}) => SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(content, textAlign: TextAlign.center, style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.red),)
        ]
      )
  );
  static Widget loading() => SizedBox(
      height: 30.h,
      width: 30.w,
      child: const CircularProgressIndicator(
        valueColor:AlwaysStoppedAnimation<Color>(Color(0xffE8878C)),
        strokeWidth: 2.0,
      )
  );

  static Widget failure(String content, VoidCallback function) => Container(
      width: double.infinity,
      child: Center(
          child: Column(
            children: [
              Text(content, textAlign: TextAlign.center, style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.red),),
              SizedBox(height: 2),
              IconButton(onPressed: function, padding: EdgeInsets.zero, icon: const Icon(Icons.refresh, size: 20, color: Color(0xffE8878C),)),

            ],
          )
      )
  );

  static Widget emptyData(String content) => Container(
      width: double.infinity,
      child: Center(
          child: Text(content, textAlign: TextAlign.center, style: const TextStyle(fontStyle: FontStyle.italic),)
      )
  );

}
