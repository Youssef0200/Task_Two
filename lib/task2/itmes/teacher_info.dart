class TeacherItem {
  final String name;
  final String role;
  final String imagePath;
  final String phone;
  final String phoneIconPath; // Phone icon path
  final String chatIconPath;  // Chat icon path

  TeacherItem({
    required this.name,
    required this.role,
    required this.imagePath,
    required this.phone,
    required this.phoneIconPath,
    required this.chatIconPath,  // Add this as required
  });
}
