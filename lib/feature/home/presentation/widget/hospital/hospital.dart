import 'package:alpa/core/global/container/container.dart';
import 'package:alpa/core/global/loading/loading.dart';
import 'package:alpa/core/global/spacer/spacer.dart';
import 'package:alpa/core/global/title/title.dart';
import 'package:alpa/core/utils/sizer/size.dart';
import 'package:alpa/feature/home/presentation/bloc/home_bloc.dart';
import 'package:alpa/feature/home/presentation/bloc/home_state.dart';
import 'package:alpa/feature/home/presentation/widget/hospital/hospital_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Hospital extends StatelessWidget {
  const Hospital({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myTitle(title: 'Hospitals', seeMore: true),
        sizedBox16(),
        BlocBuilder<HomeBloc, HomeState>(
          builder: (ctx, state) {
            if (state is HomeInitial) {
              return const CircleLoading();
            } else if (state is HomeSuccessState) {
              return SizedBox(
                height: maxHeight(context) / 4,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemCount: state.hospitalList.hospitals.length,
                    itemBuilder: (c, i) {
                      return hospitalItemCard(
                        context: context,
                        hospitalModel: state.hospitalList.hospitals[i],
                      );
                    }),
              );
            } else if (state is HomeErrorState) {
              return const MyContainer(child: Text('No any hospital found'));
            } else {
              return const MyContainer(child: Text('No any hospital found'));
            }
          },
        ),
      ],
    );
  }
}
