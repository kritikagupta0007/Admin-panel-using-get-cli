class RecentFile {
  final String? icon, title, loc, followers;

  RecentFile({
    this.icon,
    this.title,
    this.loc,
    this.followers,
  });
}

List demoRecentFiles = [
  RecentFile(
    icon: "assets/icons/xd_file.svg",
    title: "Shop 1",
    loc: "India",
    followers: "33m",
  ),
  RecentFile(
    icon: "assets/icons/Figma_file.svg",
    title: "Shop 2",
    loc: "Mumbai",
    followers: "21m",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: "Shop 3",
    loc: "India",
    followers: "13m",
  ),
  RecentFile(
    icon: "assets/icons/sound_file.svg",
    title: "Shop 4",
    loc: "Tamil Nadu",
    followers: "5.5m",
  ),
  RecentFile(
    icon: "assets/icons/media_file.svg",
    title: "Shop 5",
    loc: "Kerala",
    followers: "1.3m",
  ),
  RecentFile(
    icon: "assets/icons/pdf_file.svg",
    title: "Shop 6",
    loc: "Uttar Pradesh",
    followers: "5k",
  ),
  RecentFile(
    icon: "assets/icons/excle_file.svg",
    title: "Shop 7",
    loc: "India",
    followers: "2k",
  ),
];

class ReportFile {
  final String? icon, title, loc, followers, numOfVideo;

  ReportFile(
      {this.icon, this.title, this.loc, this.followers, this.numOfVideo});
}

List demoReportFiles = [
  ReportFile(
    icon: "assets/icons/xd_file.svg",
    title: "Shop 1",
    loc: "India",
    followers: "33m",
    numOfVideo: "230",
  ),
  ReportFile(
    icon: "assets/icons/Figma_file.svg",
    title: "Shop 2",
    loc: "Mumbai",
    followers: "21m",
    numOfVideo: "1000",
  ),
  ReportFile(
    icon: "assets/icons/doc_file.svg",
    title: "Shop 3",
    loc: "India",
    followers: "13m",
    numOfVideo: "200",
  ),
  ReportFile(
    icon: "assets/icons/sound_file.svg",
    title: "Shop 4",
    loc: "Tamil Nadu",
    followers: "5.5m",
    numOfVideo: "1390",
  ),
  ReportFile(
    icon: "assets/icons/media_file.svg",
    title: "Shop 5",
    loc: "Kerala",
    followers: "1.3m",
    numOfVideo: "730",
  ),
  ReportFile(
    icon: "assets/icons/pdf_file.svg",
    title: "Shop 6",
    loc: "Uttar Pradesh",
    followers: "5k",
    numOfVideo: "840",
  ),
  ReportFile(
    icon: "assets/icons/excle_file.svg",
    title: "Shop 7",
    loc: "India",
    followers: "2k",
    numOfVideo: "490",
  ),
];
