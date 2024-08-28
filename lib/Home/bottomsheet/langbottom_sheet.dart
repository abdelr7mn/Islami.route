import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LangbottomSheeet extends StatelessWidget {
  LangbottomSheeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  context.setLocale(Locale("ar"));
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("arabic".tr(),
                        style: context.locale == Locale("ar")
                            ? Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Theme.of(context).primaryColor)
                            : Theme.of(context).textTheme.bodyMedium),
                    context.locale == Locale("ar")
                        ? Icon(Icons.done)
                        : SizedBox(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  context.setLocale(Locale("en"));
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("english".tr(),
                        style: context.locale == Locale("en")
                            ? Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Theme.of(context).primaryColor)
                            : Theme.of(context).textTheme.bodyMedium),
                    context.locale == Locale("en")
                        ? Icon(Icons.done)
                        : SizedBox(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
