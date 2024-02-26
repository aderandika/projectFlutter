import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/pages/dashboard_views/account_view.dart';

class AppConstants {
  static const appName = 'LAUNDRY';

  static const _host = 'http://192.168.50.8:8000';

  /// ''' baseURL = 'http://192.168.50.8:8000' '''
  static const baseURL = '$_host/api';

  /// ''' baseImageURL = 'http://192.168.50.8:8000/storage' '''
  static const baseImageURL = '$_host/storage';

  static const laundryStatusCategory = [
    'All',
    'Pickup',
    'Queue',
    'Process',
    'Washing',
    'Dried',
    'Ironed',
    'Done',
    'Delivery'
  ];

  static List<Map> navMenuDashboard = [
    {
      'view': DView.empty('Home'),
      'icon': Icons.home_filled,
      'label': 'Home',
    },
    {
      'view': DView.empty('My Laundry'),
      'icon': Icons.local_laundry_service,
      'label': 'My Laundry',
    },
    {
      'view': const AccountView(),
      'icon': Icons.account_circle,
      'label': 'Account',
    },
  ];
}
