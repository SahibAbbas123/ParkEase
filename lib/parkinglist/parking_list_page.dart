import 'package:flutter/material.dart';
import 'package:parkz/utils/constanst.dart';
import 'package:parkz/utils/text/semi_bold.dart';
import '../l10n/app_localizations.dart';

import '../home/components/parking_horizontal_card.dart';
import '../home/components/parking_horizontal_shim_list.dart';
import '../model/rating_home_response.dart';
import '../network/api.dart';

class ParkingListPage extends StatelessWidget {
  const ParkingListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: const BackButton(
            color: AppColor.forText
        ),
        backgroundColor: Colors.white,
        title: SemiBoldText(text: AppLocalizations.of(context).parkingListTitle, fontSize: 20, color: AppColor.forText),
      ),
      body: FutureBuilder<RatingHomeResponse>(
        future: getParkingListHome(100),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return const ParkinkCardHomeLoadingList();
          }
          if(snapshot.hasData && snapshot.connectionState == ConnectionState.done){
            if(snapshot.data!.data!.isNotEmpty){
              return  ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ParkingCardHome(
                    title: snapshot.data!.data![index].parkingShowInCusDto!.name!,
                    imagePath: snapshot.data!.data![index].parkingShowInCusDto!.avatar,
                    rating: snapshot.data!.data![index].parkingShowInCusDto!.stars,
                    motoPrice: snapshot.data!.data![index].priceMoto,
                    carPrice: snapshot.data!.data![index].priceCar,
                    address: snapshot.data!.data![index].parkingShowInCusDto!.address!,
                    isFavorite: true,
                    id: snapshot.data!.data![index].parkingShowInCusDto!.parkingId!,
                  );
                },
                itemCount: snapshot.data!.data!.length,
              );
            }else {
              return SizedBox(
                width: double.infinity,
                height: 310,
                child: Center(child: SemiBoldText(text: AppLocalizations.of(context).noParkingNearby, fontSize: 19, color: AppColor.forText),),
              );
            }
          }
          if(snapshot.hasError){
            return SizedBox(
              width: double.infinity,
              height: 510,
              child: Center(child: SemiBoldText(text: AppLocalizations.of(context).errorNoParking, fontSize: 19, color: AppColor.forText),),
            );
          }
          return SizedBox(
            width: double.infinity,
            height: 510,
            child: Center(child: SemiBoldText(text: AppLocalizations.of(context).unknownNoParking, fontSize: 19, color: AppColor.forText),),
          );
        },),
    );
  }
}
