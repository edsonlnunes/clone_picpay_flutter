import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[200],
                    child: Icon(
                      Icons.person,
                      color: Colors.green,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: '@usuario.nick ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                          text: 'esteve em ',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(text: 'Nome loja'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Alguma descrição é colocado aqui pelo picpay',
                  style: TextStyle(
                    color: Colors.black26,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '11 horas atrás',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black26,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black26,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black26,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
