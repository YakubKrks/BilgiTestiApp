import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'constants.dart';


void main() => runApp(
  BilgiTesti(),
);

 List<Widget> secimler = [];


List<Soru> soruBankasi = [
Soru(soruMetni: " Uçaktaki kara kutu siyahtır.",
soruYaniti: false),
Soru(soruMetni: " Domates meyvedir.",
soruYaniti: true),
Soru(soruMetni: "Depresyon, dünya çapında engelliliğin önde gelen nedenidir.",
soruYaniti: true),
Soru(soruMetni: " Kleopatra Mısır kökenliydi.",
soruYaniti: false),
Soru(soruMetni: " Kafatası insan vücudundaki en güçlü kemiktir.",
soruYaniti: false),
Soru(soruMetni: " Uyurken hapşırabilirsiniz.",
soruYaniti: false),
Soru(soruMetni: " Gözleriniz açıkken hapşırmak imkansız.",
soruYaniti: true),
Soru(soruMetni: " Zarların karşı taraflarındaki iki sayıyı toplarsanız, cevap her zaman 7'dir.",
soruYaniti: true),
Soru(soruMetni: " Merkür'ün atmosferi Karbondioksitten oluşur.",
soruYaniti: false),
Soru(soruMetni: " Eyfel Kulesi'nin inşaatı 31 Mart 1887'de tamamlandı.",
soruYaniti: false),
Soru(soruMetni: " Işık sesten daha hızlı hareket ettiği için şimşek daha duyulmadan görülür.",
soruYaniti: true),
Soru(soruMetni: " Vatikan bir ülkedir.",
soruYaniti: true),
Soru(soruMetni: " Melbourne, Avustralya'nın başkentidir.",
soruYaniti: false),
Soru(soruMetni: " Penisilin, sıtmayı tedavi etmek için Vietnam'da keşfedildi.",
soruYaniti: false),
Soru(soruMetni: " Fuji Dağı, Japonya'nın en yüksek dağıdır.",
soruYaniti: true),
Soru(soruMetni: " Brokoli, limondan daha fazla C vitamini içerir.",
soruYaniti: true),
Soru(soruMetni: " Kafatası insan vücudundaki en güçlü kemiktir.",
soruYaniti: false),
Soru(soruMetni: " Bulutlardan korkmaya Koulrofobi denir.",
soruYaniti: false),
Soru(soruMetni: " Google başlangıçta BackRub olarak adlandırıldı.",
soruYaniti: true)
];

 int soruIndex=0;


class BilgiTesti extends StatefulWidget {
  const BilgiTesti({Key? key}) : super(key: key);

  @override
  State<BilgiTesti> createState() => _BilgiTestiState();
}

class _BilgiTestiState extends State<BilgiTesti> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:
      SafeArea(


        child: Scaffold(
           backgroundColor: Colors.white12,

            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[
                Container(

                  child: Text(

                    soruBankasi[soruIndex].soruMetni,
                    style: TextStyle(
                      fontSize: (30),
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 200.0),
                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: secimler ,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(43.0, 40.0, 0.0, 0.0),
                    child: Row(
                      children: [
                        Center(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),

                            onPressed: () {

                              setState(() {
                                soruBankasi[soruIndex].soruYaniti == false
                                   ? secimler.add(kDogruIconu)
                                   : secimler.add(kYanlisIconu);
                                soruIndex++;
                                //secimler.add(kYanlisIconu);
                              });

                            },
                            icon: Icon(
                              Icons.thumb_down,
                            ),
                            label: Text('BİLGİ YANLIŞ'),
                          ),
                        ),
                        SizedBox(width: 30.0),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                          onPressed: () {
                            setState(() {
                              soruBankasi[soruIndex].soruYaniti == true
                                  ? secimler.add(kDogruIconu)
                                  : secimler.add(kYanlisIconu);

                              soruIndex++;
                              //secimler.add(kDogruIconu);
                            });

                          },
                          icon: Icon(Icons.thumb_up),
                          label: Text('BİLGİ DOĞRU'),
                        ),
                        SizedBox(width: 50.0),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}


class Soru {
 String soruMetni;
 bool soruYaniti;

 Soru ({required this.soruMetni,required this.soruYaniti});

}