import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class themebottomsheet extends StatelessWidget {
  const themebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  pro.changeTheme(ThemeMode.light);
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("light".tr(),
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
              SizedBox(height: 12),
              InkWell(
                onTap: () {
                  pro.changeTheme(ThemeMode.dark);
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Dark".tr(),
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
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
