import 'package:flutter/material.dart';

class ProfileMobileScreen extends StatefulWidget {
  const ProfileMobileScreen({super.key});

  @override
  State<ProfileMobileScreen> createState() => _ProfileMobileScreenState();
}

class _ProfileMobileScreenState extends State<ProfileMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(height: 10),
            Text(
              "Steven LoPere",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.green),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.verified_user_outlined,size: 10,),
                  Text(
                    "verified",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2)),
                      child: ListTile(
                        leading: Icon(Icons.add_card_outlined),
                        title: Text(
                          "Personal info",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2)),
                      child: ListTile(
                        leading: Icon(Icons.add_card_outlined),
                        title: Text(
                          "Personal info",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ),
                ),SizedBox(height: 30),
                Container(decoration: BoxDecoration(),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
