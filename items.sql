CREATE TABLE `t_listing` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `imageurl` text NOT NULL,
  `date` date NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `t_listing`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `t_listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

INSERT INTO `t_listing` (`id`, `title`, `description`, `imageurl`, `date`) VALUES
(1, 'Leh-Ladakh Memories', 'Ladakh (land of high passes) is a region in the Indian state of Jammu and Kashmir that currently extends from the Kunlun mountain range[3] to the main Great Himalayas to the south, inhabited by people of Indo-Aryan and Tibetan descent. It is one of the most sparsely populated regions in Jammu and Kashmir and its culture and history are closely related to that of Tibet. Ladakh is renowned for its remote mountain beauty and culture.

Historically, the region included the Baltistan (Baltiyul) valleys (now mostly in Pakistan), the entire upper Indus Valley, the remote Zanskar, Lahaul and Spiti to the south, much of Ngari including the Rudok region and Guge in the east, Aksai Chin in the northeast (extending to the Kun Lun Mountains), and the Nubra Valley to the north over Khardong La in the Ladakh Range. Contemporary Ladakh borders Tibet to the east, the Lahaul and Spiti regions to the south, the Vale of Kashmir, Jammu and Baltiyul regions to the west, and the southwest corner of Xinjiang across the Karakoram Pass in the far north.', 'leh.jpg', '2014-06-01'),
(2, 'Bali', 'Bali (Balinese:, Indonesian: Pulau Bali, Provinsi Bali) is an island and province of Indonesia with the biggest Hindu population. The province includes the island of Bali and a few smaller neighbouring islands, notably Nusa Penida, Nusa Lembongan and Nusa Ceningan. It is located at the westernmost end of the Lesser Sunda Islands, with Java to the west and Lombok to the east. Its capital, Denpasar, is located in the southern part of the island.

With a population of 3,890,757 in the 2010 census,[6] and 4,225,000 as of January 2014,[7] the island is home to most of Indonesias Hindu minority. According to the 2010 Census, 83.5% of Balis population adhered to Balinese Hinduism,[2] followed by 13.4% Muslim, Christianity at 2.5% and Buddhism 0.5%.[8]

Bali is a popular tourist destination, which has seen a significant rise in tourists since the 1980s.[9] Tourism-related business makes up 80%Sikkim  is a state in northeast India. It borders Tibet in the north and northeast, Bhutan in the east, Nepal in the west, and West Bengal in the south. Sikkim is also located close to Indias Siliguri Corridor near Bangladesh. Sikkim is the least populous and second smallest among the Indian states. A part of the Eastern Himalaya, Sikkim is notable for its biodiversity, including alpine and subtropical climates, as well as being a host to Kanchenjunga, the highest peak in India and third highest on Earth. Sikkims capital and largest city is Gangtok. Almost 35% of of its economy.[10] It is renowned for its highly developed arts, including traditional and modern dance, sculpture, painting, leather, metalworking and music. The Indonesian International Film Festival is held every year in Bali. In March 2017, TripAdvisor named Bali as the worlds top destination in its Travellers Choice award.[11]', 'bali.jpg', '2014-06-01'),
(3, 'Sikkim', 'Sikkim  is a state in northeast India. It borders Tibet in the north and northeast, Bhutan in the east, Nepal in the west, and West Bengal in the south. Sikkim is also located close to Indias Siliguri Corridor near Bangladesh. Sikkim is the least populous and second smallest among the Indian states. A part of the Eastern Himalaya, Sikkim is notable for its biodiversity, including alpine and subtropical climates, as well as being a host to Kanchenjunga, the highest peak in India and third highest on Earth. Sikkims capital and largest city is Gangtok. Almost 35% of the state is covered by the Khangchendzonga National Park.[7]

The Kingdom of Sikkim was founded by the Namgyal dynasty in the 17th century. It was ruled by a Buddhist priest-king known as the Chogyal. It became a princely state of British India in 1890. After 1947, Sikkim continued its protectorate status with the republic of India. It enjoyed the highest literacy rate and per capita income among Himalayan states. In 1973, anti-royalist riots took place in front of the Chogyals palace. In 1975, the monarchy was deposed by the people. A referendum in 1975 led to Sikkim joining India as its 22nd state.[8]', 'sikkim.jpg','2014-06-01'),
(6, 'Spiti', '
Key Gompa, a Vajrayana Buddhist monastery in Spiti Valley, Himachal Pradesh.
Spiti Valley is a cold desert mountain valley located high in the Himalayas in the north-eastern part of the northern Indian state of Himachal Pradesh. The name "Spiti" means "The Middle Land", i.e. the land between Tibet and India.[1]

Local population follow Vajrayana Buddhism similar to that found in the nearby Tibet and Ladakh regions. The valley and surrounding region is one of the least populated regions in India and is the gateway to the northernmost reaches of the nation. Along the northern route from Manali, Himachal Pradesh or Keylong via the Rohtang Pass or Kunzum Pass respectively, the valley lies in the North Eastern section of the Indian state Himachal Pradesh, and forms part of the Lahaul and Spiti district. The sub-divisional headquarters (capital) is Kaza, Himachal Pradesh[2] which is situated along the Spiti River at an elevation of about 12,500 feet (3,800 m) above mean sea level.', 'spiti.jpg',  '2014-06-01'),
(7, 'Thailand', 'Thailand , officially the Kingdom of Thailand and formerly known as Siam, is a country at the center of the Southeast Asian Indochinese peninsula composed of 76 provinces. At 513,120 km2 (198,120 sq mi) and over 68 million people, Thailand is the worlds 50th largest country by total area and the 21st-most-populous country. The capital and largest city is Bangkok, a special administrative area. Thailand is bordered to the north by Myanmar and Laos, to the east by Laos and Cambodia, to the south by the Gulf of Thailand and Malaysia, and to the west by the Andaman Sea and the southern extremity of Myanmar. Its maritime boundaries include Vietnam in the Gulf of Thailand to the southeast, and Indonesia and India on the Andaman Sea to the southwest. Although nominally a constitutional monarchy and parliamentary democracy, the most recent coup in 2014 established a de facto military dictatorship.', 'thailand.jpg', '2014-06-01 01:13:45'),
(8, 'Singapore', 'Singapore officially the Republic of Singapore (Malay: Republik Singapura; Chinese:  Tamil:), is a sovereign city-state and island country in Southeast Asia. It lies one degree (137 kilometres or 85 miles) north of the equator, at the southern tip of the Malay Peninsula, with Indonesias Riau Islands to the south and Peninsular Malaysia to the north. Singapores territory consists of one main island along with 62 other islets. Since independence, extensive land reclamation has increased its total size by 23% (130 square kilometres or 50 square miles). The country is known for its transition from third world to first world in a single generation, under the leadership of its founding father, Lee Kuan Yew.[9]

Stamford Raffles founded colonial Singapore in 1819 as a trading post of the British East India Company. After the companys collapse in 1858, the islands were ceded to the British Raj as a crown colony. During the Second World War, Singapore was occupied by Japan. It gained independence from the UK in 1963 by federating with other former British territories to form Malaysia, but separated two years later over ideological differences, becoming a sovereign nation in 1965. After early years of turbulence and despite lacking natural resources and a hinterland, the nation developed rapidly as an Asian Tiger economy, based on external trade and its workforce.', 'singapore.jpg', '2014-06-01'),
(9, 'Malaysia', 'Malaysia is a federal constitutional monarchy in Southeast Asia. It consists of 13 states and three federal territories, separated by the South China Sea into two similarly sized regions, Peninsular Malaysia and Malaysian Borneo. Peninsular Malaysia shares a land and maritime border with Thailand in the north and maritime borders with Singapore in the south, Vietnam in the northeast, and Indonesia in the west. East Malaysia shares land and maritime borders with Brunei and Indonesia and a maritime border with the Philippines and Vietnam. Kuala Lumpur is the national capital and largest city while Putrajaya is the seat of federal government. With a population of over 30 million, Malaysia is the worlds 44th most populous country. The southernmost point of continental Eurasia, Tanjung Piai, is in Malaysia. In the tropics, Malaysia is one of 17 megadiverse countries, with large numbers of endemic species.', 'malaysia.jpg', '2014-06-01');

CREATE TABLE `t_users` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,  
  `password` varchar(256) NOT NULL,
  `description` VARCHAR(256) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `t_users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `t_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;