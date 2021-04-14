import 'package:clone_picpay_local/widgets/activity_bar.widget.dart';
import 'package:clone_picpay_local/widgets/activity_item.widget.dart';
import 'package:clone_picpay_local/widgets/bottom_menu.widget.dart';
import 'package:clone_picpay_local/widgets/button_tab.widget.dart';
import 'package:clone_picpay_local/widgets/history.widget.dart';
import 'package:flutter/material.dart';

/// Esta page está com o layout exatamente como fizemos em live,
/// no entanto, nesta versão eu utilizei os Slivers para fazer um efeito de rolagem
class PicPayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowGlow();
            return true;
          },
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    buildAppBar(context),
                    SizedBox(
                      height: 20,
                    ),
                    buildHistory(),
                    SizedBox(
                      height: 5,
                    ),
                    buildPromotion(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SliverPersistentHeader(
                floating: true,
                pinned: true,
                delegate: SliverActivityBar(),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, __) => ActivityItem(),
                  childCount: 10,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 100,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.attach_money,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'Pagar',
              style: TextStyle(
                color: Colors.green[600],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: buildBottomBar(),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.qr_code_scanner_outlined,
                  color: Colors.green[600],
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.settings_outlined,
                  color: Colors.green[600],
                ),
                onPressed: () {},
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'Meu saldo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'R\$ 00.000,00',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.card_giftcard_outlined,
                  color: Colors.green[600],
                ),
                onPressed: () {},
              ),
              IconButton(
                  icon: Icon(
                    Icons.maps_ugc_outlined,
                    color: Colors.green[600],
                  ),
                  onPressed: () {}),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black38,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'O que você quer pagar?',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildPromotion() {
    return Card(
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(
                Icons.qr_code,
                color: Colors.green[600],
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seleção especial',
                  ),
                  Text(
                    'Promoções disponíveis',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.green[600],
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHistory() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              ButtonTab(
                isSelected: true,
                text: 'Sugestões',
              ),
              ButtonTab(
                isSelected: false,
                text: 'Favoritos',
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 110,
          margin: const EdgeInsets.only(left: 5),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (notification) {
              notification.disallowGlow();
              return true;
            },
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, index) {
                return History(
                  text: 'Pagar nas maquininhas',
                  content: Padding(
                    padding: const EdgeInsets.all(5),
                    child: FlutterLogo(),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget buildBottomBar() {
    return Container(
      height: 45,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: BottomMenu(
                    icon: Icons.home_filled,
                    text: 'Início',
                    isCurrent: true,
                  ),
                ),
                Expanded(
                  child: BottomMenu(
                    icon: Icons.account_balance_wallet_outlined,
                    text: 'Carteira',
                    isCurrent: false,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: BottomMenu(
                    icon: Icons.notifications_none,
                    text: 'Notificações',
                    isCurrent: false,
                  ),
                ),
                Expanded(
                  child: BottomMenu(
                    icon: Icons.shopping_bag_outlined,
                    text: 'Store',
                    isCurrent: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
