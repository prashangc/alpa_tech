import 'package:alpa/config/theme/colors.dart';
import 'package:alpa/core/global/spacer/spacer.dart';
import 'package:alpa/core/injector/dependency_injection.dart';
import 'package:alpa/core/utils/sizer/size.dart';
import 'package:alpa/feature/home/data/repository/home_repository.dart';
import 'package:alpa/feature/home/domain/usecase/home_usecase.dart';
import 'package:alpa/feature/home/presentation/bloc/home_bloc.dart';
import 'package:alpa/feature/home/presentation/widget/appbar/home_app_bar.dart';
import 'package:alpa/feature/home/presentation/widget/category/category.dart';
import 'package:alpa/feature/home/presentation/widget/department/department.dart';
import 'package:alpa/feature/home/presentation/widget/hospital/hospital.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final HomeUseCase homeUseCase;
  const HomePage({super.key, required this.homeUseCase});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => HomeBloc(homeRepository: getIt<HomeRepository>()),
      child: Scaffold(
        backgroundColor: MyColor.lightColorScheme.secondary,
        body: Column(
          children: [
            const HomeAppBar(),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: MyColor.lightColorScheme.primary,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0),
                        )),
                    width: maxWidth(context),
                    height: maxHeight(context) / 6,
                  ),
                  Positioned(
                    top: 12.0,
                    left: 16.0,
                    right: 16.0,
                    child: SizedBox(
                      width: maxWidth(context),
                      height: maxHeight(context),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Category(homeUseCase: homeUseCase),
                            sizedBox24(),
                            const Department(),
                            sizedBox24(),
                            const Hospital(),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
