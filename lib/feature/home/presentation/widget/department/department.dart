import 'package:alpa/core/global/container/container.dart';
import 'package:alpa/core/global/loading/loading.dart';
import 'package:alpa/core/global/spacer/spacer.dart';
import 'package:alpa/core/global/title/title.dart';
import 'package:alpa/feature/home/presentation/bloc/home_bloc.dart';
import 'package:alpa/feature/home/presentation/bloc/home_state.dart';
import 'package:alpa/feature/home/presentation/widget/department/department_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Department extends StatelessWidget {
  const Department({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myTitle(title: 'Departments', seeMore: true),
        sizedBox16(),
        BlocBuilder<HomeBloc, HomeState>(
          builder: (ctx, state) {
            if (state is HomeInitial) {
              return const CircleLoading();
            } else if (state is HomeSuccessState) {
              return SizedBox(
                height: 120.0,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemCount: state.departmentList.departments.length,
                    itemBuilder: (c, i) {
                      return departmentItemCard(
                        context: context,
                        department: state.departmentList.departments[i],
                      );
                    }),
              );
            } else if (state is HomeErrorState) {
              return const MyContainer(child: Text('No any department found'));
            } else {
              return const MyContainer(child: Text('No any department found'));
            }
          },
        ),
      ],
    );
  }
}
