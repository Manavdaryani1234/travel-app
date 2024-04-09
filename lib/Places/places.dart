import 'package:flutter/material.dart';

class Place {
  String name;
  String description;
  String imageUrl;

  Place({required this.name, required this.description, required this.imageUrl});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maharashtra Top Places',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopPlacesPage(),
    );
  }
}

class TopPlacesPage extends StatelessWidget {
  final List<Place> places = [
    Place(
      name: 'Ajanta Caves',
      description:
      'The Ajanta Caves are rock-cut cave monuments dating from the 2nd century BCE, containing paintings and sculptures considered to be masterpieces of Buddhist religious art.',
      imageUrl:
      'https://th.bing.com/th/id/R.e4a8c84d06c5dc9ed9be372dfc04a34e?rik=01iXi01LU8OUtQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f-dn49p7CZ1KE%2fUylF464c-qI%2fAAAAAAAAADM%2fTLxgf3bzgtU%2fs1600%2fAjantaChait.jpg&ehk=XylLfzlWdxj2Cj76BCuB7bScB9W94QLkG88mnMnpwIk%3d&risl=&pid=ImgRaw&r=0',
    ),
    Place(
      name: 'Ellora Caves',
      description:
      'The Ellora Caves are a UNESCO World Heritage Site located in the Aurangabad district of Maharashtra, India. They are one of the largest rock-cut monastery-temple cave complexes in the world, featuring Hindu, Buddhist, and Jain monuments, and artwork.',
      imageUrl:
      'https://www.tripsavvy.com/thmb/O4gc7eCMFp_Zpo6XsaGez_QucGg=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-157567820-10f9df64f478417595a13a4cb72af7a9.jpg',
    ),
    Place(
      name: 'Gateway of India',
      description:
      'The Gateway of India is an arch-monument built in the early 20th century in the city of Mumbai, Maharashtra, India. It was erected to commemorate the landing of King George V and Queen Mary at Apollo Bunder on their visit to India in 1911.',
      imageUrl:
      'https://wallpapercave.com/wp/wp4646412.jpg',
    ),
    Place(
      name: 'Shaniwar Wada',
      description:
      'Shaniwar Wada is a historical fortification in the city of Pune in Maharashtra, India. Built in 1732, it was the seat of the Peshwas of the Maratha Empire until 1818 when the Peshwas lost control to the British East India Company after the Third Anglo-Maratha War.',
      imageUrl:
      'https://th.bing.com/th/id/R.d0179915561d962303d01b27780827a2?rik=714qptRyzQIRgg&riu=http%3a%2f%2fwww.thehistoryhub.com%2fwp-content%2fuploads%2f2016%2f11%2fShaniwar-Wada.jpg&ehk=w6%2fCQzA2uNtJOvp8PixkR36x6YeFw%2fEL8dPHhvNpUU4%3d&risl=&pid=ImgRaw&r=0',
    ),
    Place(
      name: 'Elephanta Caves',
      description:
      'The Elephanta Caves are a UNESCO World Heritage Site and a collection of cave temples predominantly dedicated to the Hindu god Shiva. They are located on Elephanta Island, or Gharapuri in Mumbai Harbour, 10 kilometres to the east of the city of Mumbai in the Indian state of Maharashtra.',
      imageUrl:
      'https://www.adotrip.com/public/images/areas/5c53e4197796e-Elephanta%20Caves%20Tours.jpg',
    ),
    Place(
      name: 'Siddhivinayak Temple',
      description:
      'The Siddhivinayak Temple is a Hindu temple dedicated to Lord Shri Ganesh. It is located in Prabhadevi, Mumbai, Maharashtra, India. It was originally built by Laxman Vithu and Deubai Patil on 19 November 1801.',
      imageUrl:
      'https://th.bing.com/th/id/OIP.oouSzt-MUzgS15kiWq6BgQHaFj?rs=1&pid=ImgDetMain',
    ),
    Place(
      name: 'Bibi Ka Maqbara',
      description:
      'The Bibi Ka Maqbara is a tomb located in Aurangabad, Maharashtra, India. It was commissioned in 1660 by the Mughal emperor Aurangzeb in the memory of his first wife and chief consort Dilras Banu Begum.',
      imageUrl:
      'https://th.bing.com/th/id/OIP.oouSzt-MUzgS15kiWq6BgQHaFj?rs=1&pid=ImgDetMain',
    ),
    Place(
      name: 'Sinhagad Fort',
      description:
      'Sinhagad is a hill fortress located at around 35 km southwest of the city of Pune, India. Some of the information available at this fort suggests that the fort could have been built 2000 years ago.',
      imageUrl:
      'https://4.bp.blogspot.com/-x9eavkiU3hc/VveipOK1ZSI/AAAAAAAACkY/G1DU6qezALoHcIiSdU0t-hWjnkSTtbkEw/s1600/sinhagad-fort-info.jpg',
    ),
    Place(
      name: 'Malshej Ghat',
      description:
      'Malshej Ghat is a mountain pass nestled in the Western Ghats of Maharashtra, India. It is known for its rugged hills, waterfalls, and misty valleys, making it a popular destination for nature lovers and trekkers.',
      imageUrl:
      'https://www.trawell.in/admin/images/upload/86351572Nane_Ghat.jpg',
    ),
    Place(
      name: 'Chhatrapati Shivaji Terminus',
      description:
      'Chhatrapati Shivaji Maharaj Terminus (CSMT) formerly known as Victoria Terminus is a historic railway station and a UNESCO World Heritage Site in Mumbai, Maharashtra, India which serves as the headquarters of the Central Railways.',
      imageUrl:
      'https://planetofhotels.com/guide/sites/default/files/styles/paragraph__hero_banner__hb_image__1880bp/public/hero_banner/station.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Top Places in Maharashtra'),
      // ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: places.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceDetailPage(place: places[index]),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.network(
                        places[index].imageUrl,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              places[index].name,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)
                            ),
                            SizedBox(height: 8),
                            Text(
                              places[index].description,
                              style: TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class PlaceDetailPage extends StatelessWidget {
  final Place place;

  PlaceDetailPage({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              place.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              place.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
