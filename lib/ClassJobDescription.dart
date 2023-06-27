import 'package:flutter/src/material/ink_well.dart';

class JobDescription {
  String nameCorp;
  String imageAsset;
  String nameJob;
  String salary;
  String category;
  String location;
  String education;
  String workingHours;
  String jobType;
  String description;
  List<String> assetImage;

  JobDescription(
      {required this.nameCorp,
      required this.imageAsset,
      required this.nameJob,
      required this.salary,
      required this.category,
      required this.location,
      required this.education,
      required this.workingHours,
      required this.jobType,
      required this.description,
      required this.assetImage});
}

var jobDescriptionList = [
  JobDescription(
    nameCorp: 'PT. Panda Advis Teknologi',
    imageAsset: 'images/react native.png',
    nameJob: 'React Native Developer',
    salary: 'Confidential',
    category: 'Software\n Developer',
    location: 'DKI Jakarta,\n Jakarta Selatan',
    education: 'Diploma Degree',
    workingHours: 'Flexible/Remote',
    jobType: 'Full Time',
    description: 'Responsibilities: \n'
        '\n'
        '1) Adhere to agreed-upon delivery schedules\n'
        '2) Utilizes source control, continuous integration, and unit testing best practices\n'
        '3) Work cross-functionally to define and write code for new features\n'
        '\n'
        'Qualifications: \n'
        '1) Bachelor degree or equivalent in Computer Science\n'
        '2) 2+ years experience in related area of developing a mobile based app\n'
        '3) Experience with React Native\n',
    assetImage: [
      'images/images2/laptop.jpg',
      'images/images2/github.png',
      'images/images2/jdk.jpeg',
      'images/images2/android studio.png',
      'images/images2/npm.jpg'
    ],
  ),
  JobDescription(
    nameCorp: 'PT. Kwadran Lima Mitra Karya Solusi',
    imageAsset: 'images/java.jpg',
    nameJob: 'Java Developer',
    salary: 'Confidential',
    category: 'Programmer',
    location: 'DKI Jakarta,\n Jakarta Selatan',
    education: 'Bacheloor Degree',
    workingHours: 'Working Hour \n(8-17) at office',
    jobType: 'Full Time',
    description: 'Deskripsi Pekerjaan: \n'
        '\n'
        '• Bachelor or Master in Software engineering or IT from reputable university\n'
        '• Minimum 1 year experience\n'
        '• Experience in Java Spring\n'
        '• Experience in Java, J2EE technologies such as Tomcat, JBoss, EJB, Struts, POJOs, APIGEE, Kotlin\n'
        '• Expertise in Object Oriented technologies using Java, JMS, J2EE, JSP/Servlet, JDBC API, EJB\n'
        '• Good working knowledge of SQL/PLSQL\n'
        '• Unit test and Integration test\n'
        '• Self-motivated and good project management, interpersonal & communication skills',
    assetImage: [
      'images/images2/laptop.jpg',
      'images/images2/github.png',
      'images/images2/android studio.png',
      'images/images2/jdk.jpeg',
      'images/images2/ij.png',
      'images/images2/jre.jpg',
    ],
  ),
  JobDescription(
    nameCorp: 'PT. Kwadran Lima Mitra Karya Solusi',
    imageAsset: 'images/sql.png',
    nameJob: 'SQL Developer',
    salary: 'Confidential',
    category: 'Database',
    location: 'DKI Jakarta,\n Jakarta Selatan',
    education: 'Diploma Degree',
    workingHours: 'Working Hour\n (8-17) at office',
    jobType: 'Full Time',
    description: 'Deskripsi Pekerjaan: \n'
        '\n'
        '- Pendidikan minimum Diploma (D3) Computer Science\n'
        '- Pengalaman minimum 1 tahun sebagai SQL Developer\n'
        '- Menguasai Ms Sql, Sql Cluster, Sql Replication/ha, Tuning Query, Function/Store Procedure\n'
        '- Pengalaman menggunakan SSIS',
    assetImage: [
      'images/images2/laptop.jpg',
      'images/images2/github.png',
      'images/images2/mysql.png',
      'images/images2/xampp.png',
      'images/images2/mss.jpg',
      'images/images2/workbench.png'
    ],
  ),
  JobDescription(
    nameCorp: 'Armatasoft',
    imageAsset: 'images/net.png',
    nameJob: '.Net Developer',
    salary: 'Confidential',
    category: 'Software\n Engineer',
    location: 'DKI Jakarta,\n Jakarta Selatan',
    education: 'Bacheloor Degree',
    workingHours: 'Working Hour\n (8-17) at office',
    jobType: 'Full Time',
    description: 'Deskripsi Pekerjaan: \n'
        '\n'
        'We are looking for a skilled .Net Developer to join our Developer Team.\n'
        '\n'
        'The Task & Responsibilities: \n'
        ' \n'
        'To develop web based application using the latest .Net Framework and technologies\n'
        'To provide solution architectures form business requirements, evaluating and implementing bug fixes, and excellent trouble-shooter and also collaborating with overseas team\n'
        'Improve web performance and optimize database usage\n'
        '\n'
        'The Required Profile: \n'
        ' \n'
        'Candidate must possess at least a Bachelor Degree, Computer Science/Information Technology or equivalent.\n'
        'At least 3 year(s) of working experience in the related field is required for this position. Fresh Graduate Welcome To Apply.\n'
        'Familiar with .NET technologies\n'
        'Familiar with C#, SQL, JavaScript, HTML5 and CSS\n'
        'Familiar in designing and working with N-Tier Architectures',
    assetImage: [
      'images/images2/laptop.jpg',
      'images/images2/github.png',
      'images/images2/c#.png',
      'images/images2/hcj.png',
      'images/images2/mnf.jpg',
      'images/images2/.net core.png',
      'images/images2/asp net.png',
    ],
  ),
  JobDescription(
    nameCorp: 'Armatasoft',
    imageAsset: 'images/golang.png',
    nameJob: 'Go Developer',
    salary: 'IDR 10.000.000 - 20.000.000/Bulan',
    category: 'Software\n Developer',
    location: 'DKI Jakarta,\n Jakarta Selatan',
    education: 'Bacheloor Degree',
    workingHours: 'Working Hour\n (8-17) at office',
    jobType: 'Full Time',
    description: 'Deskripsi Pekerjaan: \n'
        'We are looking for a great Go developer who possesses a strong understanding of how best to leverage and exploit the languages unique paradigms, idioms, and syntax. Your primary focus will be on developing Go packages and programs that are scalable and maintainable. You will ensure that these Go packages and programs are well documented and has a reasonable test coverage\n'
        ' \n'
        'The Task and Responsibility: \n'
        ' \n'
        'Build API using Golang (Go)\n'
        'Create new function on existing products\n'
        'Responsible for project completion\n'
        'Involved in the various phases of the SDLC (Software Development Life Cycle)\n'
        ' \n'
        'The Profile: \n'
        ' \n'
        'Graduated from Diploma/Bachelor/Master Degree in Information Technology Major or equivalent\n'
        'Minimum 2 year experience as Golang Developer. Fresh Graduate Welcome To Apply.\n'
        'Strong knowledge of Go programming language, paradigms, construct, and idioms.\n'
        'Open for learning new things related to Go and willing to collaborate with others\n'
        'Strong in analytical thinking skill & problem solving.\n'
        'Good logical thinking and fast learner',
    assetImage: [
      'images/images2/laptop.jpg',
      'images/images2/github.png',
      'images/images2/API.png',
      'images/images2/sdc.png'
    ],
  ),
  JobDescription(
    nameCorp: 'Tokoweb.co',
    imageAsset: 'images/kotlin.jpg',
    nameJob: 'Mobile Developer (Kotlin)',
    salary: 'IDR 6.000.000 - 8.000.000/Bulan',
    category: 'Mobile\n Developer',
    location: 'West Java, Kabupaten Bandung Barat',
    education: 'Vocational School',
    workingHours: 'Working Hour\n (8-17) at office',
    jobType: 'Full Time',
    description: 'Deskripsi Pekerjaan: \n'
        'PT Inditama merupakan perusahaan penyedia layanan jasa Pembuatan Website, aplikasi mobile, branding & konten kreatif, serta internet marketing. Kami saat ini sedang membuka lowongan pekerjaan untuk posisi Mobile Developer. Perusahaan kami membutuhkan kandidat Mobile Developer untuk dapat bergabung & berkembang bersama kami.\n'
        ' \n'
        'Tanggung Jawab Pekerjaan : \n'
        '- Debugging, Testing & Development coding.\n'
        '- Deployment aplikasi ke Google Playstore.\n'
        ' \n'
        'Syarat Pengalaman : \n'
        'Pengalaman minimal 1 tahun / Pernah membuat aplikasi mobile.\n'
        ' \n'
        'Keahlian : \n'
        '- Kotlin (Wajib)\n'
        ' \n'
        '- Flutter (nilai +)\n'
        '- React Native (Nilai +)\n'
        ' \n'
        '- Bisa Implementasikan design UI/UX ke Coding dari figma / Adobe XD.\n'
        '- Terbiasa Gunakan Rest API Backend Service / Pihak Ke-3\n'
        '- Familiar dengan cloud message API and Push\n'
        '- Bisa menggunakan GIT (Github, Gitlab)\n'
        ' \n'
        'Kualifikasi : \n'
        '- Pria.\n'
        '- Umur > 20 Tahun.\n'
        '- Pendidikan min. SMA/SMK Sederajat.\n'
        '- Bekerja Secara Personal & Team.\n'
        '- Jujur & Tanggung Jawab.\n'
        '- Bekerja sesuai target project.\n',
    assetImage: [
      'images/images2/laptop.jpg',
      'images/images2/github.png',
      'images/images2/android studio.png',
      'images/images2/jdk.jpeg',
      'images/images2/ij.png',
    ],
  ),
  JobDescription(
    nameCorp: 'Tokoweb.co',
    imageAsset: 'images/fluttter.jpeg',
    nameJob: 'Mobile Developer (Flutter)',
    salary: 'IDR 6.000.000 - 8.000.000/Bulan',
    category: 'Mobile\n Developer',
    location: 'West Java, Kabupaten Bandung Barat',
    education: 'Vocational School',
    workingHours: 'Working Hour\n (8-17) at office',
    jobType: 'Full Time',
    description: 'Deskripsi Pekerjaan: \n'
        'PT Inditama merupakan perusahaan penyedia layanan jasa Pembuatan Website, aplikasi mobile, branding & konten kreatif, serta internet marketing. Kami saat ini sedang membuka lowongan pekerjaan untuk posisi Mobile Developer. Perusahaan kami membutuhkan kandidat Mobile Developer yang profesional untuk dapat bergabung & berkembang bersama kami.\n'
        ' \n'
        'Tanggung Jawab Pekerjaan : \n'
        '- Debugging, Testing & Development coding.\n'
        '- Deployment aplikasi ke Google Playstore dan App Store.\n'
        ' \n'
        'Syarat Pengalaman : \n'
        'Pengalaman minimal 1 tahun / Pernah membuat aplikasi mobile.\n'
        ' \n'
        'Keahlian : \n'
        '- Flutter (Wajib)\n'
        '- Kotlin (nilai +)\n'
        '- React Native (Nilai +)\n'
        '- Bisa Implementasikan design UI/UX ke Coding dari figma / Adobe XD\n'
        '- Terbiasa Gunakan Rest API Backend Service / Pihak Ke-3\n'
        '- Familiar dengan cloud message API and Push\n'
        '- Bisa menggunakan GIT (Github, Gitlab)\n'
        ' \n'
        'Kualifikasi : \n'
        '- Pria / Wanita\n'
        '- Umur > 20 Tahun\n'
        '- Pendidikan min. SMA/SMK Sederajat\n'
        '- Bekerja Secara Personal & Team\n'
        '- Jujur & Tanggung Jawab\n'
        '- Bekerja sesuai target project',
    assetImage: [
      'images/images2/laptop.jpg',
      'images/images2/github.png',
      'images/images2/android studio.png',
      'images/images2/jdk.jpeg',
      'images/images2/macbook.png',
      'images/images2/android sdk.jpg',
      'images/images2/dart.png',
      'images/images2/flutter.jpg',
    ],
  ),
  JobDescription(
    nameCorp: 'E-Solution',
    imageAsset: 'images/angular-js.jpg',
    nameJob: 'Angular Developer',
    salary: 'Confidential',
    category: 'Frontend\n Developer',
    location: 'Middle Java, Semarang',
    education: 'High School',
    workingHours: 'Working Hour\n (8-17) at office',
    jobType: 'Contract',
    description: 'Deskripsi Pekerjaan: \n'
        'Requirement\n'
        '- Menguasai Angular\n'
        '- Paham menggunakan postman\n'
        '- Paham menggunakan git\n'
        '- Paham HTML dan CSS',
    assetImage: [
      'images/images2/laptop.jpg',
      'images/images2/github.png',
      'images/images2/html.jpg',
      'images/images2/css.png',
      'images/images2/angular.png',
      'images/images2/git.png',
    ],
  ),
  JobDescription(
    nameCorp: 'PT. Graha Karya Informasi',
    imageAsset: 'images/node js.png',
    nameJob: 'Node JS Programmer',
    salary: 'Confidential',
    category: 'Programmer',
    location: 'DKI Jakarta, Jakarta Selatan',
    education: 'Diploma Degree',
    workingHours: 'Working Hour\n (8-17) at office',
    jobType: 'Contract',
    description: 'Deskripsi Pekerjaan: \n'
        '- Bachelors degree in Computer Science/ Information Technology or equvalent.\n'
        '- Have at least 2 years experience in Node.JS Developer\n'
        '- Asking in making REAST APIs based on generally accepted standards.\n'
        '- Expert in SQL database (MariaDB)\n'
        '- Understand the concept of Microservice Architecture and Docker\n'
        '- Good attitude and good communications\n'
        '- Placement Jakarta',
    assetImage: [
      'images/images2/laptop.jpg',
      'images/images2/github.png',
      'images/images2/js.png',
      'images/images2/nosql.png',
      'images/images2/json.jpg',
      'images/images2/mongodb.png',
    ],
  ),
  JobDescription(
    nameCorp: 'Otto Digital Group',
    imageAsset: 'images/full stack.jpeg',
    nameJob: 'Full Stack Developer',
    salary: 'Confidential',
    category: 'Full Stack\n Developer',
    location: 'DKI Jakarta,\n Jakarta Selatan',
    education: 'Bacheloor Degree',
    workingHours: 'Working Hour\n (8-17) at office',
    jobType: 'Full Time',
    description: 'Job Description: \n'
        ' \n'
        '1. Develop Web Application\n'
        '2. Communicate with team leader regarding application structure and base code\n'
        '3. Communicate with mobile apps team regarding API implementation\n'
        '4. Bug fixing and improving application performance\n'
        ' \n'
        'Requirements: \n'
        ' \n'
        '1. Minimum bachelors degree\n'
        '2. 1 - 2 years experienced to develop Web Application\n'
        '3. Strong knowledge of Object-Oriented Programming\n'
        '4. Familiarity with code versioning tools\n'
        '5. Proficiency with HTML, CSS, JavaScript, and jQuery\n'
        '6. Experience with Golang is a plus\n'
        '7. Experience with PostgreSQL, MySQL, MongoDB\n'
        '8. Experience with Tuning, Caching, and Search Engine such as Elastic or Redis\n'
        '9. Experience with Eager Loading\n'
        '10. Experience with Unit Testing and TDD\n'
        '11. Experience working with REST API\n'
        '12. Experience with Monolith and Micro Services architecture\n'
        '13. Knowledge and experience with frameworks, CSS Preprocessors, Task runners (ReactJS, Vue-JS, Sass, LESS)\n',
    assetImage: [
      'images/images2/laptop.jpg',
      'images/images2/github.png',
      'images/images2/hcj.png',
      'images/images2/API.png',
      'images/golang.png',
      'images/images2/mysql.png',
      'images/images2/mongodb.png',
      'images/images2/jquery.png',
      'images/images2/postgre.png',
      'images/images2/redis.png',
      'images/images2/tdd.png',
      'images/images2/restapi.jpg',
      'images/images2/microservices.jpeg',
      'images/images2/react-js.jpg',
      'images/images2/vue-js.jpeg',
    ],
  ),
];
