class JobModel {
  final String job_title;
  final String company_name;
  final String company_logo;
  final String num_of_days_posted;
  final String location;
  final String salary;
  final String experience;
  final String description;
  final String requirements;

  const JobModel({
    required this.company_logo,
    required this.job_title,
    required this.company_name,
    required this.num_of_days_posted,
    required this.location,
    required this.salary,
    required this.experience,
    required this.description,
    required this.requirements,
  });
}
