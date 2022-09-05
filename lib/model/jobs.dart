


class Job{
  final int   id;
  final String jobTitle;
  final String imageUrl;
  final String description;
  final double price;
  bool isFavourite;

  Job(
      {required this.id,
        required this.jobTitle,
        required this.imageUrl,
        required this.description,
        required this.price,
        this.isFavourite = false});

}
