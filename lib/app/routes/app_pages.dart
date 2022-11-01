// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:get/get.dart';

import '../modules/AllImage/bindings/all_image_binding.dart';
import '../modules/AllImage/views/all_image_view.dart';
import '../modules/AllVideos/bindings/all_videos_binding.dart';
import '../modules/AllVideos/views/all_videos_view.dart';
import '../modules/CreateNote/bindings/create_note_binding.dart';
import '../modules/CreateNote/views/create_note_view.dart';
import '../modules/Downloader/bindings/downloader_binding.dart';
import '../modules/Downloader/views/downloader_view.dart';
import '../modules/DynamicFileTree/bindings/dynamic_file_tree_binding.dart';
import '../modules/DynamicFileTree/views/dynamic_file_tree_view.dart';
import '../modules/FileSearch/bindings/file_search_binding.dart';
import '../modules/FileSearch/views/file_search_view.dart';
import '../modules/FileTree/bindings/file_tree_binding.dart';
import '../modules/FileTree/views/file_tree_view.dart';
import '../modules/HomeDrawer/bindings/home_drawer_binding.dart';
import '../modules/HomeDrawer/views/home_drawer_view.dart';
import '../modules/Notes/bindings/notes_binding.dart';
import '../modules/Notes/views/notes_view.dart';
import '../modules/PermissionController/bindings/permission_controller_binding.dart';
import '../modules/PermissionController/views/permission_controller_view.dart';
import '../modules/Settings/bindings/settings_binding.dart';
import '../modules/Settings/views/settings_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PERMISSION_CONTROLLER,
      page: () => const PermissionControllerView(),
      binding: PermissionControllerBinding(),
    ),
    GetPage(
      name: _Paths.HOME_DRAWER,
      page: () => const HomeDrawerView(),
      binding: HomeDrawerBinding(),
    ),
    GetPage(
      name: _Paths.NOTES,
      page: () => const NotesView(),
      binding: NotesBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.DOWNLOADER,
      page: () => const DownloaderView(),
      binding: DownloaderBinding(),
    ),
    GetPage(
      name: _Paths.ALL_IMAGE,
      page: () => const AllImageView(),
      binding: AllImageBinding(),
    ),
    GetPage(
      name: _Paths.ALL_VIDEOS,
      page: () => const AllVideosView(),
      binding: AllVideosBinding(),
    ),
    GetPage(
      name: _Paths.DYNAMIC_FILE_TREE,
      page: () => const DynamicFileTreeView(),
      binding: DynamicFileTreeBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_NOTE,
      page: () => const CreateNoteView(),
      binding: CreateNoteBinding(),
    ),
    GetPage(
      name: _Paths.FILE_SEARCH,
      page: () => const FileSearchView(),
      binding: FileSearchBinding(),
    ),
    GetPage(
      name: _Paths.FILE_TREE,
      page: () => const FileTreeView(),
      binding: FileTreeBinding(),
    ),
  ];
}
