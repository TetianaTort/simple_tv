enum DeviceClass {
  mobile(title: 'Mobile'),
  desktop(title: 'Desktop');

  const DeviceClass({required this.title});
  final String title;
}

enum Resolution {
  sd(name: 'SD');

  const Resolution({required this.name});
  final String name;
}
