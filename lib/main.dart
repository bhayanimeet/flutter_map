import 'package:flutter/material.dart';
import 'package:flutter_map/views/screens/detail.dart';
import 'package:flutter_map/views/screens/map.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const CEO(),
        'detail':(context) => const Detail(),
        'map': (context) => const Location(),
      },
    ),
  );
}

class CEO extends StatefulWidget {
  const CEO({Key? key}) : super(key: key);

  @override
  State<CEO> createState() => _CEOState();
}

class _CEOState extends State<CEO> {
  List<Map<String, dynamic>> myData = [
    {
      'link': "https://logos-world.net/wp-content/uploads/2020/04/Amazon-Logo.png",
      'name': "Amazon",
      'text': "Jeff Bezoz",
      'lat': 0,
      'long': 0,
      'image': "https://static.independent.co.uk/s3fs-public/thumbnails/image/2020/01/23/13/jeff-bezos.jpg?width=982&height=726",
      'detail': '''Amazon.com, Inc. is an American multinational technology company focusing on e-commerce, cloud computing, online advertising, digital streaming, and artificial intelligence. It has been referred to as "one of the most influential economic and cultural forces in the world", and is one of the world's most valuable brands. It is one of the Big Five American information technology companies, alongside Alphabet (Google), Apple, Meta (Facebook), and Microsoft.Amazon was founded by Jeff Bezos from his garage in Bellevue, Washington, on July 5, 1994. Initially an online marketplace for books, it has expanded into a multitude of product categories, a strategy that has earned it the moniker The Everything Store. It has multiple subsidiaries including Amazon Web Services (cloud computing), Zoox (autonomous vehicles), Kuiper Systems (satellite Internet), and Amazon Lab126 (computer hardware R&D). Its other subsidiaries include Ring, Twitch, IMDb, and Whole Foods Market.''',
    },
    {
      'link': "https://tse2.mm.bing.net/th?id=OIP.CsSRV05923HcLKtlqLtQHwHaIf&pid=Api&P=0",
      'name': "Apple",
      'text': "Tim Cook",
      'lat': 37.33182,
      'long': -122.03118,
      'image': "https://tse1.mm.bing.net/th?id=OIP.Mppyyk2ZUAsbPJHPLfSdCAHaId&pid=Api&P=0",
      'detail' : '''Apple Inc. is an American multinational technology company headquartered in Cupertino, California, United States. Apple is the largest technology company by revenue (totaling US 365.8 billion in 2021) and, as of June 2022, is the world's biggest company by market capitalization, the fourth-largest personal computer vendor by unit sales and second-largest mobile phone manufacturer. It is one of the Big Five American information technology companies, alongside Alphabet (Google), Amazon, Meta (Facebook), and Microsoft. Apple was founded as Apple Computer Company on April 1, 1976, by Steve Wozniak, Steve Jobs and Ronald Wayne to develop and sell Wozniak's Apple I personal computer. It was incorporated by Jobs and Wozniak as Apple Computer, Inc. in 1977 and the company's next computer, the Apple II, became a best seller and one of the first mass-produced microcomputers. Apple went public in 1980 to instant financial success.''',
    },
    {
      'link': "https://tse3.mm.bing.net/th?id=OIP.05dXW_KuEM1nSxds2XmrugHaJH&pid=Api&P=0",
      'name': "Microsoft",
      'text': "Satya Nadella",
      'lat': 47.6371,
      'long': -122.1237,
      'image': "https://tse1.mm.bing.net/th?id=OIP.O1OCZOW25Ge43w7s2LNAGwHaF_&pid=Api&P=0",
      'detail' : '''Microsoft Corporation is an American multinational technology corporation producing computer software, consumer electronics, personal computers, and related services. Headquartered at the Microsoft campus in Redmond, Washington, Microsoft's best-known software products are the Windows line of operating systems, the Microsoft Office suite, and the Internet Explorer and Edge web browsers. Its flagship hardware products are the Xbox video game consoles and the Microsoft Surface lineup of touchscreen personal computers. Microsoft ranked No. 21 in the 2020 Fortune 500 rankings of the largest United States corporations by total revenue; it was the world's largest software maker by revenue as of 2019. It is one of the Big Five American information technology companies, alongside Alphabet (Google), Amazon, Apple, and Meta (Facebook).Microsoft was founded by Bill Gates and Paul Allen on April 4, 1975, to develop and sell BASIC interpreters for the Altair 8800.''',
    },
    {
      'link': "https://tse3.mm.bing.net/th?id=OIP.SqbBjKe5e8KkrIWY7d6obQHaHa&pid=Api&P=0",
      'name': "Google",
      'text': "Sundar Pichai",
      'lat': 37.419857,
      'long': 122.078827,
      'image': "https://tse1.mm.bing.net/th?id=OIP.XAHuBrTYfRrykmfF00t78QHaGL&pid=Api&P=0",
      'detail': '''Google LLC is an American multinational technology company focusing on search engine technology, online advertising, cloud computing, computer software, quantum computing, e-commerce, artificial intelligence, and consumer electronics. It has been referred to as "the most powerful company in the world"[10] and one of the world's most valuable brands due to its market dominance, data collection, and technological advantages in the area of artificial intelligence. Its parent company Alphabet is considered one of the Big Five American information technology companies, alongside Amazon, Apple, Meta, and Microsoft.Google was founded on September 4, 1998, by Larry Page and Sergey Brin while they were PhD students at Stanford University in California. Together they own about 14% of its publicly listed shares and control 56% of its stockholder voting power through super-voting stock. The company went public via an initial public offering (IPO) in 2004. In 2015, Google was reorganized as a wholly owned subsidiary of Alphabet Inc.''',
    },
    {
      'link': "https://tse3.mm.bing.net/th?id=OIP.EDxym19SGPWpBwLhlWr05AAAAA&pid=Api&P=0",
      'name': "Wipro",
      'text': "Thierry Delaporte",
      'lat': 12.9716,
      'long': 77.5946,
      'image': "https://tse1.mm.bing.net/th?id=OIP.8zX1WhawYJc2DQiLpvYtuAHaEK&pid=Api&P=0",
      'detail': '''Wipro Limited (formerly, Western India Palm Refined Oils Limited) is an Indian multinational corporation that provides information technology, consulting and business process services. Thierry Delaporte is serving as CEO and managing director of Wipro since July 2020. Wipro's capabilities range across cloud computing, cyber security, digital transformation, artificial intelligence, robotics, data analytics, and other technology consulting services to customers in 167 countries. The company was incorporated on 29 December 1945 in Amalner, India, by Mohamed Premji as Western India Vegetable Products Limited, later abbreviated to Wipro. It was initially set up as a manufacturer of vegetable and refined oils under the trade names of Kisan, Sunflower, and Camel. In 1966, after Mohamed Premji's death, his son Azim Premji took over Wipro as its chairman at the age of 21.During the 1970s and 1980s, the company shifted its focus to new opportunities in the IT and computing industry, which was at a nascent stage in India at the time.''',
    },
    {
      'link': "https://tse4.mm.bing.net/th?id=OIP.sD5x6U8hIAj80ihQ2r3cPQHaGA&pid=Api&P=0",
      'name': "Infosys",
      'text': "Salil Parekh",
      'lat': 12.85068,
      'long': 77.665558,
      'image': "https://images.newindianexpress.com/uploads/user/imagelibrary/2020/2/14/w900X450/PTI2_12_2020_000125A.jpg",
      'detail': '''Infosys Limited is an Indian multinational information technology company that provides business consulting, information technology and outsourcing services. The company was founded in Pune and is headquartered in Bangalore. Infosys is the second-largest Indian IT company, after Tata Consultancy Services, by 2020 revenue figures, and the 602nd largest public company in the world, according to the Forbes Global 2000 ranking. On 24 August 2021, Infosys became the fourth Indian company to reach \$ 100 billion in market capitalization. Infosys was founded by seven engineers in Pune, Maharashtra, India. Its initial capital was \$250. It was registered as Infosys Consultants Private Limited on 2 July 1981. In 1983, it relocated to Bangalore, Karnataka. The company changed its name to Infosys Technologies Private Limited in April 1992 and to Infosys Technologies Limited when it became a public limited company in June 1992. It was renamed Infosys Limited in June 2011.''',
    },
    {
      'link': "https://www.freepngimg.com/thumb/logo/69792-logo-computer-facebook-tobacco-icons-free-clipart-hq.png",
      'name': "Facebook",
      'text': "Mark Zuckerberg",
      'lat': 37.484135,
      'long':  -122.148620,
      'image': "https://pngimg.com/uploads/mark_zuckerberg/mark_zuckerberg_PNG24.png",
      'detail' : '''Facebook is an online social media and social networking service owned by American company Meta Platforms. Founded in 2004 by Mark Zuckerberg with fellow Harvard College students and roommates Eduardo Saverin, Andrew McCollum, Dustin Moskovitz, and Chris Hughes, its name comes from the face book directories often given to American university students. Membership was initially limited to Harvard students, gradually expanding to other North American universities and, since 2006, anyone over 13 years old. As of July 2022, Facebook claimed 2.93 billion monthly active users, and ranked third worldwide among the most visited websites as of July 2022. It was the most downloaded mobile app of the 2010s. Facebook can be accessed from devices with Internet connectivity, such as personal computers, tablets and smartphones.After registering, users can create a profile revealing information about themselves.They can post text, photos and multimedia which are shared with any other users who have agreed to be their "friend" or, with different privacy settings, publicly.''',
    },
    {
      'link': "https://tse2.mm.bing.net/th?id=OIP.q__jb5o7z07STPJVnwdkNQHaHa&pid=Api&P=0",
      'name': "Tesla",
      'text': "Elon Musk",
      'lat': 30.222296,
      'long': -97.617134,
      'image': "https://tse2.mm.bing.net/th?id=OIP.xzthzbwaJE8O13zjn78sAQHaFj&pid=Api&P=0",
      'detail' : '''Tesla, Inc. is an American multinational automotive, artificial intelligence, and clean energy company headquartered in Austin, Texas. Tesla designs and manufactures electric vehicles (electric cars and trucks), battery energy storage from home to grid-scale, solar panels and solar roof tiles, and related products and services. Tesla is one of the world's most valuable companies and is, as of 2023, the world's most valuable automaker. In 2021, the company had the most worldwide sales of battery electric vehicles and plug-in electric vehicles, capturing 21% of the battery-electric (purely electric) market and 14% of the plug-in market (which includes plug-in hybrids). Through its subsidiary Tesla Energy, the company develops and is a major installer of photovoltaic systems in the United States. Tesla Energy is also one of the largest global suppliers of battery energy storage systems, with 3.99 gigawatt-hours (GWh) installed in 2021. Tesla was incorporated in July 2003 by Martin Eberhard and Marc Tarpenning as Tesla Motors.''',
    },
    {
      'link': "https://logodownload.org/wp-content/uploads/2019/10/reliance-industries-logo-1.png",
      'name': "Reliance",
      'text': "Mukesh ambani",
      'lat': 23.09164766840129,
      'long': 72.67183485703626,
      'image': "https://tse4.mm.bing.net/th?id=OIP.9ppTJGxhac8ZJ0nDYpi0ZQHaE8&pid=Api&P=0",
      'detail' : '''Reliance Industries Limited is an Indian multinational conglomerate company, headquartered in Mumbai. It has diverse businesses including energy, petrochemicals, natural gas, retail, telecommunications, mass media, and textiles. Reliance is one of the most profitable companies in India, the largest publicly traded company in India by market capitalisation, and the largest company in India as measured by revenue. It is also one of the largest employers in India, with over 300,000 employees in the world. The company is ranked 100th on the Fortune Global 500 list of the world's biggest corporations as of 2022. Reliance continues to be India's largest exporter, accounting for 7% of India's total merchandise exports and it has access to markets in over 100 countries. Reliance is responsible for almost 5% of the Government of India's total revenue from customs and excise duty.''',
    },
    {
      'link': "https://tse2.mm.bing.net/th?id=OIP.xv6tuSAy7OniQcFQ42EjygHaFQ&pid=Api&P=0",
      'name': "Sony",
      'text': "Kenichiro Yoshida",
      'lat': 35.6721,
      'long': 139.7632,
      'image': "https://tse1.mm.bing.net/th?id=OIP.lQZm9HuCwB4eC38ijt1ivwHaFj&pid=Api&P=0",
      'detail' : '''Sony Group Corporation (also known as Sony Corporation, commonly known as Sony, stylized as SONY and abbreviated as Sony Group Corp.) is a Japanese multinational conglomerate corporation headquartered in Minato, Tokyo, Japan. As a major technology company, it operates as one of the world's largest manufacturers of consumer and professional electronic products, the largest video game console company and the largest video game publisher. Through Sony Entertainment Inc, it is one of the largest music companies (largest music publisher and second largest record label) and the third largest film studio, making it one of the most comprehensive media companies. It is the largest technology and media conglomerate in Japan. It is also recognized as the most cash-rich Japanese company, with net cash reserves of ¥2 trillion. Sony, with its 55 percent market share in the image sensor market, is the largest manufacturer of image sensors, the second largest camera manufacturer, and is among the semiconductor sales leaders.''',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MNC Company"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: myData
              .map(
                (e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(7),
                    onTap: (){
                      setState((){
                        Navigator.pushNamed(context, 'detail',arguments: e);
                      });
                    },
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Image.network(e['link'],height: 65),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e['name'],
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      e['text'],
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.shade500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: CircleAvatar(
                                  maxRadius: 32,
                                  backgroundColor: Colors.grey.shade200,
                                  backgroundImage: NetworkImage(e['image'],),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}
