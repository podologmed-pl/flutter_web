import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_web/variables.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


pageOnas() =>
    LayoutBuilder(
        builder: (context, constraints) {
          return constraints.maxWidth < 1000 ?
          _buildMobile() :
          _buildWeb();
        }
    );

_buildWeb() =>
    SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text("O nas",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ImageSlideshow(
                  width: double.infinity,
                  height: 500,
                  initialPage: 0,
                  indicatorColor: Colors.blue,
                  indicatorBackgroundColor: Colors.grey,
                  onPageChanged: (value) {
                    //debugPrint('Page changed: $value');
                  },
                  autoPlayInterval: 5000,
                  isLoop: true,
                  children: [
                    Image.asset(
                      'assets/images/gabinet1.png',
                      fit: BoxFit.fitWidth,
                    ),
                    Image.asset(
                      'assets/images/gabinet2.png',
                      fit: BoxFit.fitWidth,
                    ),
                    Image.asset(
                      'assets/images/gabinet3.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ),
              const Expanded(child:
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Text(
                    'PODOLOGMED Specjalistyczna pielęgnacja stóp to gabinet podologiczny stworzony dla osób z problemami stóp takimi jak: odciski, modzele, pękające pięty, grzybica, brodawki wirusowe oraz wrastające paznokcie, którzy często nie wiedząc gdzie się udać tułają się od jednych drzwi do drugich w poszukiwaniu pomocy. Profesjonalne i najwyższej jakości wyposażenie gabinetu sprawia, że jest on dostosowany zarówno dla osób młodych jak i starszych o obniżonej sprawności ruchowej. Elektryczny fotel, dzięki wielu praktycznym rozwiązaniom, pozwala na ustalenie pozycji wygodnej dla pacjenta. Najnowszej klasy frezarka poradzi sobie z wszelkimi zrogowaceniami, odciskami, modzelami, a także zgrubiałymi paznokciami niemożliwymi do obcięcia przez pacjentów samodzielnie w domu. Zabiegi wykonywane są przy użyciu sprzętu najwyżej jakości, co przekłada się na poziom świadczonych usług. Narzędzia stosowane podczas zabiegu są każdorazowo dezynfekowane i poddawane procesowi sterylizacji, by zapewnić jak najwyższe bezpieczeństwo podczas wykonywanych zabiegów. Ponadto gabinet PODOLOGMED mieści się w przychodni dostosowanej do osób niepełnosprawnych. Podjazd na zewnątrz budynku umożliwia bezproblemowe dostanie się do gabinetu osób na wózkach inwalidzkich oraz komfortowe poruszanie w środku przychodni.',
                    style: TextStyle(height: 1.2, fontSize: 16),
                  ),
                ),
              ),
              ),
            ],
          ),
        ],
      ),
    );


_buildMobile() =>
    SingleChildScrollView(
      child: Row(
        children:  [
           const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text("O nas",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'PODOLOGMED Specjalistyczna pielęgnacja stóp to gabinet podologiczny stworzony dla osób z problemami stóp takimi jak: odciski, modzele, pękające pięty, grzybica, brodawki wirusowe oraz wrastające paznokcie, którzy często nie wiedząc gdzie się udać tułają się od jednych drzwi do drugich w poszukiwaniu pomocy. Profesjonalne i najwyższej jakości wyposażenie gabinetu sprawia, że jest on dostosowany zarówno dla osób młodych jak i starszych o obniżonej sprawności ruchowej. Elektryczny fotel, dzięki wielu praktycznym rozwiązaniom, pozwala na ustalenie pozycji wygodnej dla pacjenta. Najnowszej klasy frezarka poradzi sobie z wszelkimi zrogowaceniami, odciskami, modzelami, a także zgrubiałymi paznokciami niemożliwymi do obcięcia przez pacjentów samodzielnie w domu. Zabiegi wykonywane są przy użyciu sprzętu najwyżej jakości, co przekłada się na poziom świadczonych usług. Narzędzia stosowane podczas zabiegu są każdorazowo dezynfekowane i poddawane procesowi sterylizacji, by zapewnić jak najwyższe bezpieczeństwo podczas wykonywanych zabiegów. Ponadto gabinet PODOLOGMED mieści się w przychodni dostosowanej do osób niepełnosprawnych. Podjazd na zewnątrz budynku umożliwia bezproblemowe dostanie się do gabinetu osób na wózkach inwalidzkich oraz komfortowe poruszanie w środku przychodni.',
                  style: TextStyle(height: 1.2, fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
