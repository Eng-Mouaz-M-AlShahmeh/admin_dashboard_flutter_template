/* Developed by Eng Mouaz M AlShahmeh */
class RecentUser {
  final String? icon, name, date, posts, role, email;

  RecentUser(
      {this.icon, this.name, this.date, this.posts, this.role, this.email});
}

List recentUsers = [
  RecentUser(
    icon: "assets/icons/xd_file.svg",
    name: "Dani Bassem",
    role: "مطور",
    email: "de***ak@huawei.com",
    date: "01-03-2021",
    posts: "4",
  ),
  RecentUser(
    icon: "assets/icons/Figma_file.svg",
    name: "S*** Ç****",
    role: "مهندس برمجيات",
    email: "se****k1@google.com",
    date: "27-02-2021",
    posts: "19",
  ),
  RecentUser(
    icon: "assets/icons/doc_file.svg",
    name: "N***** D****",
    role: "معماري حلول",
    email: "ne****tr@google.com",
    date: "23-02-2021",
    posts: "32",
  ),
  RecentUser(
    icon: "assets/icons/sound_file.svg",
    name: "B***** K****",
    role: "مدير مشروع",
    email: "bu****lk@google.com",
    date: "21-02-2021",
    posts: "3",
  ),
  RecentUser(
    icon: "assets/icons/media_file.svg",
    name: "A**** S**** K****",
    role: "مهندس خطوط",
    email: "ah****az@google.com",
    date: "23-02-2021",
    posts: "2",
  ),
  RecentUser(
    icon: "assets/icons/pdf_file.svg",
    name: "T***** S****",
    role: "مصمم واجهات وتجربة مستخدم",
    email: "te****cu@google.com",
    date: "25-02-2021",
    posts: "3",
  ),
  RecentUser(
    icon: "assets/icons/excle_file.svg",
    name: "K***** D****",
    role: "محلل أعمال",
    email: "ke****an@gmail.com",
    date: "25-02-2021",
    posts: "34",
  ),
];
