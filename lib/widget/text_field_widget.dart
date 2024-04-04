import 'package:codeland_demo/constants/constants.dart';

class GenericTextFieldController extends GetxController {
  var error = ' '.obs;
}

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final GenericTextFieldController textFieldController;
  final String hintText;
  final String labelText;
  final TextInputType keyboardKey;
  final Function(String) onTextChanged;
  final bool isPassword; // TRUE if field is password else FALSE default
  final bool isErrorShow;
  final dynamic validator;
  final int maxLength;
  final int maxLine;
  final bool isAutoFocus;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;

  const TextFormFieldWidget(
      {super.key,
      this.controller,
      required this.textFieldController,
      required this.onTextChanged,
      this.keyboardKey = TextInputType.text,
      this.isPassword = false,
      this.isErrorShow = true,
      this.validator,
      this.hintText = "",
      this.labelText = "",
      this.maxLength = 40,
      this.maxLine = 1,
      this.suffixIcon,
      this.prefixIcon,
      this.isAutoFocus = false,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            TextFormField(
              key: key,
              controller: controller
                ?..selection = TextSelection.fromPosition(
                    TextPosition(offset: controller?.text.length ?? 0)),
              focusNode: focusNode,
              onChanged: (text) => onTextChanged(text),
              style: AppTextStyle.textDetailsRegular(
                context,
                AppColorStyle.text(context),
              ),
              cursorColor: AppColorStyle.primary(context),
              autofocus: isAutoFocus,
              obscureText: isPassword,
              keyboardType: keyboardKey,
              maxLength: maxLength,
              maxLines: maxLine,
              validator: validator,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: ThemeConstant.textDetail),
                  borderRadius: BorderRadius.circular(5),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: ThemeConstant.textDetail),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: ThemeConstant.textDetail),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColorStyle.primary(context)),
                  borderRadius: BorderRadius.circular(5),
                ),
                //filled: true,
                //fillColor: AppColorStyle.backgroundVariant(context),
                labelText: labelText,
                labelStyle: AppTextStyle.textDetailsRegular(
                  context,
                  AppColorStyle.textCaption(context),
                ),
                hintText: hintText,
                counterText: "",
                hintStyle: AppTextStyle.textDetailsRegular(
                  context,
                  AppColorStyle.textCaption(context),
                ),
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 20.0),
              ),
            ),
            textFieldController.error.value != ""
                ? const SizedBox(
                    height: 3.0,
                  )
                : Container(),
            textFieldController.error.value != ""
                ? Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 200),
                      child: Text(
                        isErrorShow ? textFieldController.error.toString() : "",
                        style: AppTextStyle.textCaptionRegular(
                            context, AppColorStyle.error(context)),
                        //key: ValueKey<String>(snapshot.data ?? "textKey"),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ));
  }
}
