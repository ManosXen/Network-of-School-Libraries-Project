use school_libraries;

INSERT INTO library (school_name, city, street_name, zip_code, email, principal_first_name, principal_last_name)
VALUES
    ('1st Primary School of Athens', 'Athens', 'Agiou Konstantinou Street', '11635', '1stprimaryathens@example.com', 'Maria', 'Papadopoulou'),
    ('6th Gymnasium of Thessaloniki', 'Thessaloniki', 'Konstantinoupoleos Street', '54630', '6thgymnasiumthess@example.com', 'Kostis', 'Raptopoulos'),
    ('13th High School of Patras', 'Patras', 'Michalakopoulou Street', '26223', '13thhighpatras@example.com', 'Eleni', 'Papadopoulou'),
    ('1st High School of Agios Nikolaos', 'Agios Nikolaos', 'EO Irakliou Agiou Nikolaou 143', '72100', '19thhighheraklion@example.com', 'Nikos', 'Apostolakis'),
    ('22nd Primary School of Thessaloniki', 'Thessaloniki', 'Agias Theodoras Street', '54634', '22ndprimarythess@example.com', 'Iordanis', 'Georgiadis');

INSERT INTO library_phone (phone_number, school_id)
VALUES
    ('2101234567', 1),
    ('2319876543', 2),
    ('2109876543', 3),
    ('2612345678', 4),
    ('2314567890', 5),
    ('2105555555', 1),
    ('2106666666', 1),
    ('2317777777', 2),
    ('2318888888', 4);


INSERT INTO book (ISBN, title, publisher, page_number, book_language, summary, cover_image)
VALUES 
(
    '9780544003415',
    'The Lord of the Rings',
    'Houghton Mifflin',
    1178,
    'English',
    'The Lord of the Rings is an epic fantasy novel that takes place in the fictional world of Middle-earth.',
    'https://covers.openlibrary.org/b/isbn/9780544003415-L.jpg'
),
(
    '9780141439518',
    'Pride and Prejudice',
    'Penguin Classics',
    432,
    'English',
    'Pride and Prejudice is a classic novel that explores themes of love, reputation, and social class in 19th-century England.',
    'https://covers.openlibrary.org/b/isbn/9780141439518-L.jpg'
),
(
    '9780451524935',
    '1984',
    'Signet Classics',
    328,
    'English',
    '1984 is a dystopian novel that depicts a totalitarian society and explores themes of government surveillance and thought control.',
    'https://covers.openlibrary.org/b/isbn/9780451524935-L.jpg'
),
(
    '9780061120084',
    'To Kill a Mockingbird',
    'Harper Perennial Modern Classics',
    336,
    'English',
    'To Kill a Mockingbird is a classic novel set in the Deep South during the 1930s, exploring themes of racial injustice and the loss of innocence.',
    'https://covers.openlibrary.org/b/isbn/9780061120084-L.jpg'
),
(
    '9780743273565',
    'The Great Gatsby',
    'Scribner',
    180,
    'English',
    'The Great Gatsby is a novel that portrays the Jazz Age in America and delves into themes of wealth, love, and the American Dream.',
    'https://covers.openlibrary.org/b/isbn/9780743273565-L.jpg'
),
(
    '9780684801469',
    'The Old Man and the Sea',
    'Scribner',
    128,
    'English',
    'The Old Man and the Sea is a short novel that tells the story of an aging Cuban fisherman and his battle with a giant marlin.',
    'https://covers.openlibrary.org/b/isbn/9780684801469-L.jpg'
),
(
    '9780545010221',
    'Harry Potter and the Sorcerer\'s Stone',
    'Scholastic',
    309,
    'English',
    'The first book in the Harry Potter series, where a young wizard named Harry Potter discovers his magical abilities and begins his journey at Hogwarts School of Witchcraft and Wizardry.',
    'https://covers.openlibrary.org/b/isbn/9780545010221-L.jpg'
),
(
    '9780439358071',
    'Harry Potter and the Order of the Phoenix',
    'Scholastic',
    870,
    'English',
    'In the fifth book of the Harry Potter series, Harry faces challenges as he prepares for the coming battle against Lord Voldemort and the Death Eaters.',
    'https://covers.openlibrary.org/b/isbn/9780439358071-L.jpg'
),
(
    '9781416570868',
    'The Da Vinci Code',
    'Doubleday',
    454,
    'English',
    'A gripping mystery novel that follows symbologist Robert Langdon as he unravels a series of clues and secrets hidden in works of art, architecture, and religious symbols.',
    'https://covers.openlibrary.org/b/isbn/9781416570868-L.jpg'
),
(
    '9781501142970',
    'The Shining',
    'Doubleday',
    447,
    'English',
    'A psychological horror novel about a writer and his family who become the winter caretakers of an isolated hotel, where supernatural forces and the hotel\'s dark history begin to take a toll on their sanity.',
    'https://covers.openlibrary.org/b/isbn/9781501142970-L.jpg'
),
(
    '9780062073501',
    'Murder on the Orient Express',
    'Collins Crime Club',
    256,
    'English',
    'A classic detective novel featuring renowned detective Hercule Poirot, who must solve a murder that occurs aboard the luxurious Orient Express, trapped by a snowstorm.',
    'https://covers.openlibrary.org/b/isbn/9780062073501-L.jpg'
),
(
    '9781501173219',
    'Educated: A Memoir',
    'Random House',
    400,
    'English',
    'A powerful memoir by Tara Westover, who grew up in a strict and abusive household in rural Idaho but eventually escaped to pursue education and discover her own path in life.',
    'https://covers.openlibrary.org/b/isbn/9781501173219-L.jpg'
),
(
    '9781400064168',
    'The Help',
    'Penguin Group',
    464,
    'English',
    'Set in 1960s Mississippi, this novel by Kathryn Stockett tells the story of African American maids working in white households and the complex relationships they form in the midst of racial discrimination.',
    'https://covers.openlibrary.org/b/isbn/9781400064168-L.jpg'
),
(
    '9780061120085',
    'The Alchemist',
    'HarperOne',
    208,
    'English',
    'A philosophical novel by Paulo Coelho, following the journey of a young Andalusian shepherd boy named Santiago as he seeks his personal legend and learns important life lessons.',
    'https://covers.openlibrary.org/b/isbn/9780061120085-L.jpg'
),
(
    '9780525952662',
    'The Nightingale',
    'St. Martin\'s Press',
    440,
    'English',
    'A historical fiction novel by Kristin Hannah, set in France during World War II. It follows the lives of two sisters and their experiences of love, loss, and bravery in the face of the Nazi occupation.',
    'https://covers.openlibrary.org/b/isbn/9780525952662-L.jpg'
),
(
    '9781501175565',
    'Before We Were Strangers',
    'Atria Books',
    320,
    'English',
    'A contemporary romance novel by Renée Carlino, exploring the themes of love, loss, and second chances. It tells the story of a man and a woman who reconnect after fifteen years and rediscover their connection.',
    'https://covers.openlibrary.org/b/isbn/9781501175565-L.jpg'
),
(
    '9780525501220',
    'Kafka on the Shore',
    'Alfred A. Knopf',
    480,
    'English',
    'A surreal novel by Haruki Murakami, blending magical realism, mystery, and coming-of-age themes. It follows the parallel stories of a teenage runaway and an old man on a quest for lost cats.',
    'https://covers.openlibrary.org/b/isbn/9780525501220-L.jpg'
),
(
    '9780007356348',
    'Americanah',
    'Fourth Estate',
    496,
    'English',
    'A compelling novel by Chimamanda Ngozi Adichie, exploring themes of race, identity, and love. It tells the story of a young Nigerian woman who immigrates to the United States and navigates through cultural differences and personal growth.',
    'https://covers.openlibrary.org/b/isbn/9780007356348-L.jpg'
),
(
    '9781501160790',
    'A Man Called Ove',
    'Washington Square Press',
    368,
    'English',
    'A heartwarming novel by Fredrik Backman, portraying the life of an elderly man named Ove, who finds unexpected connections and renewed purpose when new neighbors enter his life.',
    'https://covers.openlibrary.org/b/isbn/9781501160790-L.jpg'
),
(
    '9780735224292',
    'Little Fires Everywhere',
    'Penguin Press',
    352,
    'English',
    'A gripping novel by Celeste Ng, exploring themes of motherhood, identity, and privilege. Set in the 1990s, it follows the intertwined lives of two families and the secrets that unravel in their seemingly perfect suburban community.',
    'https://covers.openlibrary.org/b/isbn/9780735224292-L.jpg'
),
(
    '9781501168802',
    'The Woman in Cabin 10',
    'Gallery/Scout Press',
    352,
    'English',
    'A thrilling mystery novel by Ruth Ware, centered around a travel journalist who witnesses a crime on a luxury cruise. As she investigates, she becomes entangled in a web of secrets and danger.',
    'https://covers.openlibrary.org/b/isbn/9781501168802-L.jpg'
),
(
    '9780857521353',
    'The Girl on the Train',
    'Doubleday',
    336,
    'English',
    'A gripping psychological thriller by Paula Hawkins, following the life of Rachel Watson, a troubled woman who becomes entangled in a missing person investigation. As she delves deeper into the mystery, her own secrets and memories unravel.',
    'https://covers.openlibrary.org/b/isbn/9780857521353-L.jpg'
),
(
    '9780765326355',
    'Mistborn',
    'Tor Books',
    672,
    'English',
    'A fantasy novel by Brandon Sanderson, set in a world where ash falls from the sky and a young thief discovers her unique magical abilities.',
    'https://covers.openlibrary.org/b/isbn/9780765326355-L.jpg'
),
(
    '9781501175466',
    'The Turn of the Key',
    'Gallery/Scout Press',
    384,
    'English',
    'A psychological thriller by Ruth Ware, featuring a nanny who becomes entangled in a haunting and mysterious occurrence at a remote Scottish mansion.',
    'https://covers.openlibrary.org/b/isbn/9781501175466-L.jpg'
),
(
    '9780553448122',
    'Artemis',
    'Crown Publishing Group',
    384,
    'English',
    'A science fiction novel by Andy Weir, following the adventures of a young smuggler on the Moon as she becomes involved in a dangerous conspiracy.',
    'https://covers.openlibrary.org/b/isbn/9780553448122-L.jpg'
),
(
    '9780307588364',
    'Gone Girl',
    'Crown Publishing Group',
    432,
    'English',
    'A psychological thriller by Gillian Flynn, centering around the disappearance of a woman and the suspicion falling on her husband, leading to a web of deceit and shocking revelations.',
    'https://covers.openlibrary.org/b/isbn/9780307588364-L.jpg'
),
(
    '9780062255655',
    'American Gods',
    'HarperCollins',
    624,
    'English',
    'A fantasy novel by Neil Gaiman, where gods from various mythologies exist and clash in modern-day America, as a recently released ex-convict named Shadow is caught in their power struggle.',
    'https://covers.openlibrary.org/b/isbn/9780062255655-L.jpg'
),
(
    '9780099448792',
    'Norwegian Wood',
    'Vintage Books',
    296,
    'English',
    'A coming-of-age novel by Haruki Murakami, exploring themes of love, loss, and nostalgia in 1960s Tokyo.',
    'https://covers.openlibrary.org/b/isbn/9780099448792-L.jpg'
),
(
    '9780525478812',
    'The Fault in Our Stars',
    'Dutton Books',
    313,
    'English',
    'A young adult novel by John Green, portraying the love story of two teenagers with cancer and their journey of self-discovery and acceptance.',
    'https://covers.openlibrary.org/b/isbn/9780525478812-L.jpg'
),
(
    '9780062457714',
    'The Catcher in the Rye',
    'Little, Brown and Company',
    234,
    'English',
    'A classic novel by J.D. Salinger, following the rebellious journey of teenager Holden Caulfield in New York City.',
    'https://covers.openlibrary.org/b/isbn/9780062457714-L.jpg'
),
(
    '9780525563235',
    'Becoming',
    'Crown Publishing Group',
    448,
    'English',
    'An intimate memoir by Michelle Obama, reflecting on her life, experiences, and role as the First Lady of the United States.',
    'https://covers.openlibrary.org/b/isbn/9780525563235-L.jpg'
),
(
    '9780345804358',
    'The Picture of Dorian Gray',
    'Penguin Classics',
    254,
    'English',
    'A Gothic novel by Oscar Wilde, exploring the pursuit of pleasure and the consequences of vanity through the story of a man who remains eternally young while his portrait ages.',
    'https://covers.openlibrary.org/b/isbn/9780345804358-L.jpg'
),
(
    '9780812988406',
    'The Underground Railroad',
    'Doubleday',
    320,
    'English',
    'A historical fiction novel by Colson Whitehead, depicting the journey of a young slave woman as she escapes from a Georgia plantation and seeks freedom through the Underground Railroad.',
    'https://covers.openlibrary.org/b/isbn/9780812988406-L.jpg'
),
(
    '9780679732259',
    'The Stranger',
    'Vintage International',
    123,
    'English',
    'A philosophical novel by Albert Camus, following the story of Meursault, a detached and apathetic Algerian man who becomes embroiled in a murder case.',
    'https://covers.openlibrary.org/b/isbn/9780679732259-L.jpg'
),
(
    '9781594633940',
    'The Goldfinch',
    'Little, Brown and Company',
    771,
    'English',
    'A coming-of-age novel by Donna Tartt, exploring themes of loss, art, and fate. It follows the life of a young man named Theo Decker after he survives a terrorist attack in an art museum.',
    'https://covers.openlibrary.org/b/isbn/9781594633940-L.jpg'
),
(
    '9780385349570',
    'All the Light We Cannot See',
    'Scribner',
    531,
    'English',
    'A historical fiction novel by Anthony Doerr, set during World War II. It tells the parallel stories of a blind French girl and a German boy whose lives eventually intersect.',
    'https://covers.openlibrary.org/b/isbn/9780385349570-L.jpg'
),
(
    '9780307277712',
    'The Kite Runner',
    'Riverhead Books',
    371,
    'English',
    'A novel by Khaled Hosseini, exploring themes of guilt, redemption, and friendship against the backdrop of Afghanistan\'s tumultuous history.',
    'https://covers.openlibrary.org/b/isbn/9780307277712-L.jpg'
),
(
    '9780812987114',
    'The Book Thief',
    'Knopf Books for Young Readers',
    552,
    'English',
    'A historical fiction novel by Markus Zusak, set in Nazi Germany. It follows a young girl named Liesel Meminger who steals books to share the power of words and storytelling.',
    'https://covers.openlibrary.org/b/isbn/9780812987114-L.jpg'
),
(
    '9781250178619',
    'The Great Alone',
    'St. Martin''s Press',
    435,
    'English',
    'The Great Alone is a novel by Kristin Hannah, set in the Alaskan wilderness and exploring themes of love, resilience, and survival.',
    'https://covers.openlibrary.org/b/isbn/9781250178619-L.jpg'
),
    (
        '9780553418026',
        'The Martian',
        'Broadway Books',
        387,
        'English',
        'The Martian is a science fiction novel written by Andy Weir.',
        'https://covers.openlibrary.org/b/isbn/9780553418026-L.jpg'
    ),
    (
        '9780765377142',
        'Mistborn: The Final Empire',
        'Tor Books',
        541,
        'English',
        'Mistborn: The Final Empire is a fantasy novel by Brandon Sanderson, the first book in the Mistborn trilogy.',
        'https://covers.openlibrary.org/b/isbn/9780765377142-L.jpg'
    ),
    (
        '9781609455739',
        'My Brilliant Friend',
        'Europa Editions',
        331,
        'English',
        'My Brilliant Friend is a novel by Elena Ferrante, the first book in the Neapolitan Novels series.',
        'https://covers.openlibrary.org/b/isbn/9781609455739-L.jpg'
    ),
    (
        '9780525520375',
        'There There',
        'Knopf',
        294,
        'English',
        'There There is a novel by Tommy Orange, exploring the experiences of Native Americans living in urban areas.',
        'https://covers.openlibrary.org/b/isbn/9780525520375-L.jpg'
    ),
    (
        '9780316556347',
        'Circe',
        'Little, Brown and Company',
        393,
        'English',
        'Circe is a mythological fiction novel by Madeline Miller, focusing on the life of the witch Circe.',
        'https://covers.openlibrary.org/b/isbn/9780316556347-L.jpg'
    ),
    (
        '9781616208684',
        'An American Marriage',
        'Algonquin Books',
        308,
        'English',
        'An American Marriage is a novel by Tayari Jones, exploring the effects of a wrongful conviction on a young couple.',
        'https://covers.openlibrary.org/b/isbn/9781616208684-L.jpg'
    ),
    (
        '9781250042763',
        'Six of Crows',
        'Henry Holt and Company',
        465,
        'English',
        'Six of Crows is a fantasy heist novel by Leigh Bardugo, set in the Grishaverse.',
        'https://covers.openlibrary.org/b/isbn/9781250042763-L.jpg'
    ),
    (
        '9780571347292',
        'Normal People',
        'Faber & Faber',
        288,
        'English',
        'Normal People is a novel by Sally Rooney, depicting the complex relationship between two Irish teenagers.',
        'https://covers.openlibrary.org/b/isbn/9780571347292-L.jpg'
    ),
	(
        '9781449486792',
        'Milk and Honey',
        'Andrews McMeel Publishing',
        204,
        'English',
        'Milk and Honey is a collection of poetry and prose by Rupi Kaur, addressing themes of love, loss, and healing.',
        'https://covers.openlibrary.org/b/isbn/9781449486792-L.jpg'
    ),
    (
        '9780735219113',
        'Where the Crawdads Sing',
        'G.P. Putnam\'s Sons',
        384,
        'English',
        'Where the Crawdads Sing is a novel by Delia Owens, following the story of a young girl living in the marshes of North Carolina.',
        'https://covers.openlibrary.org/b/isbn/9780735219113-L.jpg'
    ),
    (
        '9780399590504',
        'Educated',
        'Random House',
        334,
        'English',
        'Educated is a memoir by Tara Westover, recounting her journey from a remote mountain area to earning a PhD from Cambridge University.',
        'https://covers.openlibrary.org/b/isbn/9780399590504-L.jpg'
    ),
    (
        '9780307278783',
        'Interpreter of Maladies',
        'Mariner Books',
        198,
        'English',
        'Interpreter of Maladies is a collection of short stories by Jhumpa Lahiri, delving into the lives of Indian immigrants and their cultural experiences.',
        'https://covers.openlibrary.org/b/isbn/9780307278783-L.jpg'
    ),
    (
        '9780486284736',
        'Sense and Sensibility',
        'Dover Publications',
        384,
        'English',
        'Sense and Sensibility is a novel that follows the Dashwood sisters as they navigate love, heartbreak, and societal expectations.',
        'https://covers.openlibrary.org/b/isbn/9780486284736-L.jpg'
    ),
    (
        '9780143105428',
        'Emma',
        'Penguin Classics',
        474,
        'English',
        'Emma is a novel that portrays the matchmaking efforts and romantic entanglements of its young protagonist, Emma Woodhouse.',
        'https://covers.openlibrary.org/b/isbn/9780143105428-L.jpg'
    ),
    (
        '9780151010264',
        'Animal Farm',
        'Houghton Mifflin Harcourt',
        141,
        'English',
        'Animal Farm is an allegorical novella that satirizes the Russian Revolution and explores themes of totalitarianism, corruption, and power dynamics.',
        'https://covers.openlibrary.org/b/isbn/9780151010264-L.jpg'
    ),
    (
        '9780141393049',
        'Down and Out in Paris and London',
        'Penguin Classics',
        230,
        'English',
        'Down and Out in Paris and London is a semi-autobiographical work that chronicles Orwell\'s experiences of poverty and homelessness in the two cities.',
        'https://covers.openlibrary.org/b/isbn/9780141393049-L.jpg'
    ),
    (
        '9780141187761',
        'Homage to Catalonia',
        'Penguin Classics',
        320,
        'English',
        'Homage to Catalonia is Orwell\'s personal account of his experiences and observations during the Spanish Civil War.',
        'https://covers.openlibrary.org/b/isbn/9780141187761-L.jpg'
    ),
    (
        '9780141187396',
        'Keep the Aspidistra Flying',
        'Penguin Classics',
        297,
        'English',
        'Keep the Aspidistra Flying is a novel that explores the themes of money, class, and artistic integrity through the story of a struggling writer.',
        'https://covers.openlibrary.org/b/isbn/9780141187396-L.jpg'
    ),
    (
        '9780062409867',
        'Go Set a Watchman',
        'Harper',
        288,
        'English',
        'Go Set a Watchman is a novel set in the 1950s and serves as a sequel to To Kill a Mockingbird, featuring the adult Scout Finch returning to her hometown and grappling with societal changes.',
        'https://covers.openlibrary.org/b/isbn/9780062409867-L.jpg'
    ),
    (
        '9780684830421',
        'Tender Is the Night',
        'Scribner',
        400,
        'English',
        'Tender Is the Night is a novel that delves into themes of love, wealth, and the decline of the Jazz Age, following the lives of Dick and Nicole Diver in the French Riviera.',
        'https://covers.openlibrary.org/b/isbn/9780684830421-L.jpg'
    ),
    (
        '9780684800715',
        'A Farewell to Arms',
        'Scribner',
        332,
        'English',
        'A Farewell to Arms is a novel set during World War I and follows the love affair between an American ambulance driver and an English nurse. It examines the harsh realities of war and the complexities of love and loss.',
        'https://covers.openlibrary.org/b/isbn/9780684800715-L.jpg'
    ),
(
        '9780439554893',
        'Harry Potter and the Chamber of Secrets',
        'Scholastic',
        352,
        'English',
        'Harry Potter and the Chamber of Secrets is the second book in the Harry Potter series. It continues the adventure of Harry Potter as he investigates the mystery of the Chamber of Secrets and faces dark forces at Hogwarts.',
        'https://covers.openlibrary.org/b/isbn/9780439554893-L.jpg'
    ),
    (
        '9780439139601',
        'Harry Potter and the Prisoner of Azkaban',
        'Scholastic',
        448,
        'English',
        'Harry Potter and the Prisoner of Azkaban is the third book in the Harry Potter series. In this book, Harry Potter confronts Sirius Black, an escaped prisoner believed to be a follower of Lord Voldemort.',
        'https://covers.openlibrary.org/b/isbn/9780439139601-L.jpg'
    ),
    (
        '9780439554947',
        'Harry Potter and the Goblet of Fire',
        'Scholastic',
        734,
        'English',
        'Harry Potter and the Goblet of Fire is the fourth book in the Harry Potter series. It follows Harry Potters fourth year at Hogwarts School of Witchcraft and Wizardry, as he competes in the Triwizard Tournament and faces the growing threat of Lord Voldemort.',
        'https://covers.openlibrary.org/b/isbn/9780439554947-L.jpg'
    ),
    (
        '9780439358072',
        'Harry Potter and the Half-Blood Prince',
        'Scholastic',
        652,
        'English',
        'Harry Potter and the Half-Blood Prince is the sixth book in the Harry Potter series. It delves into the past of Lord Voldemort, explores the growing darkness in the wizarding world, and follows Harry Potters journey in his penultimate year at Hogwarts.',
        'https://covers.openlibrary.org/b/isbn/9780439358071-L.jpg'
    ),
    (
        '9780545010222',
        'Harry Potter and the Deathly Hallows',
        'Scholastic',
        607,
        'English',
        'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series. It depicts the ultimate battle between Harry Potter and Lord Voldemort, revealing the fate of the wizarding world and the characters we have come to love.',
        'https://covers.openlibrary.org/b/isbn/9780545010222-L.jpg'
    ),
    (
        '9780261103283',
        'The Hobbit',
        'HarperCollins',
        366,
        'English',
        'The Hobbit is a fantasy novel that follows the adventures of Bilbo Baggins, a hobbit who embarks on a quest to reclaim the Lonely Mountain from the dragon Smaug.',
        'https://covers.openlibrary.org/b/isbn/9780261103283-L.jpg'
    ),
    (
        '9780547928227',
        'The Fellowship of the Ring',
        'Houghton Mifflin',
        398,
        'English',
        'The Fellowship of the Ring is the first volume in The Lord of the Rings trilogy. It tells the story of Frodo Baggins and his journey to destroy the One Ring and defeat the Dark Lord Sauron.',
        'https://covers.openlibrary.org/b/isbn/9780547928227-L.jpg'
    ),
    (
        '9780547928210',
        'The Two Towers',
        'Houghton Mifflin',
        327,
        'English',
        'The Two Towers is the second volume in The Lord of the Rings trilogy. It continues the journey of Frodo Baggins and his companions as they face various challenges and threats in their quest.',
        'https://covers.openlibrary.org/b/isbn/9780547928210-L.jpg'
    ),
    (
        '9780547928203',
        'The Return of the King',
        'Houghton Mifflin',
        416,
        'English',
        'The Return of the King is the third and final volume in The Lord of the Rings trilogy. It depicts the final battle for Middle-earth and the resolution of the storylines of various characters.',
        'https://covers.openlibrary.org/b/isbn/9780547928203-L.jpg'
    ),
    (
        '9780007136556',
        'The Silmarillion',
        'HarperCollins',
        365,
        'English',
        'The Silmarillion is a collection of mythopoeic works by J.R.R. Tolkien. It provides a detailed history and mythology of Tolkien\'s fictional universe, including the creation of the world and the events leading up to The Lord of the Rings.',
        'https://covers.openlibrary.org/b/isbn/9780007136556-L.jpg'
    ),
(
    '9780671039755',
    'It',
    'Scribner',
    1138,
    'English',
    'It is a horror novel about a group of friends who are haunted by a malevolent entity that takes the form of their worst fears.',
    'https://covers.openlibrary.org/b/isbn/9780671039755-L.jpg'
),
(
    '9781501180989',
    'The Stand',
    'Anchor',
    1153,
    'English',
    'The Stand is a post-apocalyptic horror novel that follows the struggle between good and evil after a deadly pandemic wipes out most of the world''s population.',
    'https://covers.openlibrary.org/b/isbn/9781501180989-L.jpg'
),
(
    '9780451169525',
    'Carrie',
    'Anchor',
    199,
    'English',
    'Carrie is a supernatural horror novel that tells the story of a high school girl with telekinetic powers who seeks revenge on her classmates.',
    'https://covers.openlibrary.org/b/isbn/9780451169525-L.jpg'
),
(
    '9780451176462',
    'Misery',
    'Signet',
    420,
    'English',
    'Misery is a psychological horror novel about an author held captive by his obsessive fan, who forces him to write a new novel.',
    'https://covers.openlibrary.org/b/isbn/9780451176462-L.jpg'
),
(
    '9781501175465',
    'Pet Sematary',
    'Gallery Books',
    561,
    'English',
    'Pet Sematary is a horror novel that explores the supernatural powers of a burial ground and the consequences of bringing the dead back to life.',
    'https://covers.openlibrary.org/b/isbn/9781501175465-L.jpg'
),
(
    '9780671035429',
    'The Green Mile',
    'Pocket Books',
    592,
    'English',
    'The Green Mile is a serialized novel set in a death row prison block, following the lives of the inmates and the supernatural events surrounding them.',
    'https://covers.openlibrary.org/b/isbn/9780671035429-L.jpg'
),
(
    '9780062073563',
    'And Then There Were None',
    'William Morrow Paperbacks',
    264,
    'English',
    'And Then There Were None is a thrilling mystery novel about ten strangers who are lured to an isolated island and are systematically murdered one by one.',
    'https://covers.openlibrary.org/b/isbn/9780062073563-L.jpg'
),
(
    '9780062073549',
    'The Murder of Roger Ackroyd',
    'William Morrow Paperbacks',
    274,
    'English',
    'The Murder of Roger Ackroyd is a classic detective novel featuring Hercule Poirot, who investigates the murder of a wealthy man in a small English village.',
    'https://covers.openlibrary.org/b/isbn/9780062073549-L.jpg'
),
(
    '9780062073495',
    'Death on the Nile',
    'William Morrow Paperbacks',
    358,
    'English',
    'Death on the Nile is a mystery novel set aboard a river cruise, where Hercule Poirot investigates the murder of a young heiress.',
    'https://covers.openlibrary.org/b/isbn/9780062073495-L.jpg'
),
(
    '9780007113804',
    'The ABC Murders',
    'HarperCollins Publishers',
    256,
    'English',
    'The ABC Murders is a detective novel in which Hercule Poirot tries to solve a series of murders committed in alphabetical order.',
    'https://covers.openlibrary.org/b/isbn/9780007113804-L.jpg'
),
(
    '9780062073564',
    'Murder at the Vicarage',
    'William Morrow Paperbacks',
    288,
    'English',
    'Murder at the Vicarage is the first novel featuring Miss Marple, who investigates a murder that occurs in her own village.',
    'https://covers.openlibrary.org/b/isbn/9780062073564-L.jpg'
),
(
    '9780062073600',
    'Evil Under the Sun',
    'William Morrow Paperbacks',
    304,
    'English',
    'Evil Under the Sun is a detective novel set on a summer holiday resort, where Hercule Poirot investigates a murder.',
    'https://covers.openlibrary.org/b/isbn/9780062073600-L.jpg'
),
(
    '9780099458326',
    '1Q84',
    'Vintage Books',
    925,
    'English',
    '1Q84 is a dystopian novel set in Tokyo, where the lives of two protagonists become intertwined in a strange alternate reality.',
    'https://covers.openlibrary.org/b/isbn/9780099458326-L.jpg'
),
(
    '9780099528988',
    'The Wind-Up Bird Chronicle',
    'Vintage Books',
    607,
    'English',
    'The Wind-Up Bird Chronicle is a surreal and mysterious novel that explores themes of identity, war, and the nature of human connection.',
    'https://covers.openlibrary.org/b/isbn/9780099528988-L.jpg'
),
(
    '9780375718946',
    'Colorless Tsukuru Tazaki and His Years of Pilgrimage',
    'Vintage Books',
    386,
    'English',
    'Colorless Tsukuru Tazaki and His Years of Pilgrimage is a novel about a man named Tsukuru Tazaki who embarks on a journey to unravel the mysteries of his past.',
    'https://covers.openlibrary.org/b/isbn/9780375718946-L.jpg'
),
(
    '9780679750536',
    'Sputnik Sweetheart',
    'Vintage Books',
    229,
    'English',
    'Sputnik Sweetheart is a story of unrequited love and longing, as a young woman disappears and her friends are left to unravel the enigma surrounding her.',
    'https://covers.openlibrary.org/b/isbn/9780679750536-L.jpg'
),
(
    '9780099448793',
    'Hard-Boiled Wonderland and the End of the World',
    'Vintage Books',
    400,
    'English',
    'Hard-Boiled Wonderland and the End of the World is a dual narrative novel that combines elements of science fiction and fantasy, taking the reader on a mind-bending journey.',
    'https://covers.openlibrary.org/b/isbn/9780099448793-L.jpg'
),
(
    '9781476763954',
    'Sweet Thing',
    'Atria Books',
    337,
    'English',
    'Sweet Thing is a heartwarming romance novel that follows Mia Kelly as she embarks on a journey of self-discovery, love, and second chances.',
    'https://covers.openlibrary.org/b/isbn/9781476763954-L.jpg'
),
(
    '9781501105807',
    'After the Rain',
    'Atria Books',
    304,
    'English',
    'After the Rain is a poignant novel about second chances and finding love in unexpected places, as Aiden and Rachel navigate the complexities of their past and present.',
    'https://covers.openlibrary.org/b/isbn/9781501105807-L.jpg'
),
(
    '9781501168529',
    'Wish You Were Here',
    'Atria Books',
    320,
    'English',
    'Wish You Were Here is a heartfelt story of love, loss, and the power of forgiveness, as Charlotte embarks on a journey to heal her broken heart and rediscover herself.',
    'https://covers.openlibrary.org/b/isbn/9781501168529-L.jpg'
),
(
    '9781501133466',
    'Blind Kiss',
    'Atria Books',
    336,
    'English',
    'Blind Kiss explores the complexities of love, fate, and the choices we make, as Penny and Gavin navigate a secret agreement that intertwines their lives for years to come.',
    'https://covers.openlibrary.org/b/isbn/9781501133466-L.jpg'
),
(
    '9781501133435',
    'Swear on This Life',
    'Atria Books',
    320,
    'English',
    'Swear on This Life is a captivating novel within a novel, as Emiline discovers a best-Lelling book that uncannily mirrors her own past and relationship with the author.',
    'https://covers.openlibrary.org/b/isbn/9781501133435-L.jpg'
),
(
    '9781501105777',
    'The Last Post',
    'Atria Books',
    320,
    'English',
    'The Last Post is a heartwarming and emotional story of love, friendship, and self-discovery, as Laya and Michael navigate the challenges of life and finding their true selves.',
    'https://covers.openlibrary.org/b/isbn/9781501105777-L.jpg'
),
(
    '9780140621195',
    'The Importance of Being Earnest',
    'Penguin Classics',
    96,
    'English',
    'The Importance of Being Earnest is a witty and satirical play that exposes the hypocritical social conventions of Victorian society through mistaken identities and humorous misunderstandings.',
    'https://covers.openlibrary.org/b/isbn/9780140621195-L.jpg'
),
(
    '9780141439693',
    'Lady Windermere\'s Fan',
    'Penguin Classics',
    144,
    'English',
    'Lady Windermere\'s Fan is a comedic play that explores themes of morality, scandal, and the complexities of societal expectations in late 19th-century London.',
    'https://covers.openlibrary.org/b/isbn/9780141439693-L.jpg'
),
(
    '9780140433922',
    'The Importance of Being Earnest and Other Plays',
    'Penguin Classics',
    400,
    'English',
    'The Importance of Being Earnest and Other Plays is a collection of Wilde\'s most famous plays, including The Importance of Being Earnest, An Ideal Husband, and A Woman of No Importance.',
    'https://covers.openlibrary.org/b/isbn/9780140433922-L.jpg'
),
(
    '9780141397642',
    'The Happy Prince and Other Stories',
    'Penguin Classics',
    208,
    'English',
    'The Happy Prince and Other Stories is a collection of Wilde\'s fairy tales, including "The Happy Prince," "The Selfish Giant," and "The Nightingale and the Rose," which convey moral lessons through enchanting narratives.',
    'https://covers.openlibrary.org/b/isbn/9780141397642-L.jpg'
),
(
    '9780141198963',
    'The Picture of Dorian Gray and Other Writings',
    'Penguin Classics',
    416,
    'English',
    'The Picture of Dorian Gray and Other Writings is a collection of Wilde\'s works, including the novel The Picture of Dorian Gray, his plays, essays, and selected poems.',
    'https://covers.openlibrary.org/b/isbn/9780141198963-L.jpg'
),
(
    '9780141442464',
    'The Picture of Dorian Gray and Other Stories',
    'Penguin Classics',
    480,
    'English',
    'The Picture of Dorian Gray and Other Stories is a collection that features the novel The Picture of Dorian Gray and a selection of Wilde\'s short stories, including "The Canterville Ghost" and "Lord Arthur Savile\'s Crime."',
    'https://covers.openlibrary.org/b/isbn/9780141442464-L.jpg'
),
(
    '9780141185130',
    'The Plague',
    'Penguin Classics',
    320,
    'English',
    'The Plague is a novel that depicts a town"s struggle with a deadly epidemic and examines the human condition in the face of suffering, death, and moral dilemmas.',
    'https://covers.openlibrary.org/b/isbn/9780141185130-L.jpg'
),
(
    '9780679733730',
    'The Fall',
    'Vintage',
    147,
    'English',
    'The Fall is a philosophical novel that explores themes of guilt, responsibility, and human nature through the introspective monologue of Jean-Baptiste Clamence, a former lawyer haunted by his own moral failures.',
    'https://covers.openlibrary.org/b/isbn/9780679733730-L.jpg'
),
(
    '9780307276650',
    'The Myth of Sisyphus and Other Essays',
    'Vintage',
    212,
    'English',
    'The Myth of Sisyphus and Other Essays is a collection of philosophical essays that delve into existentialism, the absurd, and the search for meaning in life.',
    'https://covers.openlibrary.org/b/isbn/9780307276650-L.jpg'
),
(
    '9780141185239',
    'The Rebel',
    'Penguin Classics',
    320,
    'English',
    'The Rebel is a philosophical essay that explores the concept of rebellion against oppression and the quest for freedom, examining various historical and philosophical figures and movements.',
    'https://covers.openlibrary.org/b/isbn/9780141185239-L.jpg'
),
(
    '9780394703955',
    'The Fall',
    'Vintage',
    147,
    'English',
    'The Fall is a philosophical novel that explores themes of guilt, responsibility, and human nature through the introspective monologue of Jean-Baptiste Clamence, a former lawyer haunted by his own moral failures.',
    'https://covers.openlibrary.org/b/isbn/9780394703955-L.jpg'
),
(
    '9780679735772',
    'The Rebel',
    'Vintage',
    320,
    'English',
    'The Rebel is a philosophical essay that explores the concept of rebellion against oppression and the quest for freedom, examining various historical and philosophical figures and movements.',
    'https://covers.openlibrary.org/b/isbn/9780679735772-L.jpg'
),
(
    '9781416524793',
    'Angels & Demons',
    'Pocket Books',
    620,
    'English',
    'Angels & Demons is a thriller novel featuring Robert Langdon as he investigates a secret society, the Illuminati, and tries to prevent a catastrophic event in Vatican City.',
    'https://covers.openlibrary.org/b/isbn/9781416524793-L.jpg'
),
(
    '9781416572366',
    'The Lost Symbol',
    'Pocket Books',
    509,
    'English',
    'The Lost Symbol is a thriller novel that follows Robert Langdon as he deciphers symbols in Washington, D.C., uncovering ancient secrets and confronting a powerful and hidden organization.',
    'https://covers.openlibrary.org/b/isbn/9781416572366-L.jpg'
),
(
    '9780385511213',
    'Inferno',
    'Anchor Books',
    480,
    'English',
    'Inferno is a thriller novel in which Robert Langdon races against time to solve a puzzle inspired by Dante Alighieri\'s Inferno, taking him through the historical landmarks of Florence and Venice.',
    'https://covers.openlibrary.org/b/isbn/9780385511213-L.jpg'
),
(
    '9780385537855',
    'Origin',
    'Anchor Books',
    480,
    'English',
    'Origin is a thriller novel that combines art, science, and religion as Robert Langdon investigates the discovery of an astonishing scientific breakthrough that could answer the fundamental questions of human existence.',
    'https://covers.openlibrary.org/b/isbn/9780385537855-L.jpg'
),
(
    '9780385524282',
    'The Lost Symbol',
    'Anchor Books',
    656,
    'English',
    'The Lost Symbol is a thriller novel that follows Robert Langdon as he deciphers symbols in Washington, D.C., uncovering ancient secrets and confronting a powerful and hidden organization.',
    'https://covers.openlibrary.org/b/isbn/9780385524282-L.jpg'
),
(
    '9780385537856',
    'Origin',
    'Anchor Books',
    656,
    'English',
    'Origin is a thriller novel that combines art, science, and religion as Robert Langdon investigates the discovery of an astonishing scientific breakthrough that could answer the fundamental questions of human existence.',
    'https://covers.openlibrary.org/b/isbn/9780385537856-L.jpg'
),
(
    '9780553448123',
    'Project Hail Mary',
    'Ballantine Books',
    496,
    'English',
    'Project Hail Mary is a science fiction novel that follows astronaut Ryland Grace as he wakes up on a spaceship with no memory of his mission and must unravel the mystery of his own survival.',
    'https://covers.openlibrary.org/b/isbn/9780553448123-L.jpg'
),
(
    '9781785038881',
    'The Egg',
    'Del Rey',
    32,
    'English',
    'The Egg is a short story that explores philosophical themes of the nature of reality and the meaning of life.',
    'https://covers.openlibrary.org/b/isbn/9781785038881-L.jpg'
),
(
    '9781785654584',
    'An Astronaut\'s Guide to Life on Earth',
    'Arrow',
    320,
    'English',
    'An Astronaut\'s Guide to Life on Earth is a non-fiction book written by Chris Hadfield, with contributions from Andy Weir, providing insights into life as an astronaut and valuable lessons for everyday life.',
    'https://covers.openlibrary.org/b/isbn/9781785654584-L.jpg'
),
(
    '9781607014544',
    'The Martian Chronicles',
    'Prime Books',
    270,
    'English',
    'The Martian Chronicles is a collection of science fiction short stories written by Ray Bradbury, including the story "The Long Years" by Andy Weir.',
    'https://covers.openlibrary.org/b/isbn/9781607014544-L.jpg'
),
(
    '9781540682178',
    'The Egg and Other Stories',
    'CreateSpace Independent Publishing Platform',
    76,
    'English',
    'The Egg and Other Stories is a collection of science fiction and fantasy short stories written by Andy Weir.',
    'https://covers.openlibrary.org/b/isbn/9781540682178-L.jpg'
),
(
    '9780385720045',
    'The Nickel Boys',
    'Doubleday',
    224,
    'English',
    'A powerful story of two boys sentenced to a brutal reform school in Jim Crow-era Florida.',
    'https://covers.openlibrary.org/b/isbn/9780385720045-L.jpg'
),
(
    '9780385524367',
    'Zone One',
    'Doubleday',
    259,
    'English',
    'A post-apocalyptic novel set in a world overrun by zombies.',
    'https://covers.openlibrary.org/b/isbn/9780385524367-L.jpg'
),
(
    '9780385542361',
    'Sag Harbor',
    'Doubleday',
    288,
    'English',
    'A coming-of-age story set in the summer of 1985 in Sag Harbor, a small African American community on Long Island.',
    'https://covers.openlibrary.org/b/isbn/9780385542361-L.jpg'
),
(
    '9780385537039',
    'John Henry Days',
    'Doubleday',
    389,
    'English',
    'A novel that explores the legend of John Henry and the impact of modern-day commercialism.',
    'https://covers.openlibrary.org/b/isbn/9780385537039-L.jpg'
),
(
    '9780385720953',
    'Apex Hides the Hurt',
    'Doubleday',
    221,
    'English',
    'A satirical novel about a "nomenclature consultant" hired to rename a town.',
    'https://covers.openlibrary.org/b/isbn/9780385720953-L.jpg'
),
(
    '9780385531204',
    'The Intuitionist',
    'Anchor',
    272,
    'English',
    'A speculative fiction novel set in a world where elevator inspectors have a unique form of divination.',
    'https://covers.openlibrary.org/b/isbn/9780385531204-L.jpg'
),
(
    '9781400031702',
    'The Secret History',
    'Vintage',
    559,
    'English',
    'The Secret History is a novel that follows a group of students studying Greek at an elite New England college, and the events that unfold when they become involved in a murder.',
    'https://covers.openlibrary.org/b/isbn/9781400031702-L.jpg'
),
(
    '9780316055437',
    'The Little Friend',
    'Back Bay Books',
    624,
    'English',
    'The Little Friend is a novel set in Mississippi and tells the story of a young girl named Harriet and her quest to solve the mysterious death of her brother.',
    'https://covers.openlibrary.org/b/isbn/9780316055437-L.jpg'
),
(
    '9780747596461',
    'The Secret History (Collector\'s Edition)',
    'Bloomsbury Publishing',
    630,
    'English',
    'The Secret History (Collector\'s Edition) is a special edition of Donna Tartt\'s acclaimed novel, featuring additional content and illustrations.',
    'https://covers.openlibrary.org/b/isbn/9780747596461-L.jpg'
),
(
    '9780316055436',
    'The Little Friend',
    'Back Bay Books',
    624,
    'English',
    'The Little Friend is a novel set in Mississippi and tells the story of a young girl named Harriet and her quest to solve the mysterious death of her brother.',
    'https://covers.openlibrary.org/b/isbn/9780316055436-L.jpg'
),
   (
        '9781250027436',
        'Shadow and Bone',
        'Henry Holt and Co.',
        368,
        'English',
        'Shadow and Bone is the first book in the Grisha Trilogy...',
        'https://covers.openlibrary.org/b/isbn/9781250027436-L.jpg'
    ),
    (
        '9780805094602',
        'Siege and Storm',
        'Henry Holt and Co.',
        432,
        'English',
        'Siege and Storm is the second book in the Grisha Trilogy...',
        'https://covers.openlibrary.org/b/isbn/9780805094602-L.jpg'
    ),
    (
        '9780805094619',
        'Ruin and Rising',
        'Henry Holt and Co.',
        432,
        'English',
        'Ruin and Rising is the third and final book in the Grisha Trilogy...',
        'https://covers.openlibrary.org/b/isbn/9780805094619-L.jpg'
    ),

    (
        '9781627792134',
        'Crooked Kingdom',
        'Henry Holt and Co.',
        560,
        'English',
        'Crooked Kingdom is the second and final book in the Six of Crows Duology...',
        'https://covers.openlibrary.org/b/isbn/9781627792134-L.jpg'
    ),
    (
        '9781250142283',
        'King of Scars',
        'Imprint',
        528,
        'English',
        'King of Scars is the first book in the Nikolai Duology...',
        'https://covers.openlibrary.org/b/isbn/9781250142283-L.jpg'
    ),
    (
        '9781250142306',
        'Rule of Wolves',
        'Imprint',
        608,
        'English',
        'Rule of Wolves is the second and final book in the Nikolai Duology...',
        'https://covers.openlibrary.org/b/isbn/9781250142306-L.jpg'
    ),
    (
        '9781250313072',
        'Ninth House',
        'Flatiron Books',
        480,
        'English',
        'Ninth House is a dark and gripping novel set in a secret society at Yale University...',
        'https://covers.openlibrary.org/b/isbn/9781250313072-L.jpg'
    ),
(
    '9781594489501',
    'A Thousand Splendid Suns',
    'Riverhead Books',
    372,
    'English',
    'A Thousand Splendid Suns is a gripping story of two Afghan women, Mariam and Laila, and their struggles during the tumultuous times of Afghanistan.',
    'https://covers.openlibrary.org/b/isbn/9781594489501-L.jpg'
),
(
    '9781594631764',
    'And the Mountains Echoed',
    'Riverhead Books',
    402,
    'English',
    'And the Mountains Echoed explores the intricate connections between family, sacrifice, and the power of love.',
    'https://covers.openlibrary.org/b/isbn/9781594631764-L.jpg'
),
(
    '9781501160769',
    'My Grandmother Asked Me to Tell You She''s Sorry',
    'Washington Square Press',
    372,
    'English',
    'My Grandmother Asked Me to Tell You She''s Sorry follows a young girl on an adventure that reveals family secrets and the power of storytelling.',
    'https://covers.openlibrary.org/b/isbn/9781501160769-L.jpg'
),
(
    '9781501173218',
    'Britt-Marie Was Here',
    'Washington Square Press',
    336,
    'English',
    'Britt-Marie Was Here tells the story of a woman who embarks on a journey of self-discovery and finds unexpected connections in a small town.',
    'https://covers.openlibrary.org/b/isbn/9781501173218-L.jpg'
),
(
    '9781501166785',
    'Beartown',
    'Washington Square Press',
    432,
    'English',
    'Beartown explores the impact of a traumatic event on a small hockey town and its residents.',
    'https://covers.openlibrary.org/b/isbn/9781501166785-L.jpg'
),
(
    '9781501160806',
    'Us Against You',
    'Washington Square Press',
    448,
    'English',
    'Us Against You is a powerful sequel to Beartown, delving deeper into the conflicts and loyalties within the community.',
    'https://covers.openlibrary.org/b/isbn/9781501160806-L.jpg'
),
(
    '9781501178269',
    'Anxious People',
    'Atria Books',
    352,
    'English',
    'Anxious People is a humorous and compassionate novel that explores the lives of a group of strangers brought together by a hostage situation.',
    'https://covers.openlibrary.org/b/isbn/9781501178269-L.jpg'
),
(
    '9781982135848',
    'A Man Called Ove: The Play',
    'Washington Square Press',
    400,
    'English',
    'A Man Called Ove: The Play brings the beloved story to the stage, capturing the essence of the original novel in a theatrical adaptation.',
    'https://covers.openlibrary.org/b/isbn/9781982135848-L.jpg'
),
(
    '9780684830506',
    'This Side of Paradise',
    'Scribner',
    305,
    'English',
    'This Side of Paradise is F. Scott Fitzgerald\'s debut novel, portraying the life of a young man and his pursuit of success and love.',
    'https://covers.openlibrary.org/b/isbn/9780684830506-L.jpg'
),
(
    '9780684833392',
    'The Beautiful and Damned',
    'Scribner',
    348,
    'English',
    'The Beautiful and Damned is a novel that explores the decadence and disillusionment of a young couple in the Jazz Age.',
    'https://covers.openlibrary.org/b/isbn/9780684833392-L.jpg'
),
(
    '9780743273566',
    'The Last Tycoon',
    'Scribner',
    194,
    'English',
    'The Last Tycoon is an unfinished novel by F. Scott Fitzgerald, set in the Hollywood film industry and depicting the rise and fall of a young producer.',
    'https://covers.openlibrary.org/b/isbn/9780743273566-L.jpg'
),
(
    '9780684801520',
    'The Diamond as Big as the Ritz',
    'Scribner',
    32,
    'English',
    'The Diamond as Big as the Ritz is a novella that tells the story of a secret mountain retreat and the extraordinary wealth hidden within it.',
    'https://covers.openlibrary.org/b/isbn/9780684801520-L.jpg'
),
(
    '9780684830507',
    'Bernice Bobs Her Hair',
    'Scribner',
    32,
    'English',
    'Bernice Bobs Her Hair is a short story about a young woman\'s transformation and her struggle for acceptance within her social circle.',
    'https://covers.openlibrary.org/b/isbn/9780684830507-L.jpg'
); 


USE school_libraries;

INSERT INTO author (author_first_name, author_last_name)
VALUES 
    ('J.R.R.', 'Tolkien'),
    ('Jane', 'Austen'),
    ('George', 'Orwell'),
    ('Harper', 'Lee'),
    ('F. Scott', 'Fitzgerald'),
    ('Ernest', 'Hemingway'),
    ('J.K.', 'Rowling'),
    ('Dan', 'Brown'),
    ('Stephen', 'King'),
    ('Agatha', 'Christie'),
    ('Tara', 'Westover'),
    ('Kathryn', 'Stockett'),
    ('Paulo', 'Coelho'),
    ('Kristin', 'Hannah'),
    ('Renée', 'Carlino'),
    ('Haruki', 'Murakami'),
    ('Chimamanda', 'Ngozi Adichie'),
    ('Fredrik', 'Backman'),
    ('Celeste', 'Ng'),
    ('Ruth', 'Ware'),
    ('Paula', 'Hawkins'),
    ('Brandon', 'Sanderson'),
    ('Andy', 'Weir'),
    ('Gillian', 'Flynn'),
    ('Neil', 'Gaiman'),
    ('John', 'Green'),
    ('J.D.', 'Salinger'),
    ('Michelle', 'Obama'),
    ('Oscar', 'Wilde'),
    ('Colson', 'Whitehead'),
    ('Albert', 'Camus'),
    ('Donna', 'Tartt'),
    ('Anthony', 'Doerr'),
    ('Khaled', 'Hosseini'),
    ('Markus', 'Zusak'),
    ('Elena', 'Ferrante'),
    ('Tommy', 'Orange'),
    ('Madeline', 'Miller'),
    ('Tayari', 'Jones'),
    ('Leigh', 'Bardugo'),
    ('Sally', 'Rooney'),
    ('Rupi', 'Kaur'),
    ('Delia', 'Owens'),
    ('Jhumpa', 'Lahiri');

USE school_libraries;

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780544003415'
FROM author
WHERE author_first_name = 'J.R.R.' AND author_last_name = 'Tolkien';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780141439518'
FROM author
WHERE author_first_name = 'Jane' AND author_last_name = 'Austen';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780451524935'
FROM author
WHERE author_first_name = 'George' AND author_last_name = 'Orwell';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780061120084'
FROM author
WHERE author_first_name = 'Harper' AND author_last_name = 'Lee';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780743273565'
FROM author
WHERE author_first_name = 'F. Scott' AND author_last_name = 'Fitzgerald';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780684801469'
FROM author
WHERE author_first_name = 'Ernest' AND author_last_name = 'Hemingway';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780545010221'
FROM author
WHERE author_first_name = 'J.K.' AND author_last_name = 'Rowling';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780439358071'
FROM author
WHERE author_first_name = 'J.K.' AND author_last_name = 'Rowling';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781416570868'
FROM author
WHERE author_first_name = 'Dan' AND author_last_name = 'Brown';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501142970'
FROM author
WHERE author_first_name = 'Stephen' AND author_last_name = 'King';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780062073501'
FROM author
WHERE author_first_name = 'Agatha' AND author_last_name = 'Christie';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501173219'
FROM author
WHERE author_first_name = 'Tara' AND author_last_name = 'Westover';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781400064168'
FROM author
WHERE author_first_name = 'Kathryn' AND author_last_name = 'Stockett';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780061120085'
FROM author
WHERE author_first_name = 'Paulo' AND author_last_name = 'Coelho';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780525952662'
FROM author
WHERE author_first_name = 'Kristin' AND author_last_name = 'Hannah';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501175565'
FROM author
WHERE author_first_name = 'Renée' AND author_last_name = 'Carlino';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780525501220'
FROM author
WHERE author_first_name = 'Haruki' AND author_last_name = 'Murakami';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780007356348'
FROM author
WHERE author_first_name = 'Chimamanda' AND author_last_name = 'Ngozi Adichie';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501160790'
FROM author
WHERE author_first_name = 'Fredrik' AND author_last_name = 'Backman';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780735224292'
FROM author
WHERE author_first_name = 'Celeste' AND author_last_name = 'Ng';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501168802'
FROM author
WHERE author_first_name = 'Ruth' AND author_last_name = 'Ware';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780857521353'
FROM author
WHERE author_first_name = 'Paula' AND author_last_name = 'Hawkins';

INSERT INTO book_author (author_id, ISBN)
VALUES
    ((SELECT author_id FROM author WHERE author_first_name = 'Brandon' AND author_last_name = 'Sanderson'), '9780765326355'),
    ((SELECT author_id FROM author WHERE author_first_name = 'Ruth' AND author_last_name = 'Ware'), '9781501175466'),
    ((SELECT author_id FROM author WHERE author_first_name = 'Andy' AND author_last_name = 'Weir'), '9780553448122');
   
INSERT INTO book_author (author_id, ISBN)
VALUES
    ((SELECT author_id FROM author WHERE author_first_name = 'Gillian' AND author_last_name = 'Flynn'), '9780307588364'),
    ((SELECT author_id FROM author WHERE author_first_name = 'Haruki' AND author_last_name = 'Murakami'), '9780099448792'),
    ((SELECT author_id FROM author WHERE author_first_name = 'John' AND author_last_name = 'Green'), '9780525478812'),
    ((SELECT author_id FROM author WHERE author_first_name = 'Neil' AND author_last_name = 'Gaiman'), '9780062255655');
   
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780062457714'
FROM author
WHERE author_first_name = 'J.D.' AND author_last_name = 'Salinger';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780525563235'
FROM author
WHERE author_first_name = 'Michelle' AND author_last_name = 'Obama';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780345804358'
FROM author
WHERE author_first_name = 'Oscar' AND author_last_name = 'Wilde';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780812988406'
FROM author
WHERE author_first_name = 'Colson' AND author_last_name = 'Whitehead';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780679732259'
FROM author
WHERE author_first_name = 'Albert' AND author_last_name = 'Camus';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781594633940'
FROM author
WHERE author_first_name = 'Donna' AND author_last_name = 'Tartt';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780385349570'
FROM author
WHERE author_first_name = 'Anthony' AND author_last_name = 'Doerr';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780307277712'
FROM author
WHERE author_first_name = 'Khaled' AND author_last_name = 'Hosseini';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780812987114'
FROM author
WHERE author_first_name = 'Markus' AND author_last_name = 'Zusak';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781250178619'
FROM author
WHERE author_first_name = 'Kristin' AND author_last_name = 'Hannah';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780553418026' FROM author WHERE author_first_name = 'Andy' AND author_last_name = 'Weir';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780765377142' FROM author WHERE author_first_name = 'Brandon' AND author_last_name = 'Sanderson';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781609455739' FROM author WHERE author_first_name = 'Elena' AND author_last_name = 'Ferrante';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780525520375' FROM author WHERE author_first_name = 'Tommy' AND author_last_name = 'Orange';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780316556347' FROM author WHERE author_first_name = 'Madeline' AND author_last_name = 'Miller';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781616208684' FROM author WHERE author_first_name = 'Tayari' AND author_last_name = 'Jones';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781250042763' FROM author WHERE author_first_name = 'Leigh' AND author_last_name = 'Bardugo';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780571347292' FROM author WHERE author_first_name = 'Sally' AND author_last_name = 'Rooney';


INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780735219113' FROM author WHERE author_first_name = 'Delia' AND author_last_name = 'Owens';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780399590504' FROM author WHERE author_first_name = 'Tara' AND author_last_name = 'Westover';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781449486792' FROM author WHERE author_first_name = 'Rupi' AND author_last_name = 'Kaur';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780307278783' FROM author WHERE author_first_name = 'Jhumpa' AND author_last_name = 'Lahiri';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780486284736' FROM author WHERE author_first_name = 'Jane' AND author_last_name = 'Austen';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780143105428' FROM author WHERE author_first_name = 'Jane' AND author_last_name = 'Austen';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780151010264' FROM author WHERE author_first_name = 'George' AND author_last_name = 'Orwell';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780141393049' FROM author WHERE author_first_name = 'George' AND author_last_name = 'Orwell';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780141187761' FROM author WHERE author_first_name = 'George' AND author_last_name = 'Orwell';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780141187396' FROM author WHERE author_first_name = 'George' AND author_last_name = 'Orwell';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780062409867' FROM author WHERE author_first_name = 'Harper' AND author_last_name = 'Lee';


INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780684830421' FROM author WHERE author_first_name = 'F. Scott' AND author_last_name = 'Fitzgerald';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780684800715' FROM author WHERE author_first_name = 'Ernest' AND author_last_name = 'Hemingway';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780439554893' FROM author WHERE author_first_name = 'J.K.' AND author_last_name = 'Rowling';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780439139601' FROM author WHERE author_first_name = 'J.K.' AND author_last_name = 'Rowling';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780439554947' FROM author WHERE author_first_name = 'J.K.' AND author_last_name = 'Rowling';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780439358072' FROM author WHERE author_first_name = 'J.K.' AND author_last_name = 'Rowling';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780545010222' FROM author WHERE author_first_name = 'J.K.' AND author_last_name = 'Rowling';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780261103283' FROM author WHERE author_first_name = 'J.R.R.' AND author_last_name = 'Tolkien';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780547928227' FROM author WHERE author_first_name = 'J.R.R.' AND author_last_name = 'Tolkien';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780547928210' FROM author WHERE author_first_name = 'J.R.R.' AND author_last_name = 'Tolkien';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780547928203' FROM author WHERE author_first_name = 'J.R.R.' AND author_last_name = 'Tolkien';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780007136556' FROM author WHERE author_first_name = 'J.R.R.' AND author_last_name = 'Tolkien';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780671039755' FROM author WHERE author_first_name = 'Stephen' AND author_last_name = 'King';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501180989' FROM author WHERE author_first_name = 'Stephen' AND author_last_name = 'King';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780451169525' FROM author WHERE author_first_name = 'Stephen' AND author_last_name = 'King';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780451176462' FROM author WHERE author_first_name = 'Stephen' AND author_last_name = 'King';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501175465' FROM author WHERE author_first_name = 'Stephen' AND author_last_name = 'King';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780671035429' FROM author WHERE author_first_name = 'Stephen' AND author_last_name = 'King';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780062073563' FROM author WHERE author_first_name = 'Agatha' AND author_last_name = 'Christie';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780062073549' FROM author WHERE author_first_name = 'Agatha' AND author_last_name = 'Christie';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780062073495' FROM author WHERE author_first_name = 'Agatha' AND author_last_name = 'Christie';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780007113804' FROM author WHERE author_first_name = 'Stephen' AND author_last_name = 'King';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780007113804' FROM author WHERE author_first_name = 'Agatha' AND author_last_name = 'Christie';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780062073564' FROM author WHERE author_first_name = 'Agatha' AND author_last_name = 'Christie';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780062073600' FROM author WHERE author_first_name = 'Agatha' AND author_last_name = 'Christie';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780099458326' FROM author WHERE author_first_name = 'Haruki' AND author_last_name = 'Murakami';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780099528988' FROM author WHERE author_first_name = 'Haruki' AND author_last_name = 'Murakami';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780375718946' FROM author WHERE author_first_name = 'Haruki' AND author_last_name = 'Murakami';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780679750536' FROM author WHERE author_first_name = 'Haruki' AND author_last_name = 'Murakami';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780099448793' FROM author WHERE author_first_name = 'Haruki' AND author_last_name = 'Murakami';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781476763954' FROM author WHERE author_first_name = 'Renée' AND author_last_name = 'Carlino';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501105807' FROM author WHERE author_first_name = 'Renée' AND author_last_name = 'Carlino';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501168529' FROM author WHERE author_first_name = 'Renée' AND author_last_name = 'Carlino';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501133466' FROM author WHERE author_first_name = 'Renée' AND author_last_name = 'Carlino';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501133435' FROM author WHERE author_first_name = 'Renée' AND author_last_name = 'Carlino';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501105777' FROM author WHERE author_first_name = 'Renée' AND author_last_name = 'Carlino';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780140621195' FROM author WHERE author_first_name = 'Oscar' AND author_last_name = 'Wilde';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780141439693' FROM author WHERE author_first_name = 'Oscar' AND author_last_name = 'Wilde';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780140433922' FROM author WHERE author_first_name = 'Oscar' AND author_last_name = 'Wilde';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780141397642' FROM author WHERE author_first_name = 'Oscar' AND author_last_name = 'Wilde';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780141198963' FROM author WHERE author_first_name = 'Oscar' AND author_last_name = 'Wilde';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780141442464' FROM author WHERE author_first_name = 'Oscar' AND author_last_name = 'Wilde';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780141185130' FROM author WHERE author_first_name = 'Albert' AND author_last_name = 'Camus';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780679733730' FROM author WHERE author_first_name = 'Albert' AND author_last_name = 'Camus';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780307276650' FROM author WHERE author_first_name = 'Albert' AND author_last_name = 'Camus';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780141185239' FROM author WHERE author_first_name = 'Albert' AND author_last_name = 'Camus';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780394703955' FROM author WHERE author_first_name = 'Albert' AND author_last_name = 'Camus';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780679735772' FROM author WHERE author_first_name = 'Albert' AND author_last_name = 'Camus';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781416524793' FROM author WHERE author_first_name = 'Dan' AND author_last_name = 'Brown';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781416572366' FROM author WHERE author_first_name = 'Dan' AND author_last_name = 'Brown';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780385511213' FROM author WHERE author_first_name = 'Dan' AND author_last_name = 'Brown';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780385537855' FROM author WHERE author_first_name = 'Dan' AND author_last_name = 'Brown';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780385524282' FROM author WHERE author_first_name = 'Dan' AND author_last_name = 'Brown';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780385537856' FROM author WHERE author_first_name = 'Dan' AND author_last_name = 'Brown';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780553448123' FROM author WHERE author_first_name = 'Andy' AND author_last_name = 'Weir';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781785038881' FROM author WHERE author_first_name = 'Andy' AND author_last_name = 'Weir';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781785654584' FROM author WHERE author_first_name = 'Andy' AND author_last_name = 'Weir';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781607014544' FROM author WHERE author_first_name = 'Andy' AND author_last_name = 'Weir';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781540682178' FROM author WHERE author_first_name = 'Andy' AND author_last_name = 'Weir';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781400031702' FROM author WHERE author_first_name = 'Donna' AND author_last_name = 'Tartt';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780316055437' FROM author WHERE author_first_name = 'Donna' AND author_last_name = 'Tartt';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780747596461' FROM author WHERE author_first_name = 'Donna' AND author_last_name = 'Tartt';


INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780316055436' FROM author WHERE author_first_name = 'Donna' AND author_last_name = 'Tartt';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780385524367' FROM author WHERE author_first_name = 'Colson' AND author_last_name = 'Whitehead';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780385531204' FROM author WHERE author_first_name = 'Colson' AND author_last_name = 'Whitehead';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780385537039' FROM author WHERE author_first_name = 'Colson' AND author_last_name = 'Whitehead';

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780385542361' FROM author WHERE author_first_name = 'Colson' AND author_last_name = 'Whitehead';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780385720045' FROM author WHERE author_first_name = 'Colson' AND author_last_name = 'Whitehead';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780385720953' FROM author WHERE author_first_name = 'Colson' AND author_last_name = 'Whitehead';

INSERT INTO book_author (author_id, ISBN)
VALUES
    ((SELECT author_id FROM author WHERE author_first_name = 'Leigh' AND author_last_name = 'Bardugo'), '9781250027436'),
    ((SELECT author_id FROM author WHERE author_first_name = 'Leigh' AND author_last_name = 'Bardugo'), '9780805094602'),
    ((SELECT author_id FROM author WHERE author_first_name = 'Leigh' AND author_last_name = 'Bardugo'), '9780805094619'),
    ((SELECT author_id FROM author WHERE author_first_name = 'Leigh' AND author_last_name = 'Bardugo'), '9781627792134'),
    ((SELECT author_id FROM author WHERE author_first_name = 'Leigh' AND author_last_name = 'Bardugo'), '9781250142283'),
    ((SELECT author_id FROM author WHERE author_first_name = 'Leigh' AND author_last_name = 'Bardugo'), '9781250142306'),
    ((SELECT author_id FROM author WHERE author_first_name = 'Leigh' AND author_last_name = 'Bardugo'), '9781250313072');

INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781594489501' FROM author WHERE author_first_name = 'Khaled' AND author_last_name = 'Hosseini';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781594631764' FROM author WHERE author_first_name = 'Khaled' AND author_last_name = 'Hosseini';


INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501160769' FROM author WHERE author_first_name = 'Fredrik' AND author_last_name = 'Backman';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501173218' FROM author WHERE author_first_name = 'Fredrik' AND author_last_name = 'Backman';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501166785' FROM author WHERE author_first_name = 'Fredrik' AND author_last_name = 'Backman';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501160806' FROM author WHERE author_first_name = 'Fredrik' AND author_last_name = 'Backman';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781501178269' FROM author WHERE author_first_name = 'Fredrik' AND author_last_name = 'Backman';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9781982135848' FROM author WHERE author_first_name = 'Fredrik' AND author_last_name = 'Backman';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780684830506' FROM author WHERE author_first_name = 'F. Scott' AND author_last_name = 'Fitzgerald';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780684833392' FROM author WHERE author_first_name = 'F. Scott' AND author_last_name = 'Fitzgerald';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780743273566' FROM author WHERE author_first_name = 'F. Scott' AND author_last_name = 'Fitzgerald';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780684801520' FROM author WHERE author_first_name = 'F. Scott' AND author_last_name = 'Fitzgerald';
INSERT INTO book_author (author_id, ISBN)
SELECT author_id, '9780684830507' FROM author WHERE author_first_name = 'F. Scott' AND author_last_name = 'Fitzgerald';

use school_libraries;

INSERT INTO keyword (keyword) VALUES
('Love'),
('Friendship'),
('Murder'),
('Secrets'),
('Adventure'),
('Mysterious'),
('Romantic'),
('Fantastical'),
('Suspenseful'),
('Surrealism'),
('Fiction'),
('Non-Fiction'), 
('Memoir'), 
('Poverty'), 
('Working Class'),
('Gripping'),
('Historical'),
('Haunted'),
('Thrilling'),
('Enigmatic'),
('Dark'),
('Inspiring'),
('African-American'),  
('Youth'),
('Historical Fiction'), 
('Racism'), 
('Injustice'),
('Dystopian'), 
('Totalitarianism'), 
('Surveillance'),
('Classic'), 
('Romance'), 
('Sisters'),
('Intriguing'),
('Controversial'),
('Emotional'),
('Action-packed'),
('Magical'),
('Chilling'),
('Heartwarming'),
('Thought-provoking'),
('Mysterious'),
('Captivating'),
('Dramatic'),
('Heartbreaking'),
('Humorous'),
('Inspirational'),
('Epic'),
('Powerful'),
('Surreal'),
('Unforgettable'),
('Intense'),
('Twisted'),
('Provocative'),
('Moving'),
('Entertaining'),
('Compelling'),
('Fast-paced'),
('Contemporary'),
('Engaging'),
('Profound'),
('Supernatural'),
('Psychological'),
('Character-driven'),
('Sensual'),
('Addictive'),
('Page-turner'),
('Magic'),
('War'),
('Family'),
('Gothic'),
('Detective'),
('Investigation'),
('Suspense'),
('Time Travel'),
('Space'),
('Aliens'),
('Art'),
('Relationships'),
('Politics'),
('Quest'),
('Coming of Age'),
('Betrayal'),
('Survival'),
('Mental Health'),
('Technology'),
('Virtual Reality'),
('Artificial Intelligence'),
('Post-apocalyptic'),
('Dystopia'),
('Conspiracy'),
('Thriller'),
('Mystery'),
('Romantic Comedy'),
('Paranormal Romance'),
('Vampires'),
('World War II'), 
('Wealth'), 
('Lost love'),
('Hollywood'), 
('Ambition'), 
('Golden Age'),
('Jazz Age'),
('Witches'),
('Ghosts'),
('Zombies'),
('Drama'),
('Tragedy'),
('Oscar Wilde'),
('Comedy'),
('Satire'),
('Philosophy'),
('Existentialism'),
('Epic fantasy'), 
('Magic system'), 
('Rebellion'),
('Fantasy'), 
('College life'), 
('Dark secrets'),
('Heist'), 
('Young Adult'),
('Religion'),
('Nature'),
('Travel'),
('Poetry'), 
('short stories'), 
('philosophical'),  
('existential'),
('Self-expression'), 
('Emotions'),
('Humor'),
('Sports'),
('Justice'),
('Espionage'),
('Time Loop'),
('Forbidden Love'),
('Redemption'),
('Mythology'),
('Grief'),
('Hope'),
('Intrigue'),
('Identity'),
('Revenge'),
('Exploration'),
('Society'),
('Warfare'),
('Innocence'),
('Political Intrigue'),
('Parallel Universe'),
('Historical Events'),
('Hidden Identity'),
('Cyberpunk'),
('Mind Games'),
('Southern Literature'),
('Death Row'),
('Magical Realism'),
('Dreams'),
('Deception'),
('Nigeria');






-- Book: The ABC Murders
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780007113804', keyword_id FROM keyword WHERE keyword IN ('Murder', 'Investigation', 'Detective');

-- Book: The Silmarillion
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780007136556', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Mythology', 'Middle-earth');

-- Book: Americanah
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780007356348', keyword_id FROM keyword WHERE keyword IN ('Race', 'Identity', 'Nigeria', 'Immigration', 'Love');


-- Book: To Kill a Mockingbird
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780061120084', keyword_id FROM keyword WHERE keyword IN ('Racism', 'Injustice', 'Coming-of-age', 'Southern Literature');

-- Book: The Alchemist
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780061120085', keyword_id FROM keyword WHERE keyword IN ('Quest', 'Alchemy', 'Personal Legend', 'Spirituality');

-- Book: Death on the Nile
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780062073495', keyword_id FROM keyword WHERE keyword IN ('Murder', 'Investigation', 'Detective');

-- Book: Murder on the Orient Express
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780062073501', keyword_id FROM keyword WHERE keyword IN ('Murder', 'Investigation', 'Detective');

-- Book: The Murder of Roger Ackroyd
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780062073549', keyword_id FROM keyword WHERE keyword IN ('Murder', 'Investigation', 'Detective');

-- Book: And Then There Were None
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780062073563', keyword_id FROM keyword WHERE keyword IN ('Murder', 'Investigation', 'Detective');

-- Book: Murder at the Vicarage
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780062073564', keyword_id FROM keyword WHERE keyword IN ('Murder', 'Investigation', 'Detective');


-- Book: Evil Under the Sun
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780062073600', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'Crime', 'Detective', 'Murder');

-- Book: American Gods
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780062255655', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Mythology', 'Gods', 'Magic');

-- Book: Go Set a Watchman
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780062409867', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Drama', 'Coming-of-age');

-- Book: The Catcher in the Rye
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780062457714', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Coming-of-age', 'Identity', 'Teenagers');

-- Book: Norwegian Wood
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780099448792', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Romance', 'Drama', 'Love', 'Loss');

-- Book: Hard-Boiled Wonderland and the End of the World
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780099448793', keyword_id FROM keyword WHERE keyword IN ('Science Fiction', 'Fantasy', 'Literary Fiction', 'Mind', 'Identity');

-- Book: 1Q84
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780099458326', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Fantasy', 'Magical Realism', 'Parallel Worlds');

-- Book: The Wind-Up Bird Chronicle
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780099528988', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Magical Realism', 'Surrealism', 'Dreams');

-- Book: The Importance of Being Earnest and Other Plays
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780140433922', keyword_id FROM keyword WHERE keyword IN ('Drama', 'Comedy', 'Satire', 'Social Commentary');

-- Book: The Importance of Being Earnest
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780140621195', keyword_id FROM keyword WHERE keyword IN ('Drama', 'Comedy', 'Satire', 'Victorian Society');

-- Book: The Plague
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780141185130', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Existentialism', 'Disease', 'Pandemic');

-- Book: The Rebel
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780141185239', keyword_id FROM keyword WHERE keyword IN ('Non-Fiction', 'Philosophy', 'Revolution', 'Existentialism');

-- Book: Keep the Aspidistra Flying
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780141187396', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Satire', 'Social Commentary', 'Working Class');

-- Book: Homage to Catalonia
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780141187761', keyword_id FROM keyword WHERE keyword IN ('Non-Fiction', 'Memoir', 'Spanish Civil War', 'Politics');

-- Book: The Picture of Dorian Gray and Other Writings
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780141198963', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Gothic', 'Oscar Wilde', 'Duality', 'Beauty');

-- Book: Down and Out in Paris and London
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780141393049', keyword_id FROM keyword WHERE keyword IN ('Non-Fiction', 'Memoir', 'Poverty', 'Working Class');

-- Book: The Happy Prince and Other Stories
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780141397642', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Short Stories', 'Fairy Tales', 'Morality');

-- Book: Pride and Prejudice
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780141439518', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Romance', 'Classic Literature', 'Social Class');

-- Book: Lady Windermere's Fan
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780141439693', keyword_id FROM keyword WHERE keyword IN ('Drama', 'Comedy', 'Satire', 'Victorian Society');

-- Book: The Picture of Dorian Gray and Other Stories
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780141442464', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Gothic', 'Oscar Wilde', 'Duality', 'Beauty', 'Short Stories');

-- Book: Emma
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780143105428', keyword_id FROM keyword WHERE keyword IN ('Romance', 'Classic', 'Society', 'Manners');

-- Book: Animal Farm
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780151010264', keyword_id FROM keyword WHERE keyword IN ('Political', 'Satire', 'Totalitarianism', 'Power');

-- Book: The Hobbit
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780261103283', keyword_id FROM keyword WHERE keyword IN ('Adventure', 'Fantasy', 'Quest', 'Magic');

-- Book: The Myth of Sisyphus and Other Essays
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780307276650', keyword_id FROM keyword WHERE keyword IN ('Philosophy', 'Existentialism', 'Absurdism', 'Life');

-- Book: The Kite Runner
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780307277712', keyword_id FROM keyword WHERE keyword IN ('Drama', 'Friendship', 'Betrayal', 'Redemption');

-- Book: Interpreter of Maladies
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780307278783', keyword_id FROM keyword WHERE keyword IN ('Short Stories', 'Culture', 'Identity', 'Relationships');

-- Book: Gone Girl
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780307588364', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'Thriller', 'Psychological', 'Deception');

-- Book: The Little Friend
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780316055436', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'Coming-of-Age', 'Southern', 'Family');

-- Book: The Little Friend
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780316055437', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'Coming-of-Age', 'Southern', 'Family');

-- Book: Circe
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780316556347', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Mythology', 'Gods', 'Hero');

-- Book: The Picture of Dorian Gray
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780345804358', keyword_id FROM keyword WHERE keyword IN ('Gothic', 'Morality', 'Art', 'Decadence');

-- Book: Colorless Tsukuru Tazaki and His Years of Pilgrimage
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780375718946', keyword_id FROM keyword WHERE keyword IN ('Japanese', 'Identity', 'Friendship', 'Journey');

-- Book: All the Light We Cannot See
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780385349570', keyword_id FROM keyword WHERE keyword IN ('Historical', 'World War II', 'Blindness', 'Fate');

-- Book: Inferno
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780385511213', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'Thriller', 'Art', 'Symbols');

-- Book: The Lost Symbol
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780385524282', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'Symbols', 'Secret Societies', 'Washington D.C.');

-- Book: Zone One
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780385524367', keyword_id FROM keyword WHERE keyword IN ('Post-apocalyptic', 'Zombies', 'Survival', 'New York City');

-- Book: The Intuitionist
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780385531204', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Race', 'Elevators', 'Identity');

-- Book: John Henry Days
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780385537039', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'History', 'Race', 'Legend');

-- Book: Origin
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780385537855', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'Thriller', 'Religion', 'Science');

-- Book: Origin
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780385537856', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'Thriller', 'Religion', 'Science');

-- Book: Sag Harbor
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780385542361', keyword_id FROM keyword WHERE keyword IN ('African-American', 'Coming of age', 'Youth');

-- Book: The Nickel Boys
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780385720045', keyword_id FROM keyword WHERE keyword IN ('Historical Fiction', 'Racism', 'Injustice');

-- Book: Apex Hides the Hurt
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780385720953', keyword_id FROM keyword WHERE keyword IN ('Literary Fiction', 'Identity', 'Branding');

-- Book: The Fall
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780394703955', keyword_id FROM keyword WHERE keyword IN ('Philosophical Fiction', 'Existentialism', 'Morality');

-- Book: Educated
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780399590504', keyword_id FROM keyword WHERE keyword IN ('Memoir', 'Education', 'Family');

-- Book: Harry Potter and the Prisoner of Azkaban
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780439139601', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Magic', 'Adventure');

-- Book: Harry Potter and the Order of the Phoenix
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780439358071', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Magic', 'Friendship');

-- Book: Harry Potter and the Half-Blood Prince
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780439358072', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Magic', 'Prophecy');

-- Book: Harry Potter and the Chamber of Secrets
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780439554893', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Magic', 'Mystery');

-- Book: Harry Potter and the Goblet of Fire
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780439554947', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Magic', 'Competition');


-- Book: Carrie
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780451169525', keyword_id FROM keyword WHERE keyword IN ('Horror', 'Supernatural', 'Bullying');

-- Book: Misery
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780451176462', keyword_id FROM keyword WHERE keyword IN ('Thriller', 'Psychological', 'Captivity');

-- Book: 1984
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780451524935', keyword_id FROM keyword WHERE keyword IN ('Dystopian', 'Totalitarianism', 'Surveillance');

-- Book: Sense and Sensibility
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780486284736', keyword_id FROM keyword WHERE keyword IN ('Classic', 'Romance', 'Sisters');

-- Book: The Fault in Our Stars
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780525478812', keyword_id FROM keyword WHERE keyword IN ('Young Adult', 'Cancer', 'Love');

-- Book: Kafka on the Shore
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780525501220', keyword_id FROM keyword WHERE keyword IN ('Magical Realism', 'Japan', 'Identity');

-- Book: There There
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780525520375', keyword_id FROM keyword WHERE keyword IN ('Contemporary', 'Native American', 'Identity');

-- Book: Becoming
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780525563235', keyword_id FROM keyword WHERE keyword IN ('Memoir', 'Autobiography', 'Empowerment');

-- Book: The Nightingale
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780525952662', keyword_id FROM keyword WHERE keyword IN ('Historical Fiction', 'World War II', 'Sisters');

-- Book: The Lord of the Rings
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780544003415', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Adventure', 'Epic');

-- Book: Harry Potter and the Sorcerer's Stone
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780545010221', keyword_id FROM keyword WHERE keyword IN ('Magic', 'Wizards', 'Friendship', 'Adventure');

-- Book: Harry Potter and the Deathly Hallows
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780545010222', keyword_id FROM keyword WHERE keyword IN ('Magic', 'Wizards', 'Friendship', 'Adventure');

-- Book: The Return of the King
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780547928203', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Adventure', 'Quest', 'Epic');

-- Book: The Two Towers
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780547928210', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Adventure', 'Quest', 'Epic');

-- Book: The Fellowship of the Ring
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780547928227', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Adventure', 'Quest', 'Epic');

-- Book: The Martian
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780553418026', keyword_id FROM keyword WHERE keyword IN ('Science Fiction', 'Mars', 'Survival', 'Space');

-- Book: Artemis
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780553448122', keyword_id FROM keyword WHERE keyword IN ('Science Fiction', 'Moon', 'Heist', 'Adventure');

-- Book: Project Hail Mary
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780553448123', keyword_id FROM keyword WHERE keyword IN ('Science Fiction', 'Space', 'Aliens', 'Survival');

-- Book: Normal People
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780571347292', keyword_id FROM keyword WHERE keyword IN ('Contemporary', 'Romance', 'Relationships', 'Coming-of-age');

-- Book: The Green Mile
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780671035429', keyword_id FROM keyword WHERE keyword IN ('Horror', 'Drama', 'Supernatural', 'Death Row');

-- Book: It
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780671039755', keyword_id FROM keyword WHERE keyword IN ('Horror', 'Thriller', 'Clown', 'Fear');

-- Book: The Stranger
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780679732259', keyword_id FROM keyword WHERE keyword IN ('Existentialism', 'Absurdism', 'Isolation', 'Indifference');

-- Book: The Fall
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780679733730', keyword_id FROM keyword WHERE keyword IN ('Existentialism', 'Philosophical', 'Guilt', 'Responsibility');

-- Book: The Rebel
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780679735772', keyword_id FROM keyword WHERE keyword IN ('Non-fiction', 'Philosophy', 'Revolution', 'Anarchy');

-- Book: Sputnik Sweetheart
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780679750536', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'Romance', 'Identity', 'Longing');

-- Book: A Farewell to Arms
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780684800715', keyword_id FROM keyword WHERE keyword IN ('War', 'Romance', 'Loss', 'Heroism');

-- Book: The Old Man and the Sea
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780684801469', keyword_id FROM keyword WHERE keyword IN ('Adventure', 'Fishing', 'Isolation', 'Determination');

-- Book: The Diamond as Big as the Ritz
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780684801520', keyword_id FROM keyword WHERE keyword IN ('Satire', 'Wealth', 'Fantasy', 'Secrets');

-- Book: Tender Is the Night
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780684830421', keyword_id FROM keyword WHERE keyword IN ('Romance', 'Psychological', 'Jazz Age', 'Decadence');

-- Book: This Side of Paradise
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780684830506', keyword_id FROM keyword WHERE keyword IN ('Coming-of-age', 'Love', 'Ambition', 'Society');

-- Book: Bernice Bobs Her Hair
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780684830507', keyword_id FROM keyword WHERE keyword IN ('Short stories', 'Humor', 'Social norms');

-- Book: The Beautiful and Damned
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780684833392', keyword_id FROM keyword WHERE keyword IN ('Romance', 'Wealth', 'Jazz Age');

-- Book: Where the Crawdads Sing
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780735219113', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'Nature', 'Coming-of-age');

-- Book: Little Fires Everywhere
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780735224292', keyword_id FROM keyword WHERE keyword IN ('Drama', 'Family secrets', 'Identity');

-- Book: The Great Gatsby
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780743273565', keyword_id FROM keyword WHERE keyword IN ('Classic', 'Wealth', 'Lost love');

-- Book: The Last Tycoon
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780743273566', keyword_id FROM keyword WHERE keyword IN ('Hollywood', 'Ambition', 'Golden Age');

-- Book: The Secret History (Collector's Edition)
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780747596461', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'College life', 'Dark secrets');

-- Book: Mistborn
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780765326355', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Magic', 'Heist');

-- Book: Mistborn: The Final Empire
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780765377142', keyword_id FROM keyword WHERE keyword IN ('Epic fantasy', 'Magic system', 'Rebellion');

-- Book: Siege and Storm
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780805094602', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Adventure', 'Power struggle');


-- Book: Ruin and Rising
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780805094619', keyword_id FROM keyword WHERE keyword IN ('Magic', 'Adventure', 'Fantasy World');

-- Book: The Book Thief
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780812987114', keyword_id FROM keyword WHERE keyword IN ('Historical Fiction', 'World War II', 'Books and Reading');

-- Book: The Underground Railroad
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780812988406', keyword_id FROM keyword WHERE keyword IN ('Historical Fiction', 'Slavery', 'Escape');

-- Book: The Girl on the Train
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9780857521353', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'Thriller', 'Psychological Suspense');

-- Book: Shadow and Bone
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781250027436', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Magic', 'Adventure', 'Young Adult');

-- Book: Six of Crows
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781250042763', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Heist', 'Young Adult');

-- Book: King of Scars
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781250142283', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Magic', 'Adventure', 'Young Adult');

-- Book: Rule of Wolves
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781250142306', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Magic', 'Adventure', 'Young Adult');

-- Book: The Great Alone
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781250178619', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Family Drama', 'Alaska');

-- Book: Ninth House
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781250313072', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Mystery', 'Secret Societies');

-- Book: The Secret History
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781400031702', keyword_id FROM keyword WHERE keyword IN ('Mystery', 'College Life', 'Dark Secrets'); 

-- Book: The Help
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781400064168', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Race Relations', 'Civil Rights');

-- Book: Angels & Demons
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781416524793', keyword_id FROM keyword WHERE keyword IN ('Thriller', 'Mystery', 'Conspiracy');

-- Book: The Da Vinci Code
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781416570868', keyword_id FROM keyword WHERE keyword IN ('Thriller', 'Mystery', 'Conspiracy');

-- Book: The Lost Symbol
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781416572366', keyword_id FROM keyword WHERE keyword IN ('Thriller', 'Mystery', 'Conspiracy');

-- Book: Milk and Honey
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781449486792', keyword_id FROM keyword WHERE keyword IN ('Poetry', 'Self-expression', 'Emotions');

-- Book: Sweet Thing
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781476763954', keyword_id FROM keyword WHERE keyword IN ('Romance', 'Music', 'New York City');

-- Book: The Last Post
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501105777', keyword_id FROM keyword WHERE keyword IN ('Historical Fiction', 'War', 'Post-War');

-- Book: After the Rain
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501105807', keyword_id FROM keyword WHERE keyword IN ('Fiction', 'Relationships', 'Healing');

-- Book: Swear on This Life
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501133435', keyword_id FROM keyword WHERE keyword IN ('love', 'relationships', 'identity', 'drama');

-- Book: Blind Kiss
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501133466', keyword_id FROM keyword WHERE keyword IN ('romance', 'love', 'relationships', 'drama');

-- Book: The Shining
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501142970', keyword_id FROM keyword WHERE keyword IN ('horror', 'thriller', 'supernatural', 'psychological');

-- Book: My Grandmother Asked Me to Tell You She's Sorry
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501160769', keyword_id FROM keyword WHERE keyword IN ('family', 'relationships', 'coming of age', 'friendship');

-- Book: A Man Called Ove
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501160790', keyword_id FROM keyword WHERE keyword IN ('humor', 'heartwarming', 'friendship', 'loss');

-- Book: Us Against You
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501160806', keyword_id FROM keyword WHERE keyword IN ('sports', 'drama', 'rivalry', 'community');

-- Book: Beartown
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501166785', keyword_id FROM keyword WHERE keyword IN ('hockey', 'drama', 'small town', 'community');

-- Book: Wish You Were Here
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501168529', keyword_id FROM keyword WHERE keyword IN ('romance', 'love', 'travel', 'self-discovery');

-- Book: The Woman in Cabin 10
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501168802', keyword_id FROM keyword WHERE keyword IN ('mystery', 'thriller', 'suspense', 'psychological');

-- Book: Britt-Marie Was Here
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501173218', keyword_id FROM keyword WHERE keyword IN ('humor', 'quirky', 'small town', 'friendship');

-- Book: Educated: A Memoir
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501173219', keyword_id FROM keyword WHERE keyword IN ('memoir', 'autobiography', 'education', 'family');

-- Book: Pet Sematary
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501175465', keyword_id FROM keyword WHERE keyword IN ('horror', 'thriller', 'supernatural', 'psychological');

-- Book: The Turn of the Key
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501175466', keyword_id FROM keyword WHERE keyword IN ('mystery', 'thriller', 'suspense', 'psychological');

-- Book: Before We Were Strangers
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501175565', keyword_id FROM keyword WHERE keyword IN ('romance', 'love', 'second chance', 'friendship');

-- Book: Anxious People
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501178269', keyword_id FROM keyword WHERE keyword IN ('humor', 'quirky', 'mystery', 'relationships');

-- Book: The Stand
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781501180989', keyword_id FROM keyword WHERE keyword IN ('horror', 'apocalyptic', 'epic', 'survival');

-- Book: The Egg and Other Stories
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781540682178', keyword_id FROM keyword WHERE keyword IN ('short stories', 'philosophical', 'fantasy', 'existential');

-- Book: A Thousand Splendid Suns
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781594489501', keyword_id FROM keyword WHERE keyword IN ('historical fiction', 'drama', 'women', 'family');

-- Book: And the Mountains Echoed FUTURISTIC
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781594631764', keyword_id FROM keyword WHERE keyword IN ('family', 'drama', 'multigenerational', 'saga');

-- Book: The Goldfinch
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781594633940', keyword_id FROM keyword WHERE keyword IN ('fiction', 'art', 'friendship', 'coming of age');

-- Book: The Martian Chronicles
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781607014544', keyword_id FROM keyword WHERE keyword IN ('Mars', 'Space', 'Aliens', 'Science Fiction', 'Exploration');

-- Book: My Brilliant Friend
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781609455739', keyword_id FROM keyword WHERE keyword IN ('Friendship', 'Coming of Age', 'Family', 'Italian', 'Drama');

-- Book: An American Marriage
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781616208684', keyword_id FROM keyword WHERE keyword IN ('Marriage', 'Family', 'Drama', 'Race', 'Contemporary');

-- Book: Crooked Kingdom
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781627792134', keyword_id FROM keyword WHERE keyword IN ('Fantasy', 'Adventure', 'Heist', 'Young Adult', 'Magic');

-- Book: The Egg
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781785038881', keyword_id FROM keyword WHERE keyword IN ('Philosophy', 'Short Stories', 'Existentialism', 'Metaphysical', 'Life');

-- Book: An Astronaut's Guide to Life on Earth
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781785654584', keyword_id FROM keyword WHERE keyword IN ('Astronaut', 'Biography', 'Memoir', 'Space', 'Inspiration');

-- Book: A Man Called Ove: The Play
INSERT INTO book_keywords (ISBN, keyword_id)
SELECT '9781982135848', keyword_id FROM keyword WHERE keyword IN ('Drama', 'Comedy', 'Friendship', 'Heartwarming', 'Adaptation');

use school_libraries;

INSERT INTO genre (genre) VALUES
('Mystery'),
('Romance'),
('Science Fiction'),
('Fantasy'),
('Thriller'),
('Historical Fiction'),
('Horror'),
('Biography'),
('Short Stories'), 
('Humor'),
('Memoir'),
('Crime'),
('Adventure'),
('Young Adult'),
('Contemporary'),
('Poetry'),
('Self-help'),
('Business'),
('Travel'),
('Science'),
('Philosophy'),
('Comedy'),
('Drama'),
('Action'),
('Paranormal'),
('Western'),
('Classic'), 
('Literature'), 
('Fiction'),
('Magical Realism'), 
('Surrealism'),
('Philosophical Fiction'),
('Gothic'), 
('Classic Literature'),
('Social Issues'),
('Satire'),
('Suspense'),
('Dystopian'),
('Supernatural'),
('Urban Fantasy'),
('Psychological Thriller'),
('Coming of Age'),
('Family'),
('War'),
('Inspirational');



  
-- Book: Evil Under the Sun
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780062073600', genre_id FROM genre WHERE genre IN ('Mystery', 'Crime', 'Detective');

-- Book: American Gods
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780062255655', genre_id FROM genre WHERE genre IN ('Fantasy', 'Mythology');

-- Book: Go Set a Watchman
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780062409867', genre_id FROM genre WHERE genre IN ('Fiction', 'Drama');

-- Book: The Catcher in the Rye
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780062457714', genre_id FROM genre WHERE genre IN ('Fiction', 'Coming of age');

-- Book: Norwegian Wood
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780099448792', genre_id FROM genre WHERE genre IN ('Fiction', 'Romance', 'Drama');

-- Book: Hard-Boiled Wonderland and the End of the World
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780099448793', genre_id FROM genre WHERE genre IN ('Science Fiction', 'Fantasy', 'Literary Fiction');

-- Book: 1Q84
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780099458326', genre_id FROM genre WHERE genre IN ('Fiction', 'Fantasy', 'Magical Realism');

-- Book: The Wind-Up Bird Chronicle
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780099528988', genre_id FROM genre WHERE genre IN ('Fiction', 'Magical Realism', 'Surrealism');

-- Book: The Importance of Being Earnest and Other Plays
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780140433922', genre_id FROM genre WHERE genre IN ('Drama', 'Comedy');

-- Book: The Importance of Being Earnest
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780140621195', genre_id FROM genre WHERE genre IN ('Drama', 'Comedy');

-- Book: The ABC Murders
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780007113804', genre_id FROM genre WHERE genre IN ('Mystery', 'Crime', 'Detective');

-- Book: The Silmarillion
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780007136556', genre_id FROM genre WHERE genre IN ('Fantasy', 'Adventure');

-- Book: Americanah
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780007356348', genre_id FROM genre WHERE genre IN ('Fiction', 'Drama', 'Romance', 'Social Issues');

-- Book: To Kill a Mockingbird
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780061120084', genre_id FROM genre WHERE genre IN ('Classic', 'Literature', 'Coming of age', 'Social Issues');

-- Book: The Alchemist
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780061120085', genre_id FROM genre WHERE genre IN ('Fiction', 'Adventure', 'Romance', 'Philosophy');

-- Book: Death on the Nile
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780062073495', genre_id FROM genre WHERE genre IN ('Mystery', 'Crime', 'Detective', 'Suspense');

-- Book: Murder on the Orient Express
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780062073501', genre_id FROM genre WHERE genre IN ('Mystery', 'Crime', 'Detective', 'Classic');

-- Book: The Murder of Roger Ackroyd
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780062073549', genre_id FROM genre WHERE genre IN ('Mystery', 'Crime', 'Detective', 'Thriller');

-- Book: And Then There Were None
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780062073563', genre_id FROM genre WHERE genre IN ('Mystery', 'Crime', 'Detective', 'Suspense');

-- Book: Murder at the Vicarage
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780062073564', genre_id FROM genre WHERE genre IN ('Mystery', 'Crime', 'Detective', 'Classic');

-- Book: The Plague
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780141185130', genre_id FROM genre WHERE genre IN ('Fiction', 'Philosophical Fiction');

-- Book: The Rebel
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780141185239', genre_id FROM genre WHERE genre IN ('Non-Fiction', 'Philosophy');

-- Book: Keep the Aspidistra Flying
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780141187396', genre_id FROM genre WHERE genre IN ('Fiction', 'Satire', 'Social Commentary');

-- Book: Homage to Catalonia
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780141187761', genre_id FROM genre WHERE genre IN ('Non-Fiction', 'Memoir', 'Politics');

-- Book: The Picture of Dorian Gray and Other Writings
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780141198963', genre_id FROM genre WHERE genre IN ('Fiction', 'Gothic', 'Classic Literature');

-- Book: Down and Out in Paris and London
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780141393049', genre_id FROM genre WHERE genre IN ('Non-Fiction', 'Memoir');

-- Book: The Happy Prince and Other Stories
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780141397642', genre_id FROM genre WHERE genre IN ('Fiction', 'Short Stories', 'Fairy Tales');

-- Book: Pride and Prejudice
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780141439518', genre_id FROM genre WHERE genre IN ('Fiction', 'Romance', 'Classic Literature');

-- Book: Lady Windermere's Fan
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780141439693', genre_id FROM genre WHERE genre IN ('Drama', 'Comedy', 'Satire');

-- Book: The Picture of Dorian Gray and Other Stories
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780141442464', genre_id FROM genre WHERE genre IN ('Fiction', 'Gothic', 'Classic Literature', 'Short Stories');


-- Book: Emma
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780143105428', genre_id FROM genre WHERE genre IN ('Fiction', 'Romance', 'Classic Literature');

-- Book: Animal Farm
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780151010264', genre_id FROM genre WHERE genre IN ('Fiction', 'Political Allegory', 'Satire');

-- Book: The Hobbit
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780261103283', genre_id FROM genre WHERE genre IN ('Fiction', 'Fantasy', 'Adventure');

-- Book: The Myth of Sisyphus and Other Essays
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780307276650', genre_id FROM genre WHERE genre IN ('Non-Fiction', 'Philosophy', 'Essays');

-- Book: The Kite Runner
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780307277712', genre_id FROM genre WHERE genre IN ('Fiction', 'Drama', 'Historical Fiction');

-- Book: Interpreter of Maladies
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780307278783', genre_id FROM genre WHERE genre IN ('Fiction', 'Short Stories', 'Cultural', 'Literary Fiction');

-- Book: Gone Girl
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780307588364', genre_id FROM genre WHERE genre IN ('Fiction', 'Mystery', 'Thriller', 'Psychological Fiction');

-- Book: The Little Friend
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780316055436', genre_id FROM genre WHERE genre IN ('Fiction', 'Mystery', 'Coming-of-Age');

-- Book: The Little Friend
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780316055437', genre_id FROM genre WHERE genre IN ('Fiction', 'Mystery', 'Coming-of-Age');

-- Book: Circe
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780316556347', genre_id FROM genre WHERE genre IN ('Fiction', 'Fantasy', 'Mythology', 'Historical Fiction');


-- Book: The Picture of Dorian Gray
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780345804358', genre_id FROM genre WHERE genre IN ('Fiction', 'Classics');

-- Book: Colorless Tsukuru Tazaki and His Years of Pilgrimage
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780375718946', genre_id FROM genre WHERE genre IN ('Fiction', 'Contemporary');

-- Book: All the Light We Cannot See
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780385349570', genre_id FROM genre WHERE genre IN ('Fiction', 'Historical Fiction');

-- Book: Inferno
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780385511213', genre_id FROM genre WHERE genre IN ('Fiction', 'Thriller');

-- Book: The Lost Symbol
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780385524282', genre_id FROM genre WHERE genre IN ('Fiction', 'Mystery');

-- Book: Zone One
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780385524367', genre_id FROM genre WHERE genre IN ('Fiction', 'Science Fiction');

-- Book: The Intuitionist
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780385531204', genre_id FROM genre WHERE genre IN ('Fiction', 'Literary Fiction');

-- Book: John Henry Days
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780385537039', genre_id FROM genre WHERE genre IN ('Fiction', 'Historical Fiction');

-- Book: Origin
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780385537855', genre_id FROM genre WHERE genre IN ('Fiction', 'Thriller');

-- Book: Origin
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780385537856', genre_id FROM genre WHERE genre IN ('Fiction', 'Thriller');

-- Book: Sag Harbor
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780385542361', genre_id FROM genre WHERE genre IN ('Fiction', 'Coming-of-age');

-- Book: The Nickel Boys
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780385720045', genre_id FROM genre WHERE genre IN ('Fiction', 'Historical Fiction');

-- Book: Apex Hides the Hurt
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780385720953', genre_id FROM genre WHERE genre IN ('Fiction', 'Literary Fiction');

-- Book: The Fall
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780394703955', genre_id FROM genre WHERE genre IN ('Fiction', 'Philosophical Fiction');

-- Book: Educated
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780399590504', genre_id FROM genre WHERE genre IN ('Non-Fiction', 'Memoir');

-- Book: Harry Potter and the Prisoner of Azkaban
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780439139601', genre_id FROM genre WHERE genre IN ('Fiction', 'Fantasy');

-- Book: Harry Potter and the Order of the Phoenix
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780439358071', genre_id FROM genre WHERE genre IN ('Fiction', 'Fantasy');

-- Book: Harry Potter and the Half-Blood Prince
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780439358072', genre_id FROM genre WHERE genre IN ('Fiction', 'Fantasy');

-- Book: Harry Potter and the Chamber of Secrets
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780439554893', genre_id FROM genre WHERE genre IN ('Fiction', 'Fantasy');

-- Book: Harry Potter and the Goblet of Fire
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780439554947', genre_id FROM genre WHERE genre IN ('Fiction', 'Fantasy');

-- Book: Carrie
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780451169525', genre_id FROM genre WHERE genre IN ('Horror', 'Thriller');

-- Book: Misery
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780451176462', genre_id FROM genre WHERE genre IN ('Horror', 'Thriller');

-- Book: 1984
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780451524935', genre_id FROM genre WHERE genre IN ('Dystopian', 'Science Fiction');

-- Book: Sense and Sensibility
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780486284736', genre_id FROM genre WHERE genre IN ('Classic', 'Romance');

-- Book: The Fault in Our Stars
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780525478812', genre_id FROM genre WHERE genre IN ('Young Adult', 'Romance');

-- Book: Kafka on the Shore
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780525501220', genre_id FROM genre WHERE genre IN ('Magical Realism', 'Fiction');

-- Book: There There
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780525520375', genre_id FROM genre WHERE genre IN ('Contemporary', 'Fiction');

-- Book: Becoming
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780525563235', genre_id FROM genre WHERE genre IN ('Memoir', 'Autobiography');

-- Book: The Nightingale
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780525952662', genre_id FROM genre WHERE genre IN ('Historical Fiction', 'War');

-- Book: The Lord of the Rings
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780544003415', genre_id FROM genre WHERE genre IN ('Fantasy', 'Adventure');


-- Book: Harry Potter and the Sorcerer's Stone
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780545010221', genre_id FROM genre WHERE genre IN ('Fantasy', 'Adventure');

-- Book: Harry Potter and the Deathly Hallows
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780545010222', genre_id FROM genre WHERE genre IN ('Fantasy', 'Adventure');

-- Book: The Return of the King
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780547928203', genre_id FROM genre WHERE genre IN ('Fantasy', 'Adventure');

-- Book: The Two Towers
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780547928210', genre_id FROM genre WHERE genre IN ('Fantasy', 'Adventure');

-- Book: The Fellowship of the Ring
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780547928227', genre_id FROM genre WHERE genre IN ('Fantasy', 'Adventure');

-- Book: The Martian
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780553418026', genre_id FROM genre WHERE genre IN ('Science Fiction', 'Adventure');

-- Book: Artemis
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780553448122', genre_id FROM genre WHERE genre IN ('Science Fiction', 'Adventure');

-- Book: Project Hail Mary
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780553448123', genre_id FROM genre WHERE genre IN ('Science Fiction', 'Adventure');

-- Book: Normal People
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780571347292', genre_id FROM genre WHERE genre IN ('Contemporary', 'Romance');

-- Book: The Green Mile
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780671035429', genre_id FROM genre WHERE genre IN ('Horror', 'Drama');

-- Book: It
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780671039755', genre_id FROM genre WHERE genre IN ('Horror', 'Thriller', 'Supernatural');

-- Book: The Stranger
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780679732259', genre_id FROM genre WHERE genre IN ('Fiction', 'Philosophical');

-- Book: The Fall
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780679733730', genre_id FROM genre WHERE genre IN ('Fiction', 'Philosophical');

-- Book: The Rebel
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780679735772', genre_id FROM genre WHERE genre IN ('Non-fiction', 'Philosophy');

-- Book: Sputnik Sweetheart
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780679750536', genre_id FROM genre WHERE genre IN ('Fiction', 'Mystery', 'Romance');

-- Book: A Farewell to Arms
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780684800715', genre_id FROM genre WHERE genre IN ('Fiction', 'War', 'Romance');

-- Book: The Old Man and the Sea
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780684801469', genre_id FROM genre WHERE genre IN ('Fiction', 'Adventure', 'Literary');

-- Book: The Diamond as Big as the Ritz
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780684801520', genre_id FROM genre WHERE genre IN ('Fiction', 'Satire', 'Short Stories');

-- Book: Tender Is the Night
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780684830421', genre_id FROM genre WHERE genre IN ('Fiction', 'Romance', 'Psychological');

-- Book: This Side of Paradise
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780684830506', genre_id FROM genre WHERE genre IN ('Fiction', 'Coming-of-age');


-- Book: Bernice Bobs Her Hair
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780684830507', genre_id FROM genre WHERE genre IN ('Short Stories', 'Humor');

-- Book: The Beautiful and Damned
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780684833392', genre_id FROM genre WHERE genre IN ('Fiction', 'Romance', 'Drama');

-- Book: Where the Crawdads Sing
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780735219113', genre_id FROM genre WHERE genre IN ('Fiction', 'Mystery', 'Coming-of-age');

-- Book: Little Fires Everywhere
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780735224292', genre_id FROM genre WHERE genre IN ('Fiction', 'Drama', 'Family');

-- Book: The Great Gatsby
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780743273565', genre_id FROM genre WHERE genre IN ('Fiction', 'Classic', 'Drama');

-- Book: The Last Tycoon
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780743273566', genre_id FROM genre WHERE genre IN ('Fiction', 'Classic', 'Drama');

-- Book: The Secret History (Collector's Edition)
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780747596461', genre_id FROM genre WHERE genre IN ('Fiction', 'Mystery', 'Thriller');

-- Book: Mistborn
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780765326355', genre_id FROM genre WHERE genre IN ('Fiction', 'Fantasy', 'Adventure');

-- Book: Mistborn: The Final Empire
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780765377142', genre_id FROM genre WHERE genre IN ('Fiction', 'Fantasy', 'Adventure');

-- Book: Siege and Storm
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780805094602', genre_id FROM genre WHERE genre IN ('Fiction', 'Fantasy', 'Adventure');

-- Book: Ruin and Rising
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780805094619', genre_id FROM genre WHERE genre IN ('Fantasy', 'Adventure');

-- Book: The Book Thief
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780812987114', genre_id FROM genre WHERE genre IN ('Historical Fiction', 'War');

-- Book: The Underground Railroad
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780812988406', genre_id FROM genre WHERE genre IN ('Historical Fiction', 'Slavery');

-- Book: The Girl on the Train
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9780857521353', genre_id FROM genre WHERE genre IN ('Mystery', 'Thriller');

-- Book: Shadow and Bone
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781250027436', genre_id FROM genre WHERE genre IN ('Fantasy', 'Young Adult');

-- Book: Six of Crows
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781250042763', genre_id FROM genre WHERE genre IN ('Fantasy', 'Young Adult');

-- Book: King of Scars
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781250142283', genre_id FROM genre WHERE genre IN ('Fantasy', 'Young Adult');

-- Book: Rule of Wolves
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781250142306', genre_id FROM genre WHERE genre IN ('Fantasy', 'Young Adult');

-- Book: The Great Alone
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781250178619', genre_id FROM genre WHERE genre IN ('Fiction', 'Family Drama');

-- Book: Ninth House
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781250313072', genre_id FROM genre WHERE genre IN ('Fantasy', 'Mystery');

-- Book: The Secret History
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781400031702', genre_id FROM genre WHERE genre IN ('Mystery', 'Contemporary', 'Literary Fiction');

-- Book: The Help
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781400064168', genre_id FROM genre WHERE genre IN ('Historical Fiction', 'Drama', 'Social Issues');

-- Book: Angels & Demons
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781416524793', genre_id FROM genre WHERE genre IN ('Thriller', 'Mystery', 'Suspense');

-- Book: The Da Vinci Code
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781416570868', genre_id FROM genre WHERE genre IN ('Thriller', 'Mystery', 'Suspense');

-- Book: The Lost Symbol
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781416572366', genre_id FROM genre WHERE genre IN ('Thriller', 'Mystery', 'Suspense');

-- Book: Milk and Honey
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781449486792', genre_id FROM genre WHERE genre IN ('Poetry', 'Self-help', 'Emotions');

-- Book: Sweet Thing
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781476763954', genre_id FROM genre WHERE genre IN ('Romance', 'Contemporary', 'Music');

-- Book: The Last Post
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501105777', genre_id FROM genre WHERE genre IN ('Historical Fiction', 'War', 'Drama');

-- Book: After the Rain
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501105807', genre_id FROM genre WHERE genre IN ('Fiction', 'Contemporary', 'Romance');

-- Book: Swear on This Life
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501133435', genre_id FROM genre WHERE genre IN ('Contemporary', 'Romance', 'Fiction');

-- Book: Blind Kiss
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501133466', genre_id FROM genre WHERE genre IN ('Romance', 'Contemporary', 'Drama');

-- Book: The Shining
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501142970', genre_id FROM genre WHERE genre IN ('Horror', 'Thriller', 'Suspense');

-- Book: My Grandmother Asked Me to Tell You She's Sorry
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501160769', genre_id FROM genre WHERE genre IN ('Fiction', 'Contemporary', 'Family');

-- Book: A Man Called Ove
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501160790', genre_id FROM genre WHERE genre IN ('Fiction', 'Contemporary', 'Humor');

-- Book: Us Against You
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501160806', genre_id FROM genre WHERE genre IN ('Fiction', 'Sports', 'Drama');

-- Book: Beartown
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501166785', genre_id FROM genre WHERE genre IN ('Fiction', 'Sports', 'Drama');

-- Book: Wish You Were Here
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501168529', genre_id FROM genre WHERE genre IN ('Fiction', 'Contemporary', 'Romance');

-- Book: The Woman in Cabin 10
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501168802', genre_id FROM genre WHERE genre IN ('Mystery', 'Thriller', 'Suspense');

-- Book: Britt-Marie Was Here
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501173218', genre_id FROM genre WHERE genre IN ('Fiction', 'Contemporary', 'Humor');

-- Book: Educated: A Memoir
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501173219', genre_id FROM genre WHERE genre IN ('Memoir', 'Biography', 'Education');

-- Book: Pet Sematary
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501175465', genre_id FROM genre WHERE genre IN ('Horror', 'Thriller', 'Supernatural');

-- Book: The Turn of the Key
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501175466', genre_id FROM genre WHERE genre IN ('Mystery', 'Thriller', 'Suspense');

-- Book: Before We Were Strangers
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501175565', genre_id FROM genre WHERE genre IN ('Romance', 'Contemporary', 'Fiction');

-- Book: Anxious People
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501178269', genre_id FROM genre WHERE genre IN ('Humor', 'Mystery', 'Fiction');

-- Book: The Stand
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781501180989', genre_id FROM genre WHERE genre IN ('Horror', 'Science Fiction', 'Post-Apocalyptic');

-- Book: The Egg and Other Stories
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781540682178', genre_id FROM genre WHERE genre IN ('Short Stories', 'Fiction');

-- Book: A Thousand Splendid Suns
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781594489501', genre_id FROM genre WHERE genre IN ('Historical Fiction', 'Drama');

-- Book: And the Mountains Echoed
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781594631764', genre_id FROM genre WHERE genre IN ('Fiction', 'Family', 'Saga');

-- Book: The Goldfinch
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781594633940', genre_id FROM genre WHERE genre IN ('Fiction', 'Art', 'Coming of Age');

-- Book: The Martian Chronicles
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781607014544', genre_id FROM genre WHERE genre IN ('Science Fiction', 'Short Stories');

-- Book: My Brilliant Friend
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781609455739', genre_id FROM genre WHERE genre IN ('Fiction', 'Drama', 'Coming of Age');

-- Book: An American Marriage
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781616208684', genre_id FROM genre WHERE genre IN ('Fiction', 'Contemporary', 'Drama');

-- Book: Crooked Kingdom
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781627792134', genre_id FROM genre WHERE genre IN ('Fantasy', 'Adventure', 'Young Adult');

-- Book: The Egg
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781785038881', genre_id FROM genre WHERE genre IN ('Philosophy', 'Short Stories');

-- Book: An Astronaut's Guide to Life on Earth
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781785654584', genre_id FROM genre WHERE genre IN ('Biography', 'Memoir', 'Space');

-- Book: A Man Called Ove: The Play
INSERT INTO book_genre (ISBN, genre_id)
SELECT '9781982135848', genre_id FROM genre WHERE genre IN ('Drama', 'Comedy');



INSERT INTO users (user_first_name, user_last_name, bday, user_role, sign_day, username, user_password)
VALUES
('Nikos', 'Papadopoulos', '1987-06-15', 'teacher', '2021-02-05', 'nikospapad', 'papadopoulos123'),
('Maria', 'Georgiou', '1990-08-22', 'teacher', '2021-03-10', 'mariag', 'georgiou456'),
('Dimitris', 'Vlachos', '2008-12-07', 'student', '2021-04-18', 'dimitrisv', 'vlachospass'),
('Katerina', 'Christou', '1991-02-19', 'teacher', '2021-05-05', 'katerinach', 'christoupwd'),
('Giannis', 'Papadakis', '2006-09-14', 'student', '2021-06-22', 'giannisp', 'papadakis123'),
('Dimitris', 'Papadopoulos', '2005-03-12', 'teacher', '2021-02-15', 'dimitrisp', 'papadopoulos123'),
('Maria', 'Georgiou', '1990-08-22', 'teacher', '2021-02-20', 'mariageorg', 'georgiou456'),
('Ioannis', 'Vlachos', '1987-11-05', 'teacher', '2021-02-25', 'ioannisv', 'vlachospass'),
('Vaso', 'Mproumi', '1982-06-18', 'teacher', '2021-03-01', 'vasomp', 'christoupwd'),
('Giorgos', 'Papadakis', '1989-09-14', 'teacher', '2021-03-06', 'giorgosp', 'papadakis123'),
('Eleni', 'Papadopoulos', '2006-07-18', 'student', '2021-02-15', 'elenip', 'papadopoulos123'),
('Konstantina', 'Papaspyrou', '2006-07-18', 'student', '2021-02-15', 'konpapasp', 'papadopoulos123'),
('Xrysa', 'Leivaditi', '2005-11-30', 'student', '2021-02-15', 'xrysaleiv', 'papadopoulos123'),
('Georgios', 'Tokalis', '2005-06-12', 'student', '2021-02-15', 'georgiotok', 'papadopoulos123'),
('Maria', 'Papadopoulou', '2008-12-25', 'student', '2021-02-15', 'mariap', 'papadopoulos123'),
('Nikos', 'Georgiou', '2007-05-10', 'student', '2021-02-20', 'nikosg', 'georgiou456'),
('Eleni', 'Grammatikaki', '2006-08-25', 'student', '2021-02-20', 'elenigr', 'georgiou456'),
('Dimitris', 'Georgiou', '2005-12-07', 'student', '2021-02-20', 'dimitrisg', 'georgiou456'),
('Georgios', 'Georgiou', '2008-10-15', 'student', '2021-02-20', 'georgiosg', 'georgiou456'),
('Marina', 'Georgiou', '2005-11-13', 'student', '2021-02-20', 'marinag', 'georgiou456'),
('Ioanna', 'Vlachou', '2007-07-03', 'student', '2021-02-25', 'ioannav', 'vlachospass'),
('Dimitris', 'Xenikakis', '2006-10-18', 'student', '2021-02-25', 'dimitrisxen', 'vlachospass'),
('Katerina', 'Vlachou', '2005-03-01', 'student', '2021-02-25', 'katerinav', 'vlachospass'),
('Maria', 'Vlachou', '2006-06-14', 'student', '2021-02-25', 'mariav', 'vlachospass'),
('Giannis', 'Stathopoulos', '2009-09-27', 'student', '2021-02-25', 'giannstath', 'vlachospass'),
('Nikos', 'Christopoulos', '2007-01-22', 'student', '2021-03-01', 'nikosc', 'christopoulos'),
('Eugenia', 'Christidi', '2006-04-08', 'student', '2021-03-01', 'eugeniachr', 'eugech'),
('Georgia', 'Nikoglou', '2005-08-18', 'student', '2021-03-01', 'nikoglou', 'nikogeo'),
('Georgios', 'Christopoulos', '2010-10-02', 'student', '2021-03-01', 'georgiosc', 'christopoulos'),
('Maria', 'Christopoulos', '2009-12-15', 'student', '2021-03-01', 'mariac', 'christopoulos'),
('Nikos', 'Papadakis', '2007-09-05', 'student', '2021-03-06', 'nikospapadakis', 'papadakis123'),
('Eleni', 'Papadaki', '2006-12-20', 'student', '2021-03-06', 'elenipapadaki', 'papadakis123'),
('Dimitra', 'Papadakis', '2005-04-02', 'student', '2021-03-06', 'dimitrap', 'papadakis123'),
('Georgios', 'Papadakis', '2007-06-15', 'student', '2021-03-06', 'georgiosp', 'papadakis123'),
('Maria', 'Papadakis', '2006-10-28', 'student', '2021-03-06', 'mariapapad', 'papadakis123'),
('Kostas', 'Georgiou', '1978-03-15', 'teacher', '2021-07-02', 'kostasg', 'georgiou123'),
('Sophia', 'Pappas', '1976-11-28', 'teacher', '2021-09-12', 'sophiap', 'pappas456'),
('Panos', 'Karakostas', '1981-09-03', 'teacher', '2021-05-18', 'panosk', 'karakostas789'),
('Eleni', 'Dimitriou', '1989-05-21', 'teacher', '2021-08-30', 'elenid', 'dimitriou321'),
('Stefanos', 'Giannopoulos', '1984-12-07', 'teacher', '2021-02-25', 'stefanosg', 'giannopoulos987'),
('Maria', 'Georgakopoulou', '2007-02-12', 'student', '2021-07-02', 'mariageorga', 'georgiou123'),
('Manos', 'Xenakis', '2006-05-25', 'student', '2021-07-02', 'manosx', 'georgiou123'),
('Dimitra', 'Georgiou', '2005-09-08', 'student', '2021-07-02', 'dimitrag', 'georgiou123'),
('Panagiotis', 'Papagiannis', '2006-11-21', 'student', '2021-07-02', 'papapana', 'papapana123'),
('Eleutheria', 'Maniadi', '1975-12-17', 'student', '2021-07-02', 'elefman', 'georgiou123'),
('Manolis', 'Pappas', '2007-07-15', 'student', '2021-09-12', 'manosp', 'pappas456'),
('Maro', 'Nikolaidou', '2006-10-28', 'student', '2021-09-12', 'maronik', 'pappas456'),
('Nikos', 'Pappas', '2005-03-03', 'student', '2021-09-12', 'nikosp', 'pappas456'),
('Eleni', 'Pappa', '2009-06-16', 'student', '2021-09-12', 'elenipapa', 'pappas456'),
('Giorgos', 'Pappas', '2007-09-29', 'student', '2021-09-12', 'giorgospapas', 'pappas456'),
('Dimitra', 'Karakostas', '2007-10-03', 'student', '2021-05-18', 'dimitrak', 'karakostas789'),
('Maria', 'Karakostas', '2006-01-18', 'student', '2021-05-18', 'mariak', 'karakostas789'),
('Nikos', 'Karakostas', '2005-05-02', 'student', '2021-05-18', 'nikosk', 'karakostas789'),
('Giorgos', 'Karakostas', '2009-07-24', 'student', '2021-05-18', 'giorgosk', 'karakostas789'),
('Dimitris', 'Dimitriou', '2007-12-21', 'student', '2021-08-30', 'dimitrisd', 'dimitriou321'),
('Maria', 'Dimitriou', '2006-03-04', 'student', '2021-08-30', 'mariad', 'dimitriou321'),
('Nikos', 'Dimitriou', '2005-07-18', 'student', '2021-08-30', 'nikosd', 'dimitriou321'),
('Danai', 'Ntenekou', '2009-10-31', 'student', '2021-08-30', 'dananrwk', 'dekdan321'),
('Giorgos', 'Dimitriou', '2008-12-12', 'student', '2021-08-30', 'giorgosd', 'dimitriou321'),
('Dimitris', 'Giannakidis', '2007-09-02', 'student', '2021-02-25', 'dimitrisgianak', 'giannopoulos987'),
('Maria', 'Giannopoulos', '2006-12-16', 'student', '2021-02-25', 'mariagianop', 'giannopoulos987'),
('Nikos', 'Giannopoulos', '2005-04-01', 'student', '2021-02-25', 'nikosgiano', 'giannopoulos987'),
('Eleni', 'Giannopoulos', '2010-06-14', 'student', '2021-02-25', 'elenigianno', 'giannopoulos987'),
('Giorgos', 'Giannopoulos', '2008-10-27', 'student', '2021-02-25', 'giorgosg', 'giannopoulos987'),
('Alexandra', 'Papadakis', '1979-04-17', 'teacher', '2021-03-05', 'alexandrap', 'papadakis123'),
('Christos', 'Georgiou', '1983-09-22', 'teacher', '2021-01-15', 'christosg', 'georgiou456'),
('Sophia', 'Andreadis', '1977-07-12', 'teacher', '2021-05-20', 'sophiaa', 'andreadis789'),
('Dimitris', 'Zografos', '1988-11-29', 'teacher', '2021-02-10', 'dimitrisz', 'zografos321'),
('Eleni', 'Kontou', '1985-06-05', 'teacher', '2021-04-25', 'elenik', 'kontoupwd'),
('George', 'Papadimitriou', '1991-07-28', 'teacher', '2021-03-25', 'georgep', 'papadimitriou123'),
('Anna', 'Mavridis', '1987-11-12', 'teacher', '2021-02-15', 'annamav', 'mavridis456'),
('Dimitris', 'Karagiannis', '1992-05-03', 'teacher', '2021-04-28', 'dimitrisk', 'karagiannis789'),
('Maria', 'Nikolaidou', '1988-09-17', 'teacher', '2021-01-05', 'marian', 'nikolaidou321'),
('Christina', 'Katsarou', '1995-04-06', 'teacher', '2021-03-10', 'christinak', 'katsarou123'),
('Nikolas', 'Papatheodorou', '2007-05-10', 'student', '2021-01-02', 'nikospapath', 'georgiou123'),
('Eleni', 'Georgiou', '2006-08-25', 'student', '2021-02-04', 'elenig', 'georgiou456'),
('Spyros', 'Papathomas', '2005-12-07', 'student', '2021-03-18', 'spyrospapa', 'georgiou789'),
('Georgios', 'Olympios', '2007-10-15', 'student', '2021-04-01', 'georgiosoly', 'georgiou123'),
('Maria', 'Georgiadi', '2009-11-28', 'student', '2021-05-03', 'mariageo', 'georgiou456'),
('Ioanna', 'Varoucha', '2007-07-03', 'student', '2021-01-04', 'ioannavar', 'vlachou123'),
('Dimitris', 'Papapetrou', '2006-10-18', 'student', '2021-02-06', 'dimitrispapa', 'vlachou456'),
('Katerina', 'Iatropoulou', '2005-03-01', 'student', '2021-03-20', 'katerinaia', 'vlachou789'),
('Xristina', 'Prinioti', '2008-06-14', 'student', '2021-04-02', 'xryspin', 'vlachou123'),
('Giorgos', 'Vlachakis', '2009-09-27', 'student', '2021-05-05', 'giorgosv', 'vlachou456'),
('Xaris', 'Kakos', '2007-01-22', 'student', '2021-01-07', 'nikoskak', 'christopoulos'),
('Eleni', 'Christopoulos', '2006-04-08', 'student', '2021-02-09', 'elenic', 'christopoulos'),
('Dimitra', 'Christopoulos', '2005-08-18', 'student', '2021-03-23', 'dimitrac', 'christopoulos'),
('Katerina', 'Christinaki', '1994-05-08', 'teacher', '2021-01-01', 'katerinachristi', 'christoupwd'),
('Dimitris', 'Vlachopoulos', '1989-01-20', 'teacher', '2021-01-03', 'dimitrisvlach', 'vlachospass'),
('Spyros', 'Kotsiras', '1991-11-05', 'teacher', '2021-01-05', 'spyroskots', 'vlachospass'),
('Katerina', 'Christidi', '1994-05-08', 'teacher', '2021-01-01', 'katerinachr', 'christoupwd'),
('Andreas', 'Nikolaidis', '1986-08-18', 'teacher', '2021-01-09', 'andreasn', 'nikolaidisteacher'),
('Eleni', 'Antoniou', '1985-03-20', 'teacher', '2021-01-08', 'elenia', 'antoniouteacher'),
('Yiannis', 'Stefanidis', '2007-04-28', 'student', '2021-01-09', 'yianniss', 'stefanidis123'),
('Maria', 'Yiannopoulos', '2006-09-10', 'student', '2021-01-08', 'mariay', 'yiannopoulos789'),
('Katerina', 'Antoniou', '1990-05-15', 'teacher', '2021-01-06', 'katerinan', 'antoniouteacher'),
('Afroditi', 'Pavlou', '2007-07-25', 'student', '2021-02-01', 'afroditip', 'pavlou123'),
('Stavros', 'Kontos', '2008-03-12', 'student', '2021-02-02', 'stavrosk', 'kontos456'),
('Eva', 'Kourou', '2009-10-30', 'student', '2021-02-03', 'evakourou', 'kouros789'),
('Panagiotis', 'Antonopoulos', '2006-05-18', 'student', '2021-02-04', 'panagiotisa', 'antonopoulos123'),
('Georgia', 'Demetriou', '2007-12-05', 'student', '2021-02-05', 'georgiad', 'demetriou456'),
('Alexandros', 'Makris', '2011-01-14', 'student', '2021-02-01', 'alexandrosm', 'makris123'),
('Michalis', 'Samaras', '2006-12-09', 'student', '2021-02-03', 'michaliss', 'samaras789'),
('Aikaterini', 'Papadimitriou', '2008-04-26', 'student', '2021-02-04', 'aikaterinip', 'papadimitriou123'),
('Nikolaos', 'Konstantinou', '2006-09-10', 'student', '2021-02-05', 'nikolaosk', 'konstantinou456'),
('Eleni', 'Theocharis', '1990-03-15', 'teacher', '2021-02-01', 'elenitheo', 'theocharisteacher'),
('Eleni', 'Makridou', '1993-11-25', 'teacher', '2021-07-30', 'elenim', 'makridou456'),
('Gianna', 'Makridou', '1973-11-25', 'library admin', '2021-01-01', 'giannamakr', 'thessadmin'),
('Aristotelis', 'Athanasiades', '1975-09-16', 'library admin', '2021-01-01', 'aristoathan', 'athenadmin'),
('Euangellos', 'Papandreou', '1981-04-05', 'library admin', '2021-01-01', 'eupapandr', 'patrasadmin'),
('Sifis', 'Manolioudakis', '1979-10-02', 'library admin', '2021-01-01', 'manolosifi', 'agnadmin'),
('Marios', 'Iatridis', '1977-03-24', 'library admin', '2021-01-01', 'mariatrif', 'thessadmin2'),
('Main', 'Admin', '1990-01-01', 'central admin', '2021-01-01', 'main_admin', 'main_admin');

insert into school_user (school_id, user_id)
values
(1, 108), (2, 109), (3, 110), (4, 111), (5, 112);

INSERT INTO school_user (school_id, user_id)
VALUES 
(5, 3), (1, 5), (2, 11), (3, 12), (4, 13), (5, 14),
(1, 15), (2, 16), (3, 17), (4, 18), (5, 19),
(1, 20), (2, 21), (3, 22), (4, 23), (5, 24),
(1, 25), (2, 26), (3, 27), (4, 28), (5, 29),
(1, 30), (2, 31), (3, 32), (4, 33), (5, 34),
(1, 35), (2, 41), (3, 42), (4, 43), (5, 44),
(1, 45), (2, 46), (3, 47), (4, 48), (5, 49),
(1, 50), (2, 51), (3, 52), (4, 53), (5, 54),
(1, 55), (2, 56), (3, 57), (4, 58), (5, 59),
(1, 60), (2, 61), (3, 62), (4, 63), (5, 64),
(1, 75), (2, 76), (3, 77), (4, 78), (5, 79),
(1, 80), (2, 81), (3, 82), (4, 83), (5, 84),
(1, 85), (2, 86), (3, 87), (4, 94), (5, 95),
(1, 97), (2, 98), (3, 99), (4, 100), (5, 101),
(1, 102), (2, 103), (3, 104), (4, 105);

INSERT INTO school_user(school_id, user_id)
VALUES 
(1, 1), (2, 2), (3, 4), (4, 6), (5, 7),
(1, 8), (2, 9), (3, 10), (4, 36), (5, 37),
(1, 38), (2, 39), (3, 40), (4, 65), (5, 66),
(1, 67), (2, 68), (3, 69), (4, 70), (5, 71),
(1, 72), (2, 73), (3, 74), (4, 88), (5, 89),
(1, 90), (2, 91), (3, 92), (4, 93), (5, 96),
(1, 106), (2, 107);


   INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN) VALUES
('pending', '2023-05-20', 'An enjoyable read!', 4, 65, '9780007356348'),
('approved', '2023-04-18', 'I couldn t put it down. Highly recommended!', 5, 66, '9780061120084'),
('approved', '2023-03-27', 'Not my cup of tea. The story didn t capture my interest.', 2, 67, '9780061120085'),
('approved', '2023-02-28', 'A thought-provoking book that left me pondering.', 4, 68, '9780062073501'),
('approved', '2023-04-15', 'A thrilling page-turner with unexpected twists.', 5, 69, '9780062255655'),
('approved', '2023-03-18', 'Disappointing. The plot lacked originality.', 2, 70, '9780062457714'),
('approved', '2023-02-20', 'A heartwarming story about love and friendship.', 4, 71, '9780099448792'),
('approved', '2023-04-11', 'Captivating and beautifully written.', 5, 72, '9780141439518'),
('approved', '2023-03-30', 'Slow-paced and uninteresting. It didn t grab my attention.', 2, 73, '9780307277712'),
('pending', '2023-03-08', 'Engaging and well-crafted.', 4, 74, '9780307588364'),
('approved', '2023-04-20', 'A must-read! It had me hooked from the first page.', 5, 75, '9780316556347'),
('approved', '2023-03-17', 'Underwhelming. The story didn t live up to my expectations.', 2, 76, '9780345804358'),
('pending', '2023-06-01', 'An intriguing and suspenseful read.', 4, 77, '9780385349570'),
('approved', '2023-04-09', 'A delightful book that left me with a smile on my face.', 5, 78, '9780399590504'),
('approved', '2023-03-22', 'Confusing and hard to follow. The plot lacked coherence.', 2, 79, '9780439358071'),
('pending', '2023-02-12', 'A thrilling and action-packed adventure.', 4, 80, '9780451524935'),
('approved', '2023-04-06', 'Emotional and gripping. It touched my heart.', 5, 81, '9780525478812'),
('approved', '2023-03-26', 'Unimpressive. The story fell flat.', 2, 82, '9780525501220'),
('pending', '2023-02-16', 'Beautifully written with vivid descriptions.', 4, 83, '9780525520375'),
('approved', '2023-04-14', 'Thought-provoking and immersive.', 5, 84, '9780525563235'),
('approved', '2023-03-28', 'I couldn t connect with the characters. Disappointing.', 2, 85, '9780525952662'),
('pending', '2023-03-01', 'Enlightening and informative.', 4, 86, '9780544003415'),
('approved', '2023-04-17', 'A gripping and suspenseful read.', 5, 87, '9780545010221'),
('approved', '2023-03-29', 'The story dragged on. It didn t hold my interest.', 2, 88, '9780553418026'),
('pending', '2023-03-05', 'Heartwarming and uplifting.', 4, 89, '9780553448122'),
('approved', '2023-04-19', 'Mind-bending and thought-provoking.', 5, 90, '9780571347292'),
('approved', '2023-03-24', 'Too predictable. I was hoping for more surprises.', 2, 91, '9780679732259'),
('pending', '2023-02-26', 'Compelling and well-researched.', 4, 92, '9780684801469'),
('approved', '2023-04-16', 'Addictive and fast-paced.', 5, 93, '9780735219113'),
('approved', '2023-03-31', 'The writing style didn t resonate with me.', 2, 94, '9780735224292'),
('pending', '2023-02-23', 'Thought-provoking and enlightening.', 4, 95, '9780743273565'),
('approved', '2023-04-13', 'Engaging and well-crafted mystery.', 5, 96, '9780765326355'),
('approved', '2023-03-23', 'The story lacked depth and failed to hold my interest.', 2, 97, '9780765377142'),
('pending', '2023-02-14', 'Powerful and moving. It left a lasting impact.', 4, 98, '9780812987114'),
('approved', '2023-04-12', 'Beautifully written and emotionally charged.', 5, 99, '9780812988406'),
('approved', '2023-03-21', 'I found it hard to connect with the characters.', 2, 100, '9780857521353'),
('pending', '2023-03-04', 'Immersive and epic. It transported me to another world.', 4, 101, '9781250042763'),
('approved', '2023-04-21', 'A gripping and heart-pounding thriller.', 5, 102, '9781250178619'),
('approved', '2023-03-16', 'Predictable and lacking originality.', 2, 103, '9781400064168'),
('pending', '2023-02-07', 'Heartwarming and inspiring.', 4, 104, '9781416570868'),
('approved', '2023-04-08', 'Mesmerizing and beautifully written.', 5, 105, '9781449486792'),
('approved', '2023-03-27', 'Couldn t get into it. The story didn t engage me.', 2, 106, '9781501142970'),
('approved', '2023-02-05', 'This book is a must-read!', 5, 73, '9780061120085');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-06', 'I couldn\'t put this book down!', 4, 21, '9780062073501');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-02-07', 'I haven\'t finished reading this book yet, but so far it\'s great!', 4, 29, '9780062255655');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-08', 'This book was a bit slow at first, but it picked up and I enjoyed it overall.', 3, 95, '9780062457714');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-09', 'I didn\'t like this book at all.', 1, 41, '9780099448792');
INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-02-10', 'I just started reading this book and I\'m already hooked!', 4, 39, '9780525563235');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-11', 'This book was a bit confusing at times, but overall I enjoyed it.', 3, 46, '9780525952662');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-12', 'I loved this book! The characters were so well-developed and the plot was engaging.', 5, 17, '9780544003415');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-02-13', 'This book was not what I expected. I found it boring and hard to follow.', 2, 75, '9780553448122');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-14', 'I couldn\'t put this book down! The suspense kept me on the edge of my seat.', 5, 84, '9780735224292');
INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-02-10', 'I just started reading this book and I\'m already hooked!', 4, 46, '9780525563235');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-11', 'This book was a bit confusing at times, but overall I enjoyed it.', 3, 53, '9780525952662');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-12', 'I loved this book! The characters were so well-developed and the plot was engaging.', 5, 104, '9780544003415');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-13', 'This book was not what I expected. I found it boring and hard to follow.', 2, 93, '9780553448122');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-14', 'I couldn\'t put this book down! The suspense kept me on the edge of my seat.', 5, 39, '9780735224292');
INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-02-03', 'I just started reading this book and I\'m excited to see where it goes!', 4, 5, '9780007356348');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-05', 'I loved this book! The characters were so well-developed and the plot was engaging.', 5, 12, '9780061120085');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-06', 'This book was not for me. I found it confusing and hard to follow.', 2, 13, '9780062073501');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-07', 'This book was a great read! I couldn\'t put it down.', 4, 14, '9780062255655');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-02-08', 'I\'m only a few chapters in, but I\'m already hooked on this book!', 5, 15, '9780062457714');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-09', 'This book was amazing! I loved the plot twists and the ending was perfect.', 5, 26, '9780099448792');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-10', 'I really enjoyed this book. The writing was beautiful and the story was touching.', 4, 47, '9780141439518');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-11', 'I didn\'t like this book at all. The characters were flat and the story was boring.', 2, 18, '9780307277712');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-12', 'This book was a page-turner! I couldn\'t wait to find out what happened next.', 4, 19, '9780307588364');
INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-03-15', 'An enjoyable read with well-developed characters.', 4, 107, '9781501160790');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-23', 'A captivating and thrilling story.', 5, 18, '9781501173219');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-18', 'The plot was confusing and hard to follow.', 2, 25, '9781501175565');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-03-09', 'A delightful and charming book.', 4, 13, '9781501175565');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-20', 'An engrossing and well-written novel.', 5, 14, '9781594633940');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-26', 'The characters felt one-dimensional.', 2, 15, '9781609455739');
INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-04-01', 'A thought-provoking and insightful read.', 4, 16, '9781501168802');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-28', 'A beautifully written story with rich descriptions.', 5, 17, '9781501173219');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-05', 'The pacing of the book was too slow for my liking.', 3, 18, '9781501175565');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-04-03', 'An intriguing mystery that kept me guessing until the end.', 4, 19, '9781501175565');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-30', 'A heartwarming tale of love and friendship.', 5, 20, '9781594633940');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-07', 'The plot lacked originality and felt predictable.', 2, 21, '9781609455739');
INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-04-10', 'A gripping page-turner that kept me hooked from start to finish.', 4, 22, '9781616208684');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-11', 'An emotional rollercoaster with well-developed characters.', 5, 23, '9780062255655');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-12', 'The writing style was difficult to follow and confusing.', 2, 24, '9780765326355');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-04-09', 'A mind-bending sci-fi adventure that explores complex themes.', 4, 25, '9781416570868');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-08', 'A hilarious and entertaining read that had me laughing out loud.', 5, 26, '9780345804358');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-13', 'The plot twists were predictable and cliché.', 3, 27, '9780553448122');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-04-14', 'A deeply moving and thought-provoking novel.', 4, 28, '9780525501220');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-15', 'An engrossing and suspenseful thriller that kept me on edge.', 5, 29, '9780525520375');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-16', 'The characters lacked depth and felt one-dimensional.', 2, 30, '9780735224292');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-04-17', 'A beautifully written book that explores themes of love and loss.', 4, 31, '9780735219113');
INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-04-18', 'A captivating story that kept me engaged until the very end.', 4, 32, '9780553418026');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-19', 'A thought-provoking read with well-developed characters.', 5, 33, '9781501175565');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-20', 'The pacing of the book was slow and dragged on.', 2, 34, '9781449486792');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-04-21', 'A thrilling and suspenseful mystery that kept me guessing.', 4, 35, '9781501168802');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-22', 'An inspirational and uplifting book that touched my heart.', 5, 41, '9780399590504');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-23', 'The plot lacked originality and felt predictable.', 3, 42, '9781501142970');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-04-24', 'A gripping and atmospheric tale that transported me to another world.', 4, 43, '9780525952662');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-25', 'A beautifully written and emotionally resonant story.', 5, 44, '9781609455739');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-04-27', 'A fast-paced and action-packed adventure that kept me on the edge of my seat.', 4, 46, '9781501173219');
INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-02-03', 'This book is absolute garbage!', 1, 13, '9780007356348');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-02-04', 'The author clearly has no talent. Save your money.', 1, 11, '9780061120084');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-02-05', 'I wouldn t wish this book on my worst enemy.', 1, 102, '9780061120085');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-02-06', 'Total waste of time. I want my money back!', 1, 43, '9780062073501');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-02-07', 'The writing style is atrocious. Couldn t get past the first chapter.', 1, 84, '9780062255655');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-02-08', 'This book made me want to gouge my eyes out. Absolutely terrible.', 1, 55, '9780062457714');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-02-09', 'One of the worst books I ve ever read. Save yourself the agony.', 1, 16, '9780099448792');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-02-10', 'Don t bother. This book is an insult to literature.', 1, 17, '9780141439518');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-02-11', 'I d rather watch paint dry than read this garbage.', 1, 68, '9780307277712');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-02-12', 'This book is a disgrace. It should never have been published.', 1, 79, '9780307588364');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-13', 'I found this book to be quite disappointing. The plot lacked depth and the characters were underdeveloped. I wouldn t recommend it.', 2, 25, '9780525478812');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-14', 'I had high hopes for this book, but it fell short of my expectations. The pacing was slow, and the ending felt rushed.', 3, 26, '9780525501220');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-15', 'This book had some interesting ideas, but the execution was lacking. The writing style didn t engage me, and I struggled to connect with the story.', 2, 27, '9780525520375');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-16', 'While this book had its moments, overall, it didn t leave a lasting impression. I felt like something was missing, and it didn t fully captivate my interest.', 3, 28, '9780525563235');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-17', 'I had mixed feelings about this book. Some parts were engaging, but others felt disjointed. It had its strengths, but it also had some weaknesses.', 1, 29, '9780525952662');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-18', 'I regret to say that this book didn t meet my expectations. The storyline lacked depth, and the characters felt one-dimensional. I believe it has room for improvement.', 2, 30, '9780544003415');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-19', 'I had high hopes for this book, but unfortunately, it fell short. The pacing was slow, and the plot development was unsatisfying. I was left wanting more.', 3, 31, '9780545010221');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-20', 'I must admit that I was disappointed with this book. The writing style didn t resonate with me, and the characters failed to evoke any emotional connection. It s not a book I would recommend.', 2, 22, '9780553418026');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-21', 'While there were some interesting aspects to this book, overall, it didn t live up to my expectations. The pacing was uneven, and the resolution felt forced. It didn t leave a lasting impression.', 3, 33, '9780553448122');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-22', 'I wanted to enjoy this book, but unfortunately, it didn t resonate with me. The plot lacked originality, and the character development fell flat. It wasn t a memorable reading experience.', 1, 34, '9780571347292');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-23', 'I had high expectations for this book, but it didn t deliver. The pacing was slow, and the narrative felt disjointed. It didn t engage me as much as I had hoped.', 2, 35, '9780679732259');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-24', 'I wanted to like this book, but unfortunately, it didn t captivate my interest. The writing style felt repetitive, and the plot twists were predictable. It left me wanting more depth and complexity.', 3, 41, '9780684801469');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-02-25', 'Regrettably, this book didn t live up to my expectations. The characters lacked development, and the plot felt contrived. I struggled to stay engaged throughout the story.', 2, 42, '9780735219113');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-02', 'I thoroughly enjoyed reading this book. The storyline was captivating, and the characters were well-developed. I highly recommend it.', 5, 1, '9780007113804');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-03', 'This book was a delightful surprise. The plot twists kept me engaged, and the writing style was beautiful. I couldn t put it down.', 4, 2, '9780007136556');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-04', 'I found this book to be a bit disappointing. The pacing was slow, and the characters lacked depth. It didn t live up to my expectations.', 2, 3, '9780062073495');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-05', 'I couldn t get into this book at all. The writing style didn t resonate with me, and the story felt disjointed. It was a struggle to finish.', 1, 4, '9780062073549');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-06', 'This book had its moments, but overall, it failed to impress me. The characters were forgettable, and the plot lacked originality.', 3, 5, '9780062073563');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-07', 'I found this book to be quite enjoyable. The author s writing style was engaging, and the story kept me hooked from beginning to end.', 4, 6, '9780062073564');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-08', 'This book was a pleasant surprise. The characters were well-developed, and the plot had unexpected twists. I highly recommend it.', 5, 7, '9780062073600');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-09', 'Unfortunately, I didn t enjoy this book as much as I had hoped. The pacing was slow, and the story lacked depth. It fell short of my expectations.', 2, 8, '9780062409867');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-10', 'I absolutely loved this book! The writing was beautiful, and the characters felt so real. It s a must-read for any book lover.', 5, 9, '9780099448793');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-11', 'This book didn t resonate with me. The plot was predictable, and the characters felt cliché. It didn t leave a lasting impression.', 3, 10, '9780099458326');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-12', 'I found this book to be quite disappointing. The story was predictable, and the characters lacked depth. It didn t live up to my expectations.', 2, 11, '9780140433922');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-13', 'This book was an absolute page-turner. The suspense kept me on the edge of my seat, and the writing was superb. Highly recommended!', 5, 12, '9780140621195');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-14', 'I couldn t put this book down! The characters were relatable, and the plot kept me guessing until the end. A must-read for mystery lovers.', 4, 13, '9780141185130');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-15', 'This book had so much potential, but it fell flat for me. The pacing was off, and the story lacked depth. I expected more from the author.', 3, 14, '9780141185239');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-16', 'I thoroughly enjoyed reading this book. The author s writing style was captivating, and the characters felt so real. Highly recommended!', 5, 15, '9780141187396');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-17', 'This book was a real page-turner. The plot twists kept me guessing, and the writing was engaging. I couldn t put it down!', 4, 16, '9780141187761');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-18', 'Unfortunately, this book wasn t for me. The story lacked direction, and the characters felt one-dimensional. It didn t hold my interest.', 2, 17, '9780141198963');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-19', 'I found this book to be quite enjoyable. The writing style was engaging, and the plot had enough twists to keep me interested.', 3, 18, '9780141393049');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-20', 'This book was a letdown. The story had potential, but it was poorly executed. The characters felt underdeveloped, and the pacing was off.', 2, 19, '9780141397642');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-21', 'I couldn t get into this book. The writing style didn t resonate with me, and the story felt disjointed. It just wasn t my cup of tea.', 2, 20, '9780141439693');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-22', 'I had high expectations for this book, but it fell short. The story was slow-paced and lacked excitement. Disappointing read.', 3, 21, '9780141442464');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-23', 'I was completely captivated by this book. The characters were well-developed, and the plot kept me guessing until the end. Highly recommended!', 5, 22, '9780143105428');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-24', 'This book was a roller coaster of emotions. It made me laugh, cry, and everything in between. A truly memorable read.', 4, 23, '9780151010264');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-25', 'I couldn t put this book down! The author s writing style was engaging, and the story had me hooked from the first page.', 5, 24, '9780261103283');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-26', 'This book was a breath of fresh air. The writing was beautiful, and the characters felt so real. I couldn t get enough of it!', 5, 25, '9780307276650');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-27', 'Unfortunately, this book didn t live up to the hype. The plot was predictable, and the characters lacked depth. Disappointing read.', 2, 26, '9780307278783');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-28', 'I thoroughly enjoyed reading this book. The author s storytelling was captivating, and the world-building was incredible.', 4, 27, '9780385524282');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-29', 'This book took me on an emotional journey. The characters were relatable, and the writing was powerful. Highly recommend!', 4, 28, '9780385524367');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-30', 'I couldn t connect with this book. The writing style felt disjointed, and the story lacked coherence. Not my cup of tea.', 2, 29, '9780385531204');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-03-31', 'This book kept me on the edge of my seat. The suspense was intense, and the plot twists were mind-blowing. Highly recommended!', 5, 30, '9780385537039');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-01', 'I found this book to be quite disappointing. The story lacked depth, and the characters felt one-dimensional.', 2, 51, '9780385537855');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-02', 'This book exceeded my expectations. The plot was gripping, and the writing was beautifully descriptive.', 5, 32, '9780385542361');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-03', 'I couldn t put this book down. The author s storytelling kept me engaged throughout, and the ending left me wanting more.', 4, 33, '9780385720045');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-04', 'This book had a slow start, but it picked up in the second half. The characters were interesting, and the ending was satisfying.', 3, 34, '9780385720953');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-05', 'I absolutely loved this book! The writing was captivating, and the characters felt so real. Highly recommended!', 5, 35, '9780394703955');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-01', 'I found this book to be quite disappointing. The story lacked depth, and the characters felt one-dimensional.', 2, 31, '9780385537855');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-02', 'This book exceeded my expectations. The plot was gripping, and the writing was beautifully descriptive.', 4, 62, '9780385542361');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-03', 'I couldn t put this book down. The author s storytelling kept me engaged throughout, and the ending left me wanting more.', 3, 47, '9780385720045');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-04', 'This book had a slow start, but it picked up in the second half. The characters were interesting, and the ending was satisfying.', 4, 94, '9780385720953');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-08', 'This book was a real page-turner. The plot was full of twists and turns, and the characters were well-developed.', 4, 43, '9780486284736');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-09', 'I had high expectations for this book, but it fell short. The writing style was dull, and the story lacked depth.', 2, 44, '9780671035429');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-10', 'I couldn t get into this book. The plot was confusing, and the characters were forgettable. Not my cup of tea.', 3, 45, '9780671039755');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-01', 'I found this book to be incredibly boring. The plot was uninteresting, and the characters lacked depth.', 2, 49, '9780007113804');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-02', 'This book was a huge disappointment. The story was poorly written, and the ending was unsatisfying.', 1, 50, '9780007136556');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-03', 'I expected more from this book, but it failed to deliver. The characters were flat, and the plot was predictable.', 2, 51, '9780062073495');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-04', 'I regret reading this book. The writing style was tedious, and the story lacked originality.', 1, 52, '9780062073549');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-05', 'I couldn t stand this book. The characters were unlikeable, and the plot was all over the place.', 1, 53, '9780062073563');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-06', 'This book was a complete waste of time. The writing was dull, and the story lacked substance.', 1, 54, '9780062073564');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-07', 'I struggled to get through this book. The pacing was slow, and the characters were uninteresting.', 2, 55, '9780062073600');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-08', 'I was extremely disappointed with this book. The plot was confusing, and the writing style was frustrating.', 2, 56, '9780062409867');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-09', 'This book was a letdown. The story was unengaging, and the characters felt underdeveloped.', 2, 57, '9780099448793');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-10', 'I didn t enjoy reading this book. The plot was confusing, and the writing style was dry.', 2, 58, '9780099458326');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-11', 'I absolutely loved this book! The story was captivating, and the characters were well-developed.', 5, 59, '9780007113804');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-12', 'This book exceeded my expectations. The writing was beautiful, and the plot kept me hooked until the end.', 4, 60, '9780007136556');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-13', 'I highly recommend this book. The story was engaging, and the author s writing style was impressive.', 4, 61, '9780062073495');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-14', 'I couldn t put this book down. The suspense was thrilling, and the characters felt real.', 5, 62, '9780062073549');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-15', 'This book was a pleasant surprise. The storyline was unique, and the pacing was perfect.', 4, 63, '9780062073563');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-16', 'I thoroughly enjoyed reading this book. The characters were relatable, and the plot was thought-provoking.', 4, 64, '9780062073564');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-17', 'This book kept me on the edge of my seat. The twists and turns were unpredictable, and the ending was satisfying.', 5, 65, '9780062073600');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-18', 'I highly recommend this book to anyone looking for an intriguing read. The author s storytelling is exceptional.', 4, 66, '9780062409867');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-19', 'This book was a delight to read. The characters were well-developed, and the plot kept me engaged throughout.', 4, 67, '9780099448793');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-20', 'I thoroughly enjoyed every page of this book. The writing style was beautiful, and the story was heartwarming.', 4, 68, '9780099458326');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-21', 'I couldn t put this book down! The plot was engaging, and the characters were well-written.', 5, 69, '9780099528988');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-22', 'This book is a must-read! The author s descriptive writing transported me into the story.', 4, 70, '9780140433922');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-23', 'I devoured this book in one sitting. The pacing was perfect, and the ending left me satisfied.', 5, 71, '9780140621195');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-24', 'This book is a gem! The author s storytelling is captivating, and the themes explored are thought-provoking.', 4, 72, '9780141185130');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-25', 'I was hooked from the first page. The suspense in this book kept me guessing until the end.', 5, 73, '9780141185239');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-26', 'I couldn t get enough of this book. The characters were relatable, and the emotional depth was incredible.', 4, 74, '9780141187396');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-27', 'This book touched my heart. The themes of love and friendship resonated with me deeply.', 4, 75, '9780141187761');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-28', 'I recommend this book to everyone! The writing style is superb, and the story is unforgettable.', 4, 76, '9780141198963');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-29', 'This book is a true masterpiece. The author s attention to detail brought the setting to life.', 5, 77, '9780141393049');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('approved', '2023-04-30', 'I was captivated by this book from beginning to end. The characters felt like old friends.', 4, 78, '9780141397642');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-05-01', 'This book is absolute trash! The author clearly has no talent or creativity.', 1, 85, '9780007113804');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-05-02', 'I wouldn t recommend this book to my worst enemy. It s a complete waste of time.', 2, 86, '9780007136556');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-05-03', 'The writing in this book is horrendous. I ve never read anything so poorly written.', 1, 87, '9780062073495');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-05-04', 'Save yourself the trouble and skip this book. It s filled with cliches and predictable plot twists.', 2, 88, '9780062073549');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-05-05', 'I can t believe this book was published. It s an insult to literature.', 1, 89, '9780062073563');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-05-06', 'I regret wasting my time on this garbage. It s a complete disaster.', 1, 90, '9780062073564');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-05-07', 'The author should be ashamed of themselves for writing such a pathetic excuse for a book.', 2, 91, '9780062073600');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-05-08', 'I couldn t even finish reading this book. It s that terrible.', 1, 92, '9780062409867');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-05-09', 'Do yourself a favor and avoid this book like the plague. It s an insult to intelligence.', 2, 93, '9780099448793');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('declined', '2023-05-10', 'I ve never been more disappointed in a book. The author should never write again.', 1, 94, '9780099458326');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-05-18', 'This book was somewhat disappointing. It didn t live up to my expectations.', 3, 90, '9780062073564');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-05-18', 'I had mixed feelings about this book. It had its moments, but overall, it fell short.', 2, 91, '9780062073600');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-05-18', 'While this book had some redeeming qualities, it didn t fully captivate me.', 4, 92, '9780062409867');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-05-18', 'I expected more from this book, but it didn t deliver. It was just average.', 3, 93, '9780099448793');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-05-18', 'This book fell short of my expectations. It lacked depth and substance.', 2, 94, '9780099458326');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-05-18', 'I had high hopes for this book, but it didn t live up to my expectations. It lacked originality.', 2, 95, '9780099528988');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-05-18', 'This book had some interesting moments, but overall, it failed to engage me.', 3, 96, '9780140433922');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-05-18', 'While this book had potential, it fell short in execution. It was a bit underwhelming.', 4, 97, '9780140621195');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-05-18', 'I found this book to be average. It didn t leave a lasting impression.', 3, 98, '9780141185130');

INSERT INTO review (review_status, review_date, review_text, rating, user_id, ISBN)
VALUES ('pending', '2023-05-18', 'This book had its moments, but it lacked consistency. It didn t fully capture my attention.', 2, 99, '9780141185239');



INSERT INTO book_owner (school_id, ISBN, avail_copies)
values
(1, '9780007113804', 1), 
(2, '9780007113804', 3), 
(3, '9780007113804', 1), 
(4, '9780007113804', 4), 
(5, '9780007113804', 3), 
(1, '9780007136556', 1), 
(2, '9780007136556', 2), 
(3, '9780007136556', 4), 
(4, '9780007136556', 3), 
(5, '9780007136556', 2), 
(1, '9780007356348', 2), 
(2, '9780007356348', 3), 
(3, '9780007356348', 3), 
(4, '9780007356348', 4), 
(5, '9780007356348', 1), 
(1, '9780061120084', 1), 
(2, '9780061120084', 1), 
(3, '9780061120084', 3), 
(4, '9780061120084', 2), 
(5, '9780061120084', 2), 
(1, '9780061120085', 1), 
(2, '9780061120085', 1), 
(3, '9780061120085', 3), 
(4, '9780061120085', 2), 
(5, '9780061120085', 5), 
(1, '9780062073495', 1), 
(2, '9780062073495', 1), 
(3, '9780062073495', 1), 
(4, '9780062073495', 2), 
(5, '9780062073495', 2), 
(1, '9780062073501', 4), 
(2, '9780062073501', 2), 
(3, '9780062073501', 2), 
(4, '9780062073501', 2), 
(5, '9780062073501', 2), 
(1, '9780062073549', 2), 
(2, '9780062073549', 3), 
(3, '9780062073549', 3), 
(4, '9780062073549', 5), 
(5, '9780062073549', 4), 
(1, '9780062073563', 4), 
(2, '9780062073563', 1), 
(3, '9780062073563', 1), 
(4, '9780062073563', 3), 
(5, '9780062073563', 2), 
(1, '9780062073564', 1), 
(2, '9780062073564', 2), 
(3, '9780062073564', 1), 
(4, '9780062073564', 1), 
(5, '9780062073564', 4), 
(1, '9780062073600', 2), 
(2, '9780062073600', 5), 
(3, '9780062073600', 1), 
(4, '9780062073600', 2), 
(5, '9780062073600', 5), 
(1, '9780062255655', 2), 
(2, '9780062255655', 1), 
(3, '9780062255655', 4), 
(4, '9780062255655', 5), 
(5, '9780062255655', 1), 
(1, '9780062409867', 5), 
(2, '9780062409867', 4), 
(3, '9780062409867', 1), 
(4, '9780062409867', 5), 
(5, '9780062409867', 1), 
(1, '9780062457714', 1), 
(2, '9780062457714', 2), 
(3, '9780062457714', 5), 
(4, '9780062457714', 1), 
(5, '9780062457714', 5), 
(1, '9780099448792', 1), 
(2, '9780099448792', 5), 
(3, '9780099448792', 1), 
(4, '9780099448792', 5), 
(5, '9780099448792', 5), 
(1, '9780099448793', 2), 
(2, '9780099448793', 1), 
(3, '9780099448793', 1), 
(4, '9780099448793', 1), 
(5, '9780099448793', 4), 
(1, '9780099458326', 5), 
(2, '9780099458326', 2), 
(3, '9780099458326', 4), 
(4, '9780099458326', 1), 
(5, '9780099458326', 5), 
(1, '9780099528988', 5), 
(2, '9780099528988', 1), 
(3, '9780099528988', 4), 
(4, '9780099528988', 3), 
(5, '9780099528988', 2), 
(1, '9780140433922', 1), 
(2, '9780140433922', 2), 
(3, '9780140433922', 4), 
(4, '9780140433922', 4), 
(5, '9780140433922', 2), 
(1, '9780140621195', 4), 
(2, '9780140621195', 2), 
(3, '9780140621195', 1), 
(4, '9780140621195', 3), 
(5, '9780140621195', 4), 
(1, '9780141185130', 3), 
(2, '9780141185130', 1), 
(3, '9780141185130', 3), 
(4, '9780141185130', 2), 
(5, '9780141185130', 4), 
(1, '9780141185239', 5), 
(2, '9780141185239', 1), 
(3, '9780141185239', 4), 
(4, '9780141185239', 2), 
(5, '9780141185239', 3), 
(1, '9780141187396', 2), 
(2, '9780141187396', 2), 
(3, '9780141187396', 3), 
(4, '9780141187396', 1), 
(5, '9780141187396', 5), 
(1, '9780141187761', 2), 
(2, '9780141187761', 1), 
(3, '9780141187761', 1), 
(4, '9780141187761', 5), 
(5, '9780141187761', 2), 
(1, '9780141198963', 1), 
(2, '9780141198963', 5), 
(3, '9780141198963', 2), 
(4, '9780141198963', 3), 
(5, '9780141198963', 3), 
(1, '9780141393049', 5), 
(2, '9780141393049', 2), 
(3, '9780141393049', 2), 
(4, '9780141393049', 3), 
(5, '9780141393049', 2), 
(1, '9780141397642', 2), 
(2, '9780141397642', 2), 
(3, '9780141397642', 3), 
(4, '9780141397642', 5), 
(5, '9780141397642', 4), 
(1, '9780141439518', 2), 
(2, '9780141439518', 1), 
(3, '9780141439518', 5), 
(4, '9780141439518', 3), 
(5, '9780141439518', 3), 
(1, '9780141439693', 1), 
(2, '9780141439693', 5), 
(3, '9780141439693', 4), 
(4, '9780141439693', 4), 
(5, '9780141439693', 2), 
(1, '9780141442464', 3), 
(2, '9780141442464', 5), 
(3, '9780141442464', 4), 
(4, '9780141442464', 3), 
(5, '9780141442464', 5), 
(1, '9780143105428', 5), 
(2, '9780143105428', 2), 
(3, '9780143105428', 3), 
(4, '9780143105428', 4), 
(5, '9780143105428', 1), 
(1, '9780151010264', 4), 
(2, '9780151010264', 4), 
(3, '9780151010264', 3), 
(4, '9780151010264', 5), 
(5, '9780151010264', 2), 
(1, '9780261103283', 5), 
(2, '9780261103283', 1), 
(3, '9780261103283', 2), 
(4, '9780261103283', 3), 
(5, '9780261103283', 5), 
(1, '9780307276650', 2), 
(2, '9780307276650', 2), 
(3, '9780307276650', 3), 
(4, '9780307276650', 2), 
(5, '9780307276650', 5), 
(1, '9780307277712', 3), 
(2, '9780307277712', 4), 
(3, '9780307277712', 4), 
(4, '9780307277712', 3), 
(5, '9780307277712', 3), 
(1, '9780307278783', 3), 
(2, '9780307278783', 5), 
(3, '9780307278783', 4), 
(4, '9780307278783', 3), 
(5, '9780307278783', 5), 
(1, '9780307588364', 1), 
(2, '9780307588364', 5), 
(3, '9780307588364', 1), 
(4, '9780307588364', 4), 
(5, '9780307588364', 2), 
(1, '9780316055436', 3), 
(2, '9780316055436', 3), 
(3, '9780316055436', 4), 
(4, '9780316055436', 4), 
(5, '9780316055436', 2), 
(1, '9780316055437', 5), 
(2, '9780316055437', 1), 
(3, '9780316055437', 3), 
(4, '9780316055437', 2), 
(5, '9780316055437', 3), 
(1, '9780316556347', 2), 
(2, '9780316556347', 3), 
(3, '9780316556347', 3), 
(4, '9780316556347', 5), 
(5, '9780316556347', 1), 
(1, '9780345804358', 1), 
(2, '9780345804358', 2), 
(3, '9780345804358', 5), 
(4, '9780345804358', 4), 
(5, '9780345804358', 2), 
(1, '9780375718946', 3), 
(2, '9780375718946', 3), 
(3, '9780375718946', 3), 
(4, '9780375718946', 1), 
(5, '9780375718946', 1), 
(1, '9780385349570', 1), 
(2, '9780385349570', 4), 
(3, '9780385349570', 2), 
(4, '9780385349570', 4), 
(5, '9780385349570', 1), 
(1, '9780385511213', 3), 
(2, '9780385511213', 1), 
(3, '9780385511213', 1), 
(4, '9780385511213', 3), 
(5, '9780385511213', 4), 
(1, '9780385524282', 4), 
(2, '9780385524282', 1), 
(3, '9780385524282', 2), 
(4, '9780385524282', 3), 
(5, '9780385524282', 5), 
(1, '9780385524367', 0), 
(2, '9780385524367', 0), 
(3, '9780385524367', 0), 
(4, '9780385524367', 0), 
(5, '9780385524367', 0), 
(1, '9780385531204', 3), 
(2, '9780385531204', 3), 
(3, '9780385531204', 5), 
(4, '9780385531204', 3), 
(5, '9780385531204', 3), 
(1, '9780385537039', 3), 
(2, '9780385537039', 3), 
(3, '9780385537039', 2), 
(4, '9780385537039', 5), 
(5, '9780385537039', 2), 
(1, '9780385537855', 5), 
(2, '9780385537855', 5), 
(3, '9780385537855', 1), 
(4, '9780385537855', 1), 
(5, '9780385537855', 1), 
(1, '9780385537856', 1), 
(2, '9780385537856', 2), 
(3, '9780385537856', 1), 
(4, '9780385537856', 5), 
(5, '9780385537856', 3), 
(1, '9780385542361', 2), 
(2, '9780385542361', 1), 
(3, '9780385542361', 2), 
(4, '9780385542361', 1), 
(5, '9780385542361', 1), 
(1, '9780385720045', 1), 
(2, '9780385720045', 3), 
(3, '9780385720045', 2), 
(4, '9780385720045', 2), 
(5, '9780385720045', 2), 
(1, '9780385720953', 3), 
(2, '9780385720953', 4), 
(3, '9780385720953', 1), 
(4, '9780385720953', 1), 
(5, '9780385720953', 1), 
(1, '9780394703955', 2), 
(2, '9780394703955', 5), 
(3, '9780394703955', 2), 
(4, '9780394703955', 3), 
(5, '9780394703955', 2), 
(1, '9780399590504', 1), 
(2, '9780399590504', 2), 
(3, '9780399590504', 4), 
(4, '9780399590504', 2), 
(5, '9780399590504', 3), 
(1, '9780439139601', 2), 
(2, '9780439139601', 3), 
(3, '9780439139601', 1), 
(4, '9780439139601', 4), 
(5, '9780439139601', 3), 
(1, '9780439358071', 2), 
(2, '9780439358071', 3), 
(3, '9780439358071', 3), 
(4, '9780439358071', 5), 
(5, '9780439358071', 5), 
(1, '9780439358072', 5), 
(2, '9780439358072', 4), 
(3, '9780439358072', 2), 
(4, '9780439358072', 5), 
(5, '9780439358072', 4), 
(1, '9780439554893', 1), 
(2, '9780439554893', 2), 
(3, '9780439554893', 1), 
(4, '9780439554893', 1), 
(5, '9780439554893', 3), 
(1, '9780439554947', 1), 
(2, '9780439554947', 5), 
(3, '9780439554947', 2), 
(4, '9780439554947', 4), 
(5, '9780439554947', 2), 
(1, '9780451169525', 2), 
(2, '9780451169525', 3), 
(3, '9780451169525', 2), 
(4, '9780451169525', 5), 
(5, '9780451169525', 4), 
(1, '9780451176462', 1), 
(2, '9780451176462', 3), 
(3, '9780451176462', 3), 
(4, '9780451176462', 4), 
(5, '9780451176462', 3), 
(1, '9780451524935', 2), 
(2, '9780451524935', 3), 
(3, '9780451524935', 3), 
(4, '9780451524935', 1), 
(5, '9780451524935', 1), 
(1, '9780486284736', 2), 
(2, '9780486284736', 2), 
(3, '9780486284736', 1), 
(4, '9780486284736', 5), 
(5, '9780486284736', 5), 
(1, '9780525478812', 4), 
(2, '9780525478812', 3), 
(3, '9780525478812', 4), 
(4, '9780525478812', 3), 
(5, '9780525478812', 2), 
(1, '9780525501220', 4), 
(2, '9780525501220', 4), 
(3, '9780525501220', 3), 
(4, '9780525501220', 2), 
(5, '9780525501220', 3), 
(1, '9780525520375', 5), 
(2, '9780525520375', 4), 
(3, '9780525520375', 5), 
(4, '9780525520375', 4), 
(5, '9780525520375', 5), 
(1, '9780525563235', 4), 
(2, '9780525563235', 5), 
(3, '9780525563235', 2), 
(4, '9780525563235', 1), 
(5, '9780525563235', 2), 
(1, '9780525952662', 5), 
(2, '9780525952662', 1), 
(3, '9780525952662', 1), 
(4, '9780525952662', 2), 
(5, '9780525952662', 2), 
(1, '9780544003415', 5), 
(2, '9780544003415', 3), 
(3, '9780544003415', 2), 
(4, '9780544003415', 5), 
(5, '9780544003415', 4), 
(1, '9780545010221', 2), 
(2, '9780545010221', 2), 
(3, '9780545010221', 1), 
(4, '9780545010221', 5), 
(5, '9780545010221', 3), 
(1, '9780545010222', 5), 
(2, '9780545010222', 2), 
(3, '9780545010222', 5), 
(4, '9780545010222', 5), 
(5, '9780545010222', 3), 
(1, '9780547928203', 3), 
(2, '9780547928203', 1), 
(3, '9780547928203', 3), 
(4, '9780547928203', 3), 
(5, '9780547928203', 2), 
(1, '9780547928210', 2), 
(2, '9780547928210', 2), 
(3, '9780547928210', 4), 
(4, '9780547928210', 3), 
(5, '9780547928210', 1), 
(1, '9780547928227', 5), 
(2, '9780547928227', 4), 
(3, '9780547928227', 3), 
(4, '9780547928227', 5), 
(5, '9780547928227', 4), 
(1, '9780553418026', 1), 
(2, '9780553418026', 3), 
(3, '9780553418026', 5), 
(4, '9780553418026', 4), 
(5, '9780553418026', 3), 
(1, '9780553448122', 4), 
(2, '9780553448122', 5), 
(3, '9780553448122', 2), 
(4, '9780553448122', 1), 
(5, '9780553448122', 2), 
(1, '9780553448123', 5), 
(2, '9780553448123', 5), 
(3, '9780553448123', 5), 
(4, '9780553448123', 2), 
(5, '9780553448123', 5), 
(1, '9780571347292', 5), 
(2, '9780571347292', 2), 
(3, '9780571347292', 5), 
(4, '9780571347292', 5), 
(5, '9780571347292', 4), 
(1, '9780671035429', 1), 
(2, '9780671035429', 1), 
(3, '9780671035429', 3), 
(4, '9780671035429', 5), 
(5, '9780671035429', 1), 
(1, '9780671039755', 4), 
(2, '9780671039755', 3), 
(3, '9780671039755', 2), 
(4, '9780671039755', 1), 
(5, '9780671039755', 3), 
(1, '9780679732259', 4), 
(2, '9780679732259', 5), 
(3, '9780679732259', 2), 
(4, '9780679732259', 2), 
(5, '9780679732259', 5), 
(1, '9780679733730', 4), 
(2, '9780679733730', 3), 
(3, '9780679733730', 4), 
(4, '9780679733730', 5), 
(5, '9780679733730', 2), 
(1, '9780679735772', 1), 
(2, '9780679735772', 1), 
(3, '9780679735772', 4), 
(4, '9780679735772', 1), 
(5, '9780679735772', 4), 
(1, '9780679750536', 5), 
(2, '9780679750536', 3), 
(3, '9780679750536', 1), 
(4, '9780679750536', 2), 
(5, '9780679750536', 4), 
(1, '9780684800715', 4), 
(2, '9780684800715', 1), 
(3, '9780684800715', 5), 
(4, '9780684800715', 3), 
(5, '9780684800715', 5), 
(1, '9780684801469', 1), 
(2, '9780684801469', 2), 
(3, '9780684801469', 5), 
(4, '9780684801469', 4), 
(5, '9780684801469', 5), 
(1, '9780684801520', 4), 
(2, '9780684801520', 3), 
(3, '9780684801520', 1), 
(4, '9780684801520', 2), 
(5, '9780684801520', 1), 
(1, '9780684830421', 2), 
(2, '9780684830421', 1), 
(3, '9780684830421', 3), 
(4, '9780684830421', 3), 
(5, '9780684830421', 4), 
(1, '9780684830506', 2), 
(2, '9780684830506', 2), 
(3, '9780684830506', 2), 
(4, '9780684830506', 5), 
(5, '9780684830506', 1), 
(1, '9780684830507', 4), 
(2, '9780684830507', 5), 
(3, '9780684830507', 3), 
(4, '9780684830507', 2), 
(5, '9780684830507', 2), 
(1, '9780684833392', 5), 
(2, '9780684833392', 4), 
(3, '9780684833392', 1), 
(4, '9780684833392', 5), 
(5, '9780684833392', 5), 
(1, '9780735219113', 4), 
(2, '9780735219113', 4), 
(3, '9780735219113', 3), 
(4, '9780735219113', 1), 
(5, '9780735219113', 3), 
(1, '9780735224292', 1), 
(2, '9780735224292', 5), 
(3, '9780735224292', 3), 
(4, '9780735224292', 2), 
(5, '9780735224292', 2), 
(1, '9780743273565', 3), 
(2, '9780743273565', 2), 
(3, '9780743273565', 4), 
(4, '9780743273565', 1), 
(5, '9780743273565', 1), 
(1, '9780743273566', 3), 
(2, '9780743273566', 4), 
(3, '9780743273566', 4), 
(4, '9780743273566', 2), 
(5, '9780743273566', 3), 
(1, '9780747596461', 1), 
(2, '9780747596461', 4), 
(3, '9780747596461', 1), 
(4, '9780747596461', 1), 
(5, '9780747596461', 3), 
(1, '9780765326355', 5), 
(2, '9780765326355', 2), 
(3, '9780765326355', 2), 
(4, '9780765326355', 5), 
(5, '9780765326355', 4), 
(1, '9780765377142', 1), 
(2, '9780765377142', 4), 
(3, '9780765377142', 3), 
(4, '9780765377142', 3), 
(5, '9780765377142', 5), 
(1, '9780805094602', 2), 
(2, '9780805094602', 5), 
(3, '9780805094602', 1), 
(4, '9780805094602', 3), 
(5, '9780805094602', 3), 
(1, '9780805094619', 1), 
(2, '9780805094619', 5), 
(3, '9780805094619', 2), 
(4, '9780805094619', 5), 
(5, '9780805094619', 2), 
(1, '9780812987114', 5), 
(2, '9780812987114', 5), 
(3, '9780812987114', 4), 
(4, '9780812987114', 5), 
(5, '9780812987114', 5), 
(1, '9780812988406', 1), 
(2, '9780812988406', 1), 
(3, '9780812988406', 5), 
(4, '9780812988406', 2), 
(5, '9780812988406', 5), 
(1, '9780857521353', 3), 
(2, '9780857521353', 5), 
(3, '9780857521353', 5), 
(4, '9780857521353', 1), 
(5, '9780857521353', 2), 
(1, '9781250027436', 1), 
(2, '9781250027436', 3), 
(3, '9781250027436', 4), 
(4, '9781250027436', 3), 
(5, '9781250027436', 1), 
(1, '9781250042763', 2), 
(2, '9781250042763', 2), 
(3, '9781250042763', 3), 
(4, '9781250042763', 1), 
(5, '9781250042763', 1), 
(1, '9781250142283', 1), 
(2, '9781250142283', 4), 
(3, '9781250142283', 5), 
(4, '9781250142283', 2), 
(5, '9781250142283', 4), 
(1, '9781250142306', 2), 
(2, '9781250142306', 4), 
(3, '9781250142306', 3), 
(4, '9781250142306', 5), 
(5, '9781250142306', 4), 
(1, '9781250178619', 3), 
(2, '9781250178619', 3), 
(3, '9781250178619', 4), 
(4, '9781250178619', 5), 
(5, '9781250178619', 3), 
(1, '9781250313072', 0), 
(2, '9781250313072', 0), 
(3, '9781250313072', 0), 
(4, '9781250313072', 0), 
(5, '9781250313072', 0), 
(1, '9781400031702', 5), 
(2, '9781400031702', 3), 
(3, '9781400031702', 2), 
(4, '9781400031702', 1), 
(5, '9781400031702', 2), 
(1, '9781400064168', 1), 
(2, '9781400064168', 2), 
(3, '9781400064168', 2), 
(4, '9781400064168', 4), 
(5, '9781400064168', 1), 
(1, '9781416524793', 2), 
(2, '9781416524793', 2), 
(3, '9781416524793', 5), 
(4, '9781416524793', 3), 
(5, '9781416524793', 2), 
(1, '9781416570868', 1), 
(2, '9781416570868', 2), 
(3, '9781416570868', 2), 
(4, '9781416570868', 4), 
(5, '9781416570868', 5), 
(1, '9781416572366', 4), 
(2, '9781416572366', 4), 
(3, '9781416572366', 4), 
(4, '9781416572366', 4), 
(5, '9781416572366', 1), 
(1, '9781449486792', 1), 
(2, '9781449486792', 2), 
(3, '9781449486792', 5), 
(4, '9781449486792', 4), 
(5, '9781449486792', 4), 
(1, '9781476763954', 1), 
(2, '9781476763954', 3), 
(3, '9781476763954', 2), 
(4, '9781476763954', 5), 
(5, '9781476763954', 5), 
(1, '9781501105777', 5), 
(2, '9781501105777', 5), 
(3, '9781501105777', 2), 
(4, '9781501105777', 1), 
(5, '9781501105777', 1), 
(1, '9781501105807', 4), 
(2, '9781501105807', 2), 
(3, '9781501105807', 3), 
(4, '9781501105807', 3), 
(5, '9781501105807', 1), 
(1, '9781501133435', 5), 
(2, '9781501133435', 3), 
(3, '9781501133435', 2), 
(4, '9781501133435', 3), 
(5, '9781501133435', 4), 
(1, '9781501133466', 5), 
(2, '9781501133466', 5), 
(3, '9781501133466', 4), 
(4, '9781501133466', 4), 
(5, '9781501133466', 3), 
(1, '9781501142970', 0), 
(2, '9781501142970', 0), 
(3, '9781501142970', 0), 
(4, '9781501142970', 0), 
(5, '9781501142970', 0), 
(1, '9781501160769', 1), 
(2, '9781501160769', 4), 
(3, '9781501160769', 2), 
(4, '9781501160769', 5), 
(5, '9781501160769', 5), 
(1, '9781501160790', 3), 
(2, '9781501160790', 3), 
(3, '9781501160790', 1), 
(4, '9781501160790', 4), 
(5, '9781501160790', 5), 
(1, '9781501160806', 2), 
(2, '9781501160806', 5), 
(3, '9781501160806', 1), 
(4, '9781501160806', 1), 
(5, '9781501160806', 1), 
(1, '9781501166785', 5), 
(2, '9781501166785', 4), 
(3, '9781501166785', 5), 
(4, '9781501166785', 1), 
(5, '9781501166785', 2), 
(1, '9781501168529', 1), 
(2, '9781501168529', 2), 
(3, '9781501168529', 4), 
(4, '9781501168529', 1), 
(5, '9781501168529', 4), 
(1, '9781501168802', 3), 
(2, '9781501168802', 2), 
(3, '9781501168802', 4), 
(4, '9781501168802', 1), 
(5, '9781501168802', 4), 
(1, '9781501173218', 2), 
(2, '9781501173218', 5), 
(3, '9781501173218', 2), 
(4, '9781501173218', 3), 
(5, '9781501173218', 4), 
(1, '9781501173219', 3), 
(2, '9781501173219', 2), 
(3, '9781501173219', 4), 
(4, '9781501173219', 3), 
(5, '9781501173219', 5), 
(1, '9781501175465', 4), 
(2, '9781501175465', 3), 
(3, '9781501175465', 4), 
(4, '9781501175465', 1), 
(5, '9781501175465', 4), 
(1, '9781501175466', 2), 
(2, '9781501175466', 5), 
(3, '9781501175466', 1), 
(4, '9781501175466', 2), 
(5, '9781501175466', 3), 
(1, '9781501175565', 5), 
(2, '9781501175565', 5), 
(3, '9781501175565', 4), 
(4, '9781501175565', 2), 
(5, '9781501175565', 2), 
(1, '9781501178269', 3), 
(2, '9781501178269', 1), 
(3, '9781501178269', 4), 
(4, '9781501178269', 2), 
(5, '9781501178269', 3), 
(1, '9781501180989', 3), 
(2, '9781501180989', 2), 
(3, '9781501180989', 2), 
(4, '9781501180989', 2), 
(5, '9781501180989', 5), 
(1, '9781540682178', 5), 
(2, '9781540682178', 3), 
(3, '9781540682178', 5), 
(4, '9781540682178', 5), 
(5, '9781540682178', 5), 
(1, '9781594489501', 3), 
(2, '9781594489501', 3), 
(3, '9781594489501', 4), 
(4, '9781594489501', 1), 
(5, '9781594489501', 3), 
(1, '9781594631764', 3), 
(2, '9781594631764', 4), 
(3, '9781594631764', 3), 
(4, '9781594631764', 2), 
(5, '9781594631764', 3), 
(1, '9781594633940', 1), 
(2, '9781594633940', 4), 
(3, '9781594633940', 3), 
(4, '9781594633940', 3), 
(5, '9781594633940', 1), 
(1, '9781607014544', 4), 
(2, '9781607014544', 2), 
(3, '9781607014544', 5), 
(4, '9781607014544', 4), 
(5, '9781607014544', 3), 
(1, '9781609455739', 3), 
(2, '9781609455739', 4), 
(3, '9781609455739', 4), 
(4, '9781609455739', 4), 
(5, '9781609455739', 4), 
(1, '9781616208684', 1), 
(2, '9781616208684', 4), 
(3, '9781616208684', 1), 
(4, '9781616208684', 3), 
(5, '9781616208684', 1), 
(1, '9781627792134', 2), 
(2, '9781627792134', 2), 
(3, '9781627792134', 1), 
(4, '9781627792134', 2), 
(5, '9781627792134', 4), 
(1, '9781785038881', 4), 
(2, '9781785038881', 4), 
(3, '9781785038881', 1), 
(4, '9781785038881', 2), 
(5, '9781785038881', 4), 
(1, '9781785654584', 1), 
(2, '9781785654584', 3), 
(3, '9781785654584', 4), 
(4, '9781785654584', 5), 
(5, '9781785654584', 4), 
(1, '9781982135848', 4), 
(2, '9781982135848', 5), 
(3, '9781982135848', 2), 
(4, '9781982135848', 4), 
(5, '9781982135848', 2);




Insert into user_phone(phone_number, user_id)
VALUES
('6964792202',1),
('6927711837',2),
('6920996588',3),
('6937511148',4),
('6962221655',5),
('6909502350',6),
('6927207619',7),
('6904594346',8),
('6947985366',9),
('6985858418',10),
('6973594779',11),
('6961884065',12),
('6989136774',13),
('6996239504',14),
('6950777934',15),
('6904767846',16),
('6917972284',17),
('6987268955',18),
('6975239184',19),
('6963116063',20),
('6993819259',21),
('6992644810',22),
('6946285832',23),
('6955633044',24),
('6948321270',25),
('6983224174',26),
('6932028629',27),
('6948707024',28),
('6990421970',29),
('6970498406',30),
('6927299671',31),
('6958029341',32),
('6985939792',33),
('6966777496',34),
('6913245819',35),
('6946922301',36),
('6995401516',37),
('6949802479',38),
('6913006073',39),
('6911820829',40),
('6994312691',41),
('6971519359',42),
('6935375698',43),
('6957320587',44),
('6902868764',45),
('6916681370',46),
('6967745165',47),
('6982915090',48),
('6939283933',49),
('6956337302',50),
('6928271577',51),
('6960705633',52),
('6969802791',53),
('6945643628',54),
('6983542309',55),
('6957214383',56),
('6995263890',57),
('6918783344',58),
('6995474561',59),
('6981656795',60),
('6912021882',61),
('6923834764',62),
('6933472062',63),
('6942603651',64),
('6917838495',65),
('6956481577',66),
('6933695348',67),
('6997826402',68),
('6901326090',69),
('6928783037',70),
('6956014091',71),
('6998203488',72),
('6919793787',73),
('6945800536',74),
('6900624308',75),
('6917853754',76),
('6955591610',77),
('6958257956',78),
('6991241923',79),
('6973886536',80),
('6921624908',81),
('6965679248',82),
('6988652309',83),
('6989339763',84),
('6967183230',85),
('6968978394',86),
('6981194931',87),
('6947285863',88),
('6934082319',89),
('6937014271',90),
('6912670487',91),
('6924997763',92),
('6965829084',93),
('6912477537',94),
('6996588116',95),
('6969758143',96),
('6963144947',97),
('6950645045',98),
('6961420024',99),
('6966933864',100),
('6907873744',101),
('6920249610',102),
('6949071695',103),
('6922195829',104),
('6927023367',105),
('6975039393',106),
('6942898260',1),
('6962441662',2),
('6937282560',3),
('6919966259',4),
('6976717881',5),
('6936706720',6),
('6973490470',7),
('6986792788',8),
('6920873443',9),
('6903918830',10),
('6996936868',11),
('6948005595',12),
('6935488622',13),
('6914205128',14),
('6946888500',15),
('6969147086',16),
('6946207338',17),
('6905841307',18),
('6958972213',19),
('6930689606',20),
('6970608771',21),
('6900978618',22),
('6981356204',23),
('6968247881',24),
('6994943866',25),
('6926436522',26),
('6917040554',27),
('6904696099',28),
('6910617601',29),
('6943680171',30),
('6904876393',31),
('6946347373',32),
('6912799414',33),
('6959693101',34),
('6947621846', 113),
('6985624125', 113),
('6991333754', 107),
('6912345678', 107),
('6900357617', 108),
('6967617622', 108),
('6957626308', 108),
('6950312835', 109),
('6927501486', 110),
('6891300958', 110),
('6979638224', 111),
('6937355526', 111),
('6924024938', 112),
('6902696551', 112),
('6901512598', 112),
('6980534770', 112);




delete from loan;
Insert into loan(request_date, loan_status, last_status_update, loan_date, return_date, user_id, ISBN, lib_admin_id)
values


('2022-05-01', 'returned', '2022-05-11', '2022-05-01', '2022-05-11', 23, '9780553448123', 6),
('2022-05-06', 'declined', '2022-05-07', null, null, 24, '9780062073600', 66),
('2022-05-05', 'returned', '2022-05-11', '2022-05-06', '2022-05-11', 25, '9780671039755', 1),
('2022-05-01', 'returned', '2022-05-10', '2022-05-01', '2022-05-10', 26, '9780735219113', 2),
('2022-05-04', 'returned', '2022-05-14', '2022-05-04', '2022-05-14', 28, '9780307588364', 6),
('2022-05-01', 'returned', '2022-05-08', '2022-05-01', '2022-05-08', 29, '9780812987114', 66),
('2022-05-01', 'returned', '2022-05-15', '2022-05-02', '2022-05-15', 31, '9781501105777', 2),
('2022-05-02', 'returned', '2022-05-12', '2022-05-03', '2022-05-12', 32, '9780316556347', 4),
('2022-05-06', 'returned', '2022-05-10', '2022-05-06', '2022-05-10', 33, '9780385531204', 6),
('2022-05-05', 'returned', '2022-05-10', '2022-05-05', '2022-05-10', 34, '9781476763954', 66),
('2022-05-06', 'returned', '2022-05-13', '2022-05-06', '2022-05-13', 35, '9780385531204', 1),
('2022-05-06', 'returned', '2022-05-14', '2022-05-06', '2022-05-14', 37, '9781594633940', 66),
('2022-05-04', 'returned', '2022-05-10', '2022-05-04', '2022-05-10', 38, '9780385531204', 1),
('2022-05-03', 'declined', '2022-05-04', null, null, 39, '9781250027436', 2),
('2022-05-03', 'returned', '2022-05-11', '2022-05-03', '2022-05-11', 40, '9780375718946', 4),
('2022-05-05', 'returned', '2022-05-09', '2022-05-05', '2022-05-09', 41, '9781501168802', 2),
('2022-05-06', 'declined', '2022-05-07', null, null, 42, '9781594631764', 4),
('2022-05-04', 'returned', '2022-05-12', '2022-05-05', '2022-05-12', 43, '9780140621195', 6),
('2022-05-04', 'returned', '2022-05-11', '2022-05-05', '2022-05-11', 45, '9780062457714', 1),
('2022-05-07', 'returned', '2022-05-13', '2022-05-07', '2022-05-13', 47, '9780812987114', 4),
('2022-05-07', 'returned', '2022-05-10', '2022-05-07', '2022-05-10', 48, '9780307588364', 6),
('2022-05-05', 'returned', '2022-05-09', '2022-05-05', '2022-05-09', 49, '9780062073563', 66),
('2022-05-07', 'returned', '2022-05-10', '2022-05-07', '2022-05-10', 51, '9780684833392', 2),
('2022-05-16', 'returned', '2022-05-25', '2022-05-16', '2022-05-25', 70, '9781609455739', 6),
('2022-05-18', 'returned', '2022-05-25', '2022-05-18', '2022-05-25', 72, '9781609455739', 1),
('2022-05-16', 'returned', '2022-05-24', '2022-05-16', '2022-05-24', 73, '9780307276650', 2),
('2022-05-21', 'returned', '2022-05-28', '2022-05-22', '2022-05-28', 74, '9781250178619', 4),
('2022-05-19', 'returned', '2022-05-24', '2022-05-20', '2022-05-24', 76, '9780553448122', 2),
('2022-05-17', 'returned', '2022-05-31', '2022-05-18', '2022-05-31', 77, '9781607014544', 4),
('2022-05-15', 'returned', '2022-05-27', '2022-05-15', '2022-05-27', 78, '9780439554893', 6),
('2022-05-22', 'returned', '2022-05-25', '2022-05-23', '2022-05-25', 79, '9780385537856', 66),
('2022-05-21', 'returned', '2022-05-23', '2022-05-21', '2022-05-23', 81, '9780385720953', 2),
('2022-05-18', 'returned', '2022-05-30', '2022-05-18', '2022-05-30', 83, '9781250142306', 6),
('2022-05-19', 'returned', '2022-05-31', '2022-05-20', '2022-05-31', 85, '9781501175465', 1),
('2022-05-22', 'returned', '2022-05-27', '2022-05-22', '2022-05-27', 86, '9780062073495', 2),
('2022-05-15', 'returned', '2022-05-27', '2022-05-15', '2022-05-27', 88, '9781594489501', 6),
('2022-05-19', 'returned', '2022-05-26', '2022-05-20', '2022-05-26', 89, '9780141198963', 66),
('2022-05-15', 'returned', '2022-05-28', '2022-05-16', '2022-05-28', 91, '9780099458326', 2),
('2022-05-16', 'returned', '2022-05-25', '2022-05-16', '2022-05-25', 93, '9780451176462', 6),
('2022-05-16', 'returned', '2022-05-30', '2022-05-16', '2022-05-30', 95, '9780307588364', 66),
('2022-05-22', 'returned', '2022-05-30', '2022-05-22', '2022-05-30', 97, '9780525501220', 1),
('2022-05-21', 'returned', '2022-05-27', '2022-05-21', '2022-05-27', 99, '9780062073600', 4),
('2022-05-16', 'returned', '2022-05-24', '2022-05-17', '2022-05-24', 100, '9780141439693', 6),
('2022-05-16', 'returned', '2022-05-30', '2022-05-16', '2022-05-30', 101, '9780141187761', 66),
('2022-05-16', 'returned', '2022-05-25', '2022-05-17', '2022-05-25', 102, '9780439554947', 1),
('2022-05-17', 'returned', '2022-05-29', '2022-05-18', '2022-05-29', 104, '9780439554893', 4),
('2022-05-17', 'returned', '2022-05-31', '2022-05-18', '2022-05-31', 105, '9781416570868', 6),
('2022-05-15', 'returned', '2022-05-27', '2022-05-16', '2022-05-27', 106, '9781501168529', 1),
('2022-05-20', 'returned', '2022-05-24', '2022-05-21', '2022-05-24', 107, '9781449486792', 2),
('2022-05-22', 'returned', '2022-05-28', '2022-05-22', '2022-05-28', 108, '9780141185239', 1),
('2022-05-20', 'returned', '2022-05-30', '2022-05-21', '2022-05-30', 109, '9780684801469', 2),
('2022-05-15', 'returned', '2022-05-25', '2022-05-16', '2022-05-25', 111, '9781501175465', 6),
('2022-05-18', 'returned', '2022-05-23', '2022-05-18', '2022-05-23', 112, '9781250142283', 66),
('2022-05-15', 'returned', '2022-05-28', '2022-05-15', '2022-05-28', 1, '9781501133435', 1),
('2022-05-17', 'returned', '2022-05-26', '2022-05-18', '2022-05-26', 2, '9781250142283', 2),
('2022-05-21', 'returned', '2022-05-31', '2022-05-22', '2022-05-31', 4, '9780553448122', 4),
('2022-05-19', 'returned', '2022-05-29', '2022-05-19', '2022-05-29', 6, '9780307277712', 6),
('2022-05-17', 'returned', '2022-05-30', '2022-05-17', '2022-05-30', 8, '9781416572366', 1),
('2022-05-21', 'returned', '2022-05-29', '2022-05-22', '2022-05-29', 9, '9780439358071', 2),
('2022-05-18', 'returned', '2022-05-23', '2022-05-18', '2022-05-23', 10, '9781501175466', 4),
('2022-05-17', 'returned', '2022-05-26', '2022-05-18', '2022-05-26', 12, '9780486284736', 4),
('2022-05-16', 'returned', '2022-05-23', '2022-05-16', '2022-05-23', 13, '9780385349570', 6),
('2022-05-20', 'returned', '2022-05-29', '2022-05-20', '2022-05-29', 14, '9780007113804', 66),
('2022-05-16', 'declined', '2022-05-16', null, null, 16, '9780062457714', 2),
('2022-05-19', 'returned', '2022-05-28', '2022-05-20', '2022-05-28', 18, '9780544003415', 6),


('2022-06-06', 'returned', '2022-06-10', '2022-06-07', '2022-06-10', 19, '9780553418026', 66),
('2022-06-02', 'returned', '2022-06-13', '2022-06-03', '2022-06-13', 20, '9781501175565', 1),
('2022-06-03', 'returned', '2022-06-11', '2022-06-04', '2022-06-11', 21, '9780671039755', 2),
('2022-06-02', 'returned', '2022-06-13', '2022-06-03', '2022-06-13', 22, '9780486284736', 4),
('2022-06-01', 'returned', '2022-06-13', '2022-06-01', '2022-06-13', 23, '9780857521353', 6),
('2022-06-03', 'returned', '2022-06-13', '2022-06-04', '2022-06-13', 25, '9780439554893', 1),
('2022-06-02', 'returned', '2022-06-15', '2022-06-03', '2022-06-15', 26, '9780307277712', 2),
('2022-06-05', 'returned', '2022-06-11', '2022-06-05', '2022-06-11', 28, '9780062073501', 6),
('2022-06-06', 'returned', '2022-06-10', '2022-06-07', '2022-06-10', 30, '9781501160790', 1),
('2022-06-02', 'returned', '2022-06-11', '2022-06-03', '2022-06-11', 32, '9780439358071', 4),
('2022-06-07', 'returned', '2022-06-13', '2022-06-07', '2022-06-13', 34, '9781449486792', 66),
('2022-06-03', 'returned', '2022-06-11', '2022-06-04', '2022-06-11', 36, '9780385542361', 6),
('2022-06-01', 'returned', '2022-06-09', '2022-06-02', '2022-06-09', 38, '9780062073549', 1),
('2022-06-02', 'returned', '2022-06-13', '2022-06-03', '2022-06-13', 39, '9780141187396', 2),
('2022-06-06', 'returned', '2022-06-11', '2022-06-07', '2022-06-11', 40, '9780439139601', 4),
('2022-06-04', 'returned', '2022-06-14', '2022-06-04', '2022-06-14', 42, '9781501166785', 4),
('2022-06-01', 'returned', '2022-06-09', '2022-06-01', '2022-06-09', 43, '9781501173219', 6),
('2022-06-01', 'declined', '2022-06-02', null, null, 45, '9780553418026', 1),
('2022-06-04', 'returned', '2022-06-08', '2022-06-04', '2022-06-08', 46, '9780451524935', 2),
('2022-06-06', 'returned', '2022-06-11', '2022-06-07', '2022-06-11', 48, '9780062073495', 6),
('2022-06-02', 'declined', '2022-06-03', null, null, 49, '9780099528988', 66),
('2022-06-07', 'returned', '2022-06-11', '2022-06-08', '2022-06-11', 50, '9780451169525', 1),
('2022-06-04', 'returned', '2022-06-11', '2022-06-05', '2022-06-11', 51, '9780061120085', 2),
('2022-06-03', 'declined', '2022-06-04', null, null, 52, '9780525520375', 4),
('2022-06-06', 'declined', '2022-06-06', null, null, 53, '9780141187396', 6),
('2022-06-03', 'returned', '2022-06-09', '2022-06-04', '2022-06-09', 55, '9780684801469', 1),
('2022-06-03', 'returned', '2022-06-14', '2022-06-04', '2022-06-14', 56, '9780141187396', 2),
('2022-06-02', 'returned', '2022-06-15', '2022-06-03', '2022-06-15', 57, '9780747596461', 4),
('2022-06-01', 'returned', '2022-06-14', '2022-06-01', '2022-06-14', 58, '9780140433922', 6),
('2022-06-06', 'returned', '2022-06-13', '2022-06-07', '2022-06-13', 60, '9781501173219', 1),
('2022-06-05', 'returned', '2022-06-13', '2022-06-05', '2022-06-13', 61, '9781501173218', 2),
('2022-06-02', 'returned', '2022-06-13', '2022-06-03', '2022-06-13', 63, '9780525520375', 6),
('2022-06-03', 'returned', '2022-06-08', '2022-06-03', '2022-06-08', 64, '9780062073549', 66),
('2022-06-06', 'returned', '2022-06-11', '2022-06-07', '2022-06-11', 65, '9780385537039', 6),
('2022-06-07', 'declined', '2022-06-07', null, null, 67, '9780141442464', 1),
('2022-06-02', 'returned', '2022-06-09', '2022-06-02', '2022-06-09', 68, '9780307276650', 2),
('2022-06-03', 'returned', '2022-06-09', '2022-06-04', '2022-06-09', 70, '9780547928203', 6),
('2022-06-04', 'returned', '2022-06-11', '2022-06-04', '2022-06-11', 71, '9780099448792', 66),
('2022-06-04', 'returned', '2022-06-09', '2022-06-05', '2022-06-09', 73, '9781501175565', 2),
('2022-06-01', 'returned', '2022-06-12', '2022-06-02', '2022-06-12', 74, '9780743273565', 4),
('2022-06-01', 'returned', '2022-06-09', '2022-06-02', '2022-06-09', 76, '9780747596461', 2),
('2022-06-04', 'returned', '2022-06-11', '2022-06-05', '2022-06-11', 78, '9781501160790', 6),
('2022-06-03', 'declined', '2022-06-03', null, null, 79, '9781400064168', 66),
('2022-06-02', 'returned', '2022-06-09', '2022-06-02', '2022-06-09', 80, '9781250142306', 1),
('2022-06-19', 'returned', '2022-07-01', '2022-06-20', '2022-07-01', 109, '9780062255655', 2),
('2022-06-22', 'returned', '2022-06-25', '2022-06-22', '2022-06-25', 110, '9780439139601', 4),
('2022-06-18', 'returned', '2022-06-29', '2022-06-18', '2022-06-29', 112, '9780451169525', 66),
('2022-06-18', 'returned', '2022-06-24', '2022-06-19', '2022-06-24', 1, '9780525952662', 1),
('2022-06-18', 'returned', '2022-06-30', '2022-06-18', '2022-06-30', 2, '9780141187761', 2),
('2022-06-22', 'declined', '2022-06-23', null, null, 4, '9780385349570', 4),
('2022-06-15', 'returned', '2022-06-23', '2022-06-15', '2022-06-23', 6, '9780061120084', 6),
('2022-06-20', 'returned', '2022-06-24', '2022-06-20', '2022-06-24', 8, '9781501175465', 1),
('2022-06-18', 'returned', '2022-06-24', '2022-06-19', '2022-06-24', 10, '9780375718946', 4),
('2022-06-18', 'returned', '2022-06-30', '2022-06-19', '2022-06-30', 11, '9781501175466', 2),
('2022-06-16', 'returned', '2022-06-30', '2022-06-17', '2022-06-30', 12, '9780805094619', 4),
('2022-06-18', 'returned', '2022-06-30', '2022-06-19', '2022-06-30', 14, '9780451524935', 66),
('2022-06-22', 'returned', '2022-06-24', '2022-06-23', '2022-06-24', 15, '9781250178619', 1),
('2022-06-19', 'returned', '2022-06-25', '2022-06-19', '2022-06-25', 16, '9780385531204', 2),
('2022-06-18', 'declined', '2022-06-19', null, null, 18, '9781594633940', 6),
('2022-06-20', 'returned', '2022-06-25', '2022-06-20', '2022-06-25', 20, '9780735224292', 1),
('2022-06-22', 'returned', '2022-06-26', '2022-06-22', '2022-06-26', 21, '9781250178619', 2),
('2022-06-18', 'returned', '2022-06-28', '2022-06-18', '2022-06-28', 22, '9780812987114', 4),
('2022-06-19', 'returned', '2022-06-26', '2022-06-19', '2022-06-26', 23, '9781501175465', 6),
('2022-06-20', 'returned', '2022-07-01', '2022-06-21', '2022-07-01', 24, '9780439554893', 66),
('2022-06-15', 'returned', '2022-06-26', '2022-06-16', '2022-06-26', 26, '9780307276650', 2),
('2022-06-20', 'returned', '2022-06-27', '2022-06-21', '2022-06-27', 27, '9780141442464', 4),
('2022-06-21', 'declined', '2022-06-21', null, null, 29, '9780140621195', 66),
('2022-06-22', 'returned', '2022-06-23', '2022-06-22', '2022-06-23', 31, '9781501168802', 2),
('2022-06-18', 'returned', '2022-06-29', '2022-06-19', '2022-06-29', 32, '9780141185239', 4),
('2022-06-20', 'returned', '2022-06-24', '2022-06-20', '2022-06-24', 34, '9780553418026', 66),
('2022-06-15', 'returned', '2022-06-30', '2022-06-16', '2022-06-30', 36, '9780439554947', 6),
('2022-06-22', 'returned', '2022-06-28', '2022-06-23', '2022-06-28', 37, '9780679735772', 66),
('2022-06-22', 'returned', '2022-06-29', '2022-06-23', '2022-06-29', 39, '9780684833392', 2),
('2022-06-20', 'returned', '2022-06-30', '2022-06-20', '2022-06-30', 40, '9780316556347', 4),
('2022-06-18', 'returned', '2022-06-29', '2022-06-18', '2022-06-29', 41, '9780385537855', 2),
('2022-06-15', 'declined', '2022-06-15', null, null, 43, '9780679750536', 6),
('2022-06-16', 'returned', '2022-07-01', '2022-06-17', '2022-07-01', 45, '9781501133435', 1),
('2022-06-17', 'returned', '2022-06-25', '2022-06-18', '2022-06-25', 46, '9780062457714', 2),
('2022-06-21', 'returned', '2022-06-25', '2022-06-22', '2022-06-25', 47, '9780525520375', 4),
('2022-06-22', 'declined', '2022-06-23', null, null, 49, '9781250042763', 66),
('2022-06-19', 'declined', '2022-06-19', null, null, 51, '9780486284736', 2),



('2022-07-05', 'returned', '2022-07-13', '2022-07-06', '2022-07-13', 38, '9781627792134', 1),
('2022-07-05', 'returned', '2022-07-12', '2022-07-05', '2022-07-12', 39, '9780062255655', 2),
('2022-07-07', 'returned', '2022-07-11', '2022-07-07', '2022-07-11', 40, '9781416572366', 4),
('2022-07-04', 'returned', '2022-07-14', '2022-07-04', '2022-07-14', 41, '9781982135848', 2),
('2022-07-06', 'returned', '2022-07-13', '2022-07-07', '2022-07-13', 43, '9781501173219', 6),
('2022-07-05', 'returned', '2022-07-10', '2022-07-06', '2022-07-10', 45, '9781785038881', 1),
('2022-07-06', 'returned', '2022-07-13', '2022-07-06', '2022-07-13', 47, '9780385537039', 4),
('2022-07-01', 'returned', '2022-07-09', '2022-07-01', '2022-07-09', 49, '9780547928203', 66),
('2022-07-07', 'returned', '2022-07-15', '2022-07-08', '2022-07-15', 51, '9780141198963', 2),
('2022-07-01', 'returned', '2022-07-08', '2022-07-01', '2022-07-08', 53, '9780062073600', 6),
('2022-07-07', 'returned', '2022-07-09', '2022-07-08', '2022-07-09', 54, '9780553448123', 66),
('2022-07-06', 'returned', '2022-07-13', '2022-07-07', '2022-07-13', 55, '9781501166785', 1),
('2022-07-06', 'returned', '2022-07-11', '2022-07-07', '2022-07-11', 57, '9781416572366', 4),
('2022-07-01', 'returned', '2022-07-13', '2022-07-01', '2022-07-13', 59, '9781250142306', 66),
('2022-07-01', 'returned', '2022-07-14', '2022-07-02', '2022-07-14', 60, '9780385542361', 1),
('2022-07-06', 'returned', '2022-07-10', '2022-07-07', '2022-07-10', 61, '9780553448122', 2),
('2022-07-06', 'returned', '2022-07-10', '2022-07-07', '2022-07-10', 63, '9780007113804', 6),
('2022-07-05', 'declined', '2022-07-05', null, null, 64, '9780684800715', 66),
('2022-07-04', 'returned', '2022-07-09', '2022-07-04', '2022-07-09', 65, '9780307588364', 6),
('2022-07-01', 'returned', '2022-07-14', '2022-07-01', '2022-07-14', 67, '9781501168802', 1),
('2022-07-06', 'declined', '2022-07-07', null, null, 69, '9780062409867', 4),
('2022-07-03', 'returned', '2022-07-10', '2022-07-03', '2022-07-10', 70, '9780547928203', 6),
('2022-07-03', 'returned', '2022-07-13', '2022-07-04', '2022-07-13', 71, '9780141185130', 66),
('2022-07-03', 'returned', '2022-07-09', '2022-07-04', '2022-07-09', 73, '9781501105777', 2),
('2022-07-05', 'returned', '2022-07-11', '2022-07-06', '2022-07-11', 75, '9780545010222', 1),
('2022-07-07', 'declined', '2022-07-08', null, null, 76, '9780316055436', 2),
('2022-07-03', 'returned', '2022-07-09', '2022-07-04', '2022-07-09', 78, '9780140621195', 6),
('2022-07-07', 'returned', '2022-07-10', '2022-07-07', '2022-07-10', 80, '9780141393049', 1),
('2022-07-05', 'returned', '2022-07-14', '2022-07-06', '2022-07-14', 81, '9780765326355', 2),
('2022-07-03', 'returned', '2022-07-11', '2022-07-04', '2022-07-11', 83, '9780525563235', 6),
('2022-07-05', 'declined', '2022-07-05', null, null, 85, '9780385537855', 1),
('2022-07-02', 'returned', '2022-07-15', '2022-07-03', '2022-07-15', 87, '9780439554893', 4),
('2022-07-06', 'declined', '2022-07-07', null, null, 89, '9781501168529', 66),
('2022-07-03', 'returned', '2022-07-08', '2022-07-03', '2022-07-08', 90, '9780439139601', 1),
('2022-07-03', 'declined', '2022-07-03', null, null, 92, '9781501166785', 4),
('2022-07-04', 'returned', '2022-07-14', '2022-07-04', '2022-07-14', 93, '9780385542361', 6),
('2022-07-19', 'declined', '2022-07-19', null, null, 57, '9780143105428', 4),
('2022-07-17', 'returned', '2022-07-30', '2022-07-18', '2022-07-30', 59, '9780684830421', 66),
('2022-07-17', 'returned', '2022-07-30', '2022-07-18', '2022-07-30', 61, '9780151010264', 2),
('2022-07-22', 'returned', '2022-07-28', '2022-07-22', '2022-07-28', 63, '9780399590504', 6),
('2022-07-21', 'returned', '2022-07-30', '2022-07-21', '2022-07-30', 65, '9780684801520', 6),
('2022-07-20', 'declined', '2022-07-20', null, null, 67, '9780141185130', 1),
('2022-07-22', 'returned', '2022-07-27', '2022-07-22', '2022-07-27', 68, '9781250178619', 2),
('2022-07-16', 'returned', '2022-07-24', '2022-07-16', '2022-07-24', 69, '9781501160790', 4),
('2022-07-16', 'returned', '2022-07-27', '2022-07-16', '2022-07-27', 70, '9781250178619', 6),
('2022-07-20', 'returned', '2022-07-26', '2022-07-21', '2022-07-26', 72, '9780545010222', 1),
('2022-07-17', 'returned', '2022-07-27', '2022-07-18', '2022-07-27', 73, '9780765326355', 2),
('2022-07-22', 'returned', '2022-07-29', '2022-07-22', '2022-07-29', 75, '9780553418026', 1),
('2022-07-20', 'returned', '2022-07-25', '2022-07-21', '2022-07-25', 76, '9780062073501', 2),
('2022-07-15', 'returned', '2022-07-29', '2022-07-15', '2022-07-29', 78, '9780684830506', 6),
('2022-07-20', 'returned', '2022-07-25', '2022-07-21', '2022-07-25', 79, '9780451176462', 66),
('2022-07-18', 'returned', '2022-07-24', '2022-07-19', '2022-07-24', 80, '9780394703955', 1),
('2022-07-18', 'returned', '2022-07-23', '2022-07-18', '2022-07-23', 82, '9781416572366', 4),
('2022-07-18', 'returned', '2022-07-24', '2022-07-18', '2022-07-24', 84, '9781501168802', 66),
('2022-07-16', 'returned', '2022-07-24', '2022-07-17', '2022-07-24', 86, '9781501175565', 2),
('2022-07-18', 'returned', '2022-07-29', '2022-07-19', '2022-07-29', 87, '9780141439693', 4),
('2022-07-17', 'returned', '2022-07-29', '2022-07-18', '2022-07-29', 88, '9780545010222', 6),
('2022-07-18', 'returned', '2022-07-26', '2022-07-18', '2022-07-26', 90, '9781540682178', 1),
('2022-07-18', 'returned', '2022-07-27', '2022-07-19', '2022-07-27', 91, '9781501178269', 2),
('2022-07-19', 'returned', '2022-07-29', '2022-07-19', '2022-07-29', 92, '9780385524282', 4),
('2022-07-22', 'declined', '2022-07-22', null, null, 94, '9781501173218', 6),
('2022-07-20', 'returned', '2022-07-27', '2022-07-20', '2022-07-27', 95, '9781501168802', 66),
('2022-07-22', 'returned', '2022-07-27', '2022-07-23', '2022-07-27', 96, '9780062457714', 66),
('2022-07-16', 'declined', '2022-07-16', null, null, 98, '9780679733730', 2),
('2022-07-16', 'returned', '2022-07-27', '2022-07-17', '2022-07-27', 100, '9780679732259', 6),
('2022-07-19', 'returned', '2022-07-27', '2022-07-19', '2022-07-27', 101, '9781501168529', 66),
('2022-07-17', 'declined', '2022-07-17', null, null, 103, '9780099448793', 2),
('2022-07-18', 'returned', '2022-07-27', '2022-07-19', '2022-07-27', 105, '9780735224292', 6),
('2022-07-22', 'returned', '2022-07-24', '2022-07-22', '2022-07-24', 107, '9780679733730', 2),
('2022-07-15', 'returned', '2022-07-27', '2022-07-16', '2022-07-27', 109, '9781250142306', 2),



('2022-08-05', 'returned', '2022-08-14', '2022-08-05', '2022-08-14', 28, '9780007356348', 6),
('2022-08-01', 'returned', '2022-08-13', '2022-08-02', '2022-08-13', 29, '9780553448123', 66),
('2022-08-01', 'returned', '2022-08-13', '2022-08-01', '2022-08-13', 30, '9781416524793', 1),
('2022-08-02', 'returned', '2022-08-11', '2022-08-03', '2022-08-11', 31, '9780141187396', 2),
('2022-08-02', 'declined', '2022-08-03', null, null, 32, '9780345804358', 4),
('2022-08-06', 'returned', '2022-08-10', '2022-08-07', '2022-08-10', 34, '9781416524793', 66),
('2022-08-03', 'returned', '2022-08-15', '2022-08-04', '2022-08-15', 35, '9781501175466', 1),
('2022-08-06', 'declined', '2022-08-07', null, null, 36, '9780525478812', 6),
('2022-08-07', 'declined', '2022-08-07', null, null, 38, '9780547928210', 1),
('2022-08-03', 'returned', '2022-08-12', '2022-08-04', '2022-08-12', 40, '9781501173219', 4),
('2022-08-01', 'returned', '2022-08-12', '2022-08-02', '2022-08-12', 41, '9781416570868', 2),
('2022-08-03', 'returned', '2022-08-14', '2022-08-03', '2022-08-14', 42, '9781785038881', 4),
('2022-08-05', 'returned', '2022-08-11', '2022-08-05', '2022-08-11', 43, '9781616208684', 6),
('2022-08-02', 'returned', '2022-08-12', '2022-08-03', '2022-08-12', 44, '9780061120085', 66),
('2022-08-03', 'returned', '2022-08-14', '2022-08-03', '2022-08-14', 46, '9780007356348', 2),
('2022-08-03', 'declined', '2022-08-04', null, null, 47, '9781607014544', 4),
('2022-08-05', 'returned', '2022-08-13', '2022-08-05', '2022-08-13', 48, '9780399590504', 6),
('2022-08-04', 'returned', '2022-08-13', '2022-08-04', '2022-08-13', 50, '9780525520375', 1),
('2022-08-01', 'returned', '2022-08-12', '2022-08-01', '2022-08-12', 51, '9780141397642', 2),
('2022-08-02', 'returned', '2022-08-13', '2022-08-03', '2022-08-13', 52, '9780151010264', 4),
('2022-08-04', 'returned', '2022-08-13', '2022-08-04', '2022-08-13', 54, '9780805094619', 66),
('2022-08-01', 'returned', '2022-08-08', '2022-08-01', '2022-08-08', 55, '9781616208684', 1),
('2022-08-01', 'returned', '2022-08-10', '2022-08-02', '2022-08-10', 57, '9781501160806', 4),
('2022-08-07', 'returned', '2022-08-12', '2022-08-07', '2022-08-12', 58, '9780553448123', 6),
('2022-08-06', 'returned', '2022-08-14', '2022-08-06', '2022-08-14', 60, '9780671035429', 1),
('2022-08-07', 'returned', '2022-08-14', '2022-08-08', '2022-08-14', 61, '9781616208684', 2),
('2022-08-05', 'returned', '2022-08-12', '2022-08-06', '2022-08-12', 63, '9780385524282', 6),
('2022-08-01', 'returned', '2022-08-12', '2022-08-01', '2022-08-12', 65, '9781250178619', 6),
('2022-08-04', 'returned', '2022-08-11', '2022-08-04', '2022-08-11', 67, '9781501105777', 1),
('2022-08-06', 'returned', '2022-08-11', '2022-08-06', '2022-08-11', 68, '9781609455739', 2),
('2022-08-16', 'returned', '2022-08-25', '2022-08-17', '2022-08-25', 29, '9780812988406', 66),
('2022-08-20', 'returned', '2022-08-27', '2022-08-20', '2022-08-27', 30, '9780316556347', 1),
('2022-08-19', 'returned', '2022-08-31', '2022-08-20', '2022-08-31', 32, '9780765326355', 4),
('2022-08-19', 'returned', '2022-08-26', '2022-08-19', '2022-08-26', 34, '9780307278783', 66),
('2022-08-18', 'returned', '2022-08-24', '2022-08-18', '2022-08-24', 36, '9780007136556', 6),
('2022-08-21', 'returned', '2022-08-23', '2022-08-21', '2022-08-23', 37, '9780062409867', 66),
('2022-08-16', 'returned', '2022-08-30', '2022-08-16', '2022-08-30', 38, '9780385531204', 1),
('2022-08-20', 'returned', '2022-08-26', '2022-08-20', '2022-08-26', 40, '9780743273565', 4),
('2022-08-17', 'returned', '2022-08-28', '2022-08-17', '2022-08-28', 42, '9781982135848', 4),
('2022-08-15', 'returned', '2022-08-25', '2022-08-16', '2022-08-25', 44, '9780547928203', 66),
('2022-08-16', 'returned', '2022-08-31', '2022-08-17', '2022-08-31', 45, '9780486284736', 1),
('2022-08-19', 'returned', '2022-08-24', '2022-08-20', '2022-08-24', 47, '9780141397642', 4),
('2022-08-19', 'returned', '2022-08-27', '2022-08-19', '2022-08-27', 48, '9780099458326', 6),
('2022-08-16', 'declined', '2022-08-17', null, null, 49, '9780307278783', 66),
('2022-08-20', 'returned', '2022-08-26', '2022-08-20', '2022-08-26', 50, '9780062073600', 1),
('2022-08-21', 'returned', '2022-08-24', '2022-08-22', '2022-08-24', 52, '9781501178269', 4),
('2022-08-20', 'declined', '2022-08-21', null, null, 54, '9780316556347', 66),
('2022-08-19', 'declined', '2022-08-19', null, null, 55, '9781501173218', 1),
('2022-08-21', 'returned', '2022-08-28', '2022-08-22', '2022-08-28', 56, '9780385537039', 2),
('2022-08-17', 'returned', '2022-08-24', '2022-08-17', '2022-08-24', 58, '9781250027436', 6),
('2022-08-20', 'returned', '2022-08-30', '2022-08-21', '2022-08-30', 59, '9780684801469', 66),
('2022-08-17', 'returned', '2022-08-30', '2022-08-18', '2022-08-30', 60, '9780439358072', 1),
('2022-08-19', 'returned', '2022-08-25', '2022-08-20', '2022-08-25', 64, '9780141442464', 66),
('2022-08-16', 'returned', '2022-08-28', '2022-08-16', '2022-08-28', 66, '9780525501220', 66),
('2022-08-22', 'returned', '2022-08-25', '2022-08-22', '2022-08-25', 67, '9781250027436', 1),
('2022-08-20', 'returned', '2022-08-27', '2022-08-21', '2022-08-27', 69, '9780525520375', 4),
('2022-08-20', 'returned', '2022-08-31', '2022-08-21', '2022-08-31', 70, '9780812988406', 6),
('2022-08-18', 'returned', '2022-08-24', '2022-08-19', '2022-08-24', 72, '9780385537856', 1),
('2022-08-20', 'returned', '2022-08-27', '2022-08-21', '2022-08-27', 74, '9780099448792', 4),



('2022-09-01', 'returned', '2022-09-13', '2022-09-02', '2022-09-13', 21, '9781250142306', 2),
('2022-09-07', 'returned', '2022-09-11', '2022-09-08', '2022-09-11', 23, '9780544003415', 6),
('2022-09-05', 'declined', '2022-09-05', null, null, 24, '9781501168529', 66),
('2022-09-03', 'returned', '2022-09-12', '2022-09-03', '2022-09-12', 26, '9781250142306', 2),
('2022-09-02', 'returned', '2022-09-14', '2022-09-03', '2022-09-14', 27, '9781501173218', 4),
('2022-09-01', 'returned', '2022-09-08', '2022-09-01', '2022-09-08', 28, '9780451169525', 6),
('2022-09-01', 'declined', '2022-09-01', null, null, 30, '9780812988406', 1),
('2022-09-02', 'returned', '2022-09-10', '2022-09-03', '2022-09-10', 31, '9781250027436', 2),
('2022-09-02', 'returned', '2022-09-12', '2022-09-02', '2022-09-12', 32, '9781501178269', 4),
('2022-09-07', 'returned', '2022-09-15', '2022-09-08', '2022-09-15', 34, '9781501175565', 66),
('2022-09-05', 'returned', '2022-09-12', '2022-09-05', '2022-09-12', 36, '9780062457714', 6),
('2022-09-05', 'declined', '2022-09-06', null, null, 38, '9780547928203', 1),
('2022-09-05', 'returned', '2022-09-12', '2022-09-06', '2022-09-12', 40, '9780679750536', 4),
('2022-09-02', 'declined', '2022-09-03', null, null, 41, '9780141187761', 2),
('2022-09-06', 'returned', '2022-09-14', '2022-09-07', '2022-09-14', 43, '9780451176462', 6),
('2022-09-04', 'returned', '2022-09-10', '2022-09-04', '2022-09-10', 44, '9780857521353', 66),
('2022-09-04', 'returned', '2022-09-12', '2022-09-05', '2022-09-12', 46, '9780525563235', 2),
('2022-09-05', 'returned', '2022-09-15', '2022-09-06', '2022-09-15', 47, '9780765326355', 4),
('2022-09-02', 'returned', '2022-09-14', '2022-09-03', '2022-09-14', 49, '9780007136556', 66),
('2022-09-03', 'returned', '2022-09-13', '2022-09-03', '2022-09-13', 50, '9780143105428', 1),
('2022-09-03', 'returned', '2022-09-14', '2022-09-03', '2022-09-14', 52, '9780061120085', 4),
('2022-09-03', 'returned', '2022-09-10', '2022-09-03', '2022-09-10', 53, '9780525563235', 6),
('2022-09-07', 'returned', '2022-09-13', '2022-09-08', '2022-09-13', 54, '9780151010264', 66),
('2022-09-05', 'returned', '2022-09-12', '2022-09-05', '2022-09-12', 56, '9780141393049', 2),
('2022-09-01', 'returned', '2022-09-09', '2022-09-02', '2022-09-09', 57, '9781607014544', 4),
('2022-09-01', 'returned', '2022-09-14', '2022-09-02', '2022-09-14', 59, '9781250027436', 66),
('2022-09-03', 'returned', '2022-09-13', '2022-09-03', '2022-09-13', 61, '9780307277712', 2),
('2022-09-04', 'declined', '2022-09-05', null, null, 64, '9781416572366', 66),
('2022-09-05', 'returned', '2022-09-09', '2022-09-06', '2022-09-09', 66, '9780684830507', 66),
('2022-09-07', 'returned', '2022-09-09', '2022-09-08', '2022-09-09', 68, '9780735224292', 2),
('2022-09-05', 'declined', '2022-09-05', null, null, 69, '9780062255655', 4),
('2022-09-06', 'returned', '2022-09-13', '2022-09-06', '2022-09-13', 70, '9780143105428', 6),
('2022-09-04', 'returned', '2022-09-09', '2022-09-04', '2022-09-09', 71, '9780679733730', 66),
('2022-09-03', 'returned', '2022-09-13', '2022-09-03', '2022-09-13', 73, '9780007356348', 2),
('2022-09-03', 'returned', '2022-09-13', '2022-09-03', '2022-09-13', 75, '9780385537855', 1),
('2022-09-07', 'returned', '2022-09-09', '2022-09-07', '2022-09-09', 77, '9780385537856', 4),
('2022-09-03', 'returned', '2022-09-11', '2022-09-03', '2022-09-11', 78, '9781501168529', 6),
('2022-09-07', 'returned', '2022-09-09', '2022-09-07', '2022-09-09', 80, '9781627792134', 1),
('2022-09-02', 'returned', '2022-09-10', '2022-09-02', '2022-09-10', 81, '9780812988406', 2),
('2022-09-17', 'returned', '2022-09-29', '2022-09-18', '2022-09-29', 50, '9780684800715', 1),
('2022-09-20', 'returned', '2022-09-27', '2022-09-20', '2022-09-27', 51, '9780451176462', 2),
('2022-09-22', 'returned', '2022-09-23', '2022-09-22', '2022-09-23', 52, '9780141187396', 4),
('2022-09-20', 'returned', '2022-09-29', '2022-09-20', '2022-09-29', 53, '9780545010222', 6),
('2022-09-22', 'declined', '2022-09-22', null, null, 54, '9780525563235', 66),
('2022-09-17', 'returned', '2022-09-27', '2022-09-18', '2022-09-27', 55, '9781616208684', 1),
('2022-09-18', 'returned', '2022-09-26', '2022-09-18', '2022-09-26', 57, '9781627792134', 4),
('2022-09-15', 'returned', '2022-09-26', '2022-09-15', '2022-09-26', 58, '9780545010221', 6),
('2022-09-19', 'returned', '2022-09-29', '2022-09-19', '2022-09-29', 60, '9781607014544', 1),
('2022-09-15', 'returned', '2022-09-28', '2022-09-15', '2022-09-28', 61, '9780141185239', 2),
('2022-09-20', 'returned', '2022-09-25', '2022-09-20', '2022-09-25', 63, '9781607014544', 6),
('2022-09-15', 'returned', '2022-09-27', '2022-09-16', '2022-09-27', 64, '9780439358071', 66),
('2022-09-17', 'returned', '2022-09-27', '2022-09-18', '2022-09-27', 65, '9780486284736', 6),
('2022-09-16', 'returned', '2022-09-25', '2022-09-16', '2022-09-25', 67, '9780316556347', 1),
('2022-09-16', 'returned', '2022-09-23', '2022-09-16', '2022-09-23', 69, '9780547928203', 4),
('2022-09-21', 'returned', '2022-09-24', '2022-09-22', '2022-09-24', 70, '9780307277712', 6),
('2022-09-20', 'returned', '2022-09-24', '2022-09-20', '2022-09-24', 71, '9780765377142', 66),
('2022-09-21', 'returned', '2022-09-30', '2022-09-21', '2022-09-30', 72, '9781400064168', 1),
('2022-09-18', 'returned', '2022-09-29', '2022-09-18', '2022-09-29', 73, '9781416524793', 2),
('2022-09-16', 'returned', '2022-09-25', '2022-09-17', '2022-09-25', 74, '9781609455739', 4),
('2022-09-16', 'returned', '2022-09-30', '2022-09-16', '2022-09-30', 75, '9780099448792', 1),
('2022-09-21', 'returned', '2022-09-26', '2022-09-21', '2022-09-26', 77, '9780385720045', 4),
('2022-09-15', 'returned', '2022-09-30', '2022-09-16', '2022-09-30', 78, '9780679733730', 6),
('2022-09-16', 'returned', '2022-09-25', '2022-09-17', '2022-09-25', 80, '9781594633940', 1),
('2022-09-16', 'returned', '2022-09-29', '2022-09-16', '2022-09-29', 81, '9780812988406', 2),
('2022-09-19', 'returned', '2022-09-27', '2022-09-19', '2022-09-27', 83, '9780684830507', 6),
('2022-09-20', 'returned', '2022-09-30', '2022-09-20', '2022-09-30', 84, '9780547928227', 66),
('2022-09-22', 'returned', '2022-09-23', '2022-09-22', '2022-09-23', 85, '9780486284736', 1),
('2022-09-18', 'returned', '2022-09-28', '2022-09-18', '2022-09-28', 86, '9780571347292', 2),
('2022-09-17', 'returned', '2022-09-27', '2022-09-17', '2022-09-27', 88, '9780099458326', 6),
('2022-09-20', 'returned', '2022-09-27', '2022-09-20', '2022-09-27', 89, '9781609455739', 66),
('2022-09-21', 'returned', '2022-09-25', '2022-09-21', '2022-09-25', 91, '9780307276650', 2),
('2022-09-21', 'returned', '2022-09-29', '2022-09-22', '2022-09-29', 92, '9780062073549', 4),
('2022-09-17', 'returned', '2022-09-25', '2022-09-18', '2022-09-25', 94, '9780307277712', 6),
('2022-09-19', 'returned', '2022-09-28', '2022-09-19', '2022-09-28', 95, '9780316055436', 66),
('2022-09-19', 'returned', '2022-09-26', '2022-09-19', '2022-09-26', 96, '9780735224292', 66),



('2022-10-04', 'returned', '2022-10-12', '2022-10-05', '2022-10-12', 20, '9780061120085', 1),
('2022-10-02', 'returned', '2022-10-15', '2022-10-03', '2022-10-15', 21, '9780062073495', 2),
('2022-10-05', 'returned', '2022-10-13', '2022-10-05', '2022-10-13', 22, '9780385524282', 4),
('2022-10-04', 'returned', '2022-10-12', '2022-10-04', '2022-10-12', 24, '9780451169525', 66),
('2022-10-06', 'returned', '2022-10-14', '2022-10-06', '2022-10-14', 25, '9781250178619', 1),
('2022-10-06', 'returned', '2022-10-12', '2022-10-06', '2022-10-12', 27, '9780062073495', 4),
('2022-10-01', 'declined', '2022-10-01', null, null, 29, '9780684801469', 66),
('2022-10-01', 'returned', '2022-10-14', '2022-10-01', '2022-10-14', 30, '9781501180989', 1),
('2022-10-02', 'returned', '2022-10-09', '2022-10-02', '2022-10-09', 31, '9780671039755', 2),
('2022-10-07', 'returned', '2022-10-10', '2022-10-07', '2022-10-10', 33, '9780141185130', 6),
('2022-10-06', 'returned', '2022-10-08', '2022-10-06', '2022-10-08', 34, '9780679750536', 66),
('2022-10-05', 'returned', '2022-10-13', '2022-10-06', '2022-10-13', 35, '9780307277712', 1),
('2022-10-02', 'returned', '2022-10-10', '2022-10-02', '2022-10-10', 36, '9781501133435', 6),
('2022-10-06', 'returned', '2022-10-11', '2022-10-06', '2022-10-11', 37, '9780385720953', 66),
('2022-10-01', 'returned', '2022-10-09', '2022-10-01', '2022-10-09', 39, '9780684801469', 2),
('2022-10-05', 'returned', '2022-10-13', '2022-10-05', '2022-10-13', 41, '9780062409867', 2),
('2022-10-02', 'returned', '2022-10-14', '2022-10-02', '2022-10-14', 42, '9780385720953', 4),
('2022-10-05', 'declined', '2022-10-06', null, null, 44, '9781250042763', 66),
('2022-10-01', 'returned', '2022-10-14', '2022-10-02', '2022-10-14', 46, '9780345804358', 2),
('2022-10-07', 'returned', '2022-10-12', '2022-10-07', '2022-10-12', 47, '9780684830421', 4),
('2022-10-02', 'returned', '2022-10-15', '2022-10-03', '2022-10-15', 48, '9780099448793', 6),
('2022-10-04', 'returned', '2022-10-10', '2022-10-04', '2022-10-10', 50, '9781501175565', 1),
('2022-10-01', 'declined', '2022-10-02', null, null, 52, '9780451524935', 4),
('2022-10-02', 'returned', '2022-10-11', '2022-10-03', '2022-10-11', 54, '9781501105777', 66),
('2022-10-01', 'returned', '2022-10-09', '2022-10-01', '2022-10-09', 55, '9780141198963', 1),
('2022-10-04', 'returned', '2022-10-13', '2022-10-05', '2022-10-13', 56, '9780684830507', 2),
('2022-10-07', 'returned', '2022-10-14', '2022-10-07', '2022-10-14', 57, '9781449486792', 4),
('2022-10-02', 'returned', '2022-10-15', '2022-10-03', '2022-10-15', 59, '9780553448122', 66),
('2022-10-04', 'returned', '2022-10-09', '2022-10-05', '2022-10-09', 61, '9780385537039', 2),
('2022-10-02', 'returned', '2022-10-12', '2022-10-03', '2022-10-12', 63, '9780547928210', 6),
('2022-10-03', 'returned', '2022-10-12', '2022-10-04', '2022-10-12', 65, '9781501168529', 6),
('2022-10-03', 'declined', '2022-10-03', null, null, 67, '9780141439518', 1),
('2022-10-05', 'returned', '2022-10-09', '2022-10-05', '2022-10-09', 69, '9780525952662', 4),
('2022-10-05', 'returned', '2022-10-12', '2022-10-05', '2022-10-12', 70, '9780525952662', 6),
('2022-10-01', 'returned', '2022-10-14', '2022-10-02', '2022-10-14', 72, '9781501105777', 1),
('2022-10-03', 'returned', '2022-10-09', '2022-10-03', '2022-10-09', 74, '9781616208684', 4),
('2022-10-07', 'returned', '2022-10-11', '2022-10-07', '2022-10-11', 76, '9780747596461', 2),
('2022-10-01', 'returned', '2022-10-14', '2022-10-01', '2022-10-14', 77, '9780525563235', 4),
('2022-10-04', 'returned', '2022-10-09', '2022-10-05', '2022-10-09', 78, '9780679732259', 6),
('2022-10-05', 'returned', '2022-10-15', '2022-10-06', '2022-10-15', 79, '9781449486792', 66),
('2022-10-02', 'returned', '2022-10-13', '2022-10-02', '2022-10-13', 81, '9780141187396', 2),
('2022-10-02', 'returned', '2022-10-08', '2022-10-02', '2022-10-08', 83, '9780439139601', 6),
('2022-10-04', 'returned', '2022-10-14', '2022-10-05', '2022-10-14', 84, '9781501160806', 66),
('2022-10-02', 'returned', '2022-10-11', '2022-10-02', '2022-10-11', 86, '9780547928203', 2),
('2022-10-15', 'returned', '2022-10-27', '2022-10-16', '2022-10-27', 74, '9780679750536', 4),
('2022-10-22', 'returned', '2022-10-27', '2022-10-22', '2022-10-27', 76, '9780062255655', 2),
('2022-10-18', 'returned', '2022-10-29', '2022-10-18', '2022-10-29', 78, '9781501105777', 6),
('2022-10-22', 'returned', '2022-10-24', '2022-10-23', '2022-10-24', 79, '9781609455739', 66),
('2022-10-17', 'returned', '2022-10-24', '2022-10-17', '2022-10-24', 80, '9780385537039', 1),
('2022-10-18', 'declined', '2022-10-18', null, null, 81, '9780385720953', 2),
('2022-10-19', 'returned', '2022-10-26', '2022-10-19', '2022-10-26', 83, '9781416572366', 6),
('2022-10-17', 'returned', '2022-10-26', '2022-10-17', '2022-10-26', 85, '9780062073549', 1),
('2022-10-18', 'declined', '2022-10-18', null, null, 87, '9781400031702', 4),
('2022-10-22', 'returned', '2022-10-27', '2022-10-22', '2022-10-27', 89, '9780812988406', 66),
('2022-10-17', 'returned', '2022-10-30', '2022-10-18', '2022-10-30', 90, '9780486284736', 1),
('2022-10-17', 'returned', '2022-10-30', '2022-10-18', '2022-10-30', 92, '9780451169525', 4),
('2022-10-15', 'returned', '2022-10-26', '2022-10-16', '2022-10-26', 93, '9781449486792', 6),
('2022-10-18', 'returned', '2022-10-28', '2022-10-18', '2022-10-28', 94, '9780307277712', 6),
('2022-10-22', 'returned', '2022-10-27', '2022-10-22', '2022-10-27', 96, '9780812987114', 66),
('2022-10-16', 'returned', '2022-10-30', '2022-10-17', '2022-10-30', 98, '9781250027436', 2),
('2022-10-19', 'returned', '2022-10-26', '2022-10-20', '2022-10-26', 99, '9781501160806', 4),
('2022-10-17', 'returned', '2022-10-26', '2022-10-17', '2022-10-26', 100, '9780553418026', 6),
('2022-10-18', 'returned', '2022-10-29', '2022-10-18', '2022-10-29', 101, '9781250142283', 66),
('2022-10-17', 'returned', '2022-10-29', '2022-10-18', '2022-10-29', 102, '9780062457714', 1),
('2022-10-18', 'returned', '2022-10-29', '2022-10-19', '2022-10-29', 104, '9780385537039', 4),
('2022-10-20', 'returned', '2022-10-31', '2022-10-21', '2022-10-31', 105, '9781501168529', 6),
('2022-10-19', 'returned', '2022-10-25', '2022-10-19', '2022-10-25', 106, '9780140621195', 1),
('2022-10-19', 'returned', '2022-10-29', '2022-10-20', '2022-10-29', 108, '9781594633940', 1),
('2022-10-15', 'returned', '2022-10-28', '2022-10-15', '2022-10-28', 110, '9781616208684', 4),
('2022-10-18', 'returned', '2022-10-26', '2022-10-19', '2022-10-26', 111, '9780439358071', 6),
('2022-10-17', 'returned', '2022-10-28', '2022-10-17', '2022-10-28', 112, '9780525952662', 66),
('2022-10-19', 'returned', '2022-10-24', '2022-10-19', '2022-10-24', 1, '9781594489501', 1),
('2022-10-20', 'returned', '2022-10-25', '2022-10-20', '2022-10-25', 2, '9780439554893', 2),
('2022-10-18', 'returned', '2022-10-24', '2022-10-19', '2022-10-24', 4, '9780525952662', 4),
('2022-10-15', 'returned', '2022-10-30', '2022-10-16', '2022-10-30', 6, '9781501168802', 6),



('2022-11-06', 'returned', '2022-11-12', '2022-11-07', '2022-11-12', 33, '9780547928203', 6),
('2022-11-06', 'returned', '2022-11-12', '2022-11-07', '2022-11-12', 34, '9780805094602', 66),
('2022-11-06', 'returned', '2022-11-13', '2022-11-07', '2022-11-13', 35, '9781400031702', 1),
('2022-11-04', 'declined', '2022-11-05', null, null, 36, '9780307278783', 6),
('2022-11-06', 'returned', '2022-11-13', '2022-11-06', '2022-11-13', 38, '9780679735772', 1),
('2022-11-06', 'returned', '2022-11-10', '2022-11-07', '2022-11-10', 40, '9780062409867', 4),
('2022-11-01', 'returned', '2022-11-10', '2022-11-01', '2022-11-10', 41, '9781594489501', 2),
('2022-11-02', 'returned', '2022-11-08', '2022-11-02', '2022-11-08', 42, '9781501168529', 4),
('2022-11-07', 'returned', '2022-11-10', '2022-11-08', '2022-11-10', 43, '9781416570868', 6),
('2022-11-07', 'returned', '2022-11-11', '2022-11-08', '2022-11-11', 44, '9780571347292', 66),
('2022-11-05', 'returned', '2022-11-13', '2022-11-06', '2022-11-13', 46, '9780547928210', 2),
('2022-11-06', 'returned', '2022-11-15', '2022-11-07', '2022-11-15', 47, '9781594489501', 4),
('2022-11-05', 'returned', '2022-11-14', '2022-11-05', '2022-11-14', 49, '9780684830506', 66),
('2022-11-01', 'returned', '2022-11-12', '2022-11-01', '2022-11-12', 51, '9781501160806', 2),
('2022-11-04', 'declined', '2022-11-05', null, null, 52, '9780545010222', 4),
('2022-11-07', 'returned', '2022-11-10', '2022-11-07', '2022-11-10', 53, '9780141393049', 6),
('2022-11-04', 'returned', '2022-11-13', '2022-11-04', '2022-11-13', 54, '9780345804358', 66),
('2022-11-04', 'returned', '2022-11-14', '2022-11-05', '2022-11-14', 56, '9781607014544', 2),
('2022-11-07', 'declined', '2022-11-08', null, null, 57, '9780547928210', 4),
('2022-11-07', 'returned', '2022-11-08', '2022-11-07', '2022-11-08', 59, '9780857521353', 66),
('2022-11-06', 'returned', '2022-11-13', '2022-11-06', '2022-11-13', 60, '9781501105777', 1),
('2022-11-01', 'returned', '2022-11-09', '2022-11-01', '2022-11-09', 61, '9780765326355', 2),
('2022-11-02', 'returned', '2022-11-09', '2022-11-03', '2022-11-09', 64, '9780545010222', 66),
('2022-11-06', 'returned', '2022-11-08', '2022-11-06', '2022-11-08', 65, '9780141185130', 6),
('2022-11-05', 'returned', '2022-11-10', '2022-11-05', '2022-11-10', 67, '9780385537856', 1),
('2022-11-02', 'returned', '2022-11-09', '2022-11-02', '2022-11-09', 68, '9780684833392', 2),
('2022-11-01', 'returned', '2022-11-09', '2022-11-01', '2022-11-09', 70, '9780679735772', 6),
('2022-11-02', 'returned', '2022-11-13', '2022-11-02', '2022-11-13', 72, '9780743273566', 1),
('2022-11-01', 'returned', '2022-11-12', '2022-11-01', '2022-11-12', 74, '9780679750536', 4),
('2022-11-07', 'returned', '2022-11-14', '2022-11-08', '2022-11-14', 75, '9780143105428', 1),
('2022-11-06', 'returned', '2022-11-14', '2022-11-06', '2022-11-14', 76, '9780747596461', 2),
('2022-11-01', 'returned', '2022-11-12', '2022-11-02', '2022-11-12', 78, '9780547928203', 6),
('2022-11-06', 'returned', '2022-11-13', '2022-11-06', '2022-11-13', 79, '9781416524793', 66),
('2022-11-03', 'returned', '2022-11-13', '2022-11-03', '2022-11-13', 80, '9780743273566', 1),
('2022-11-07', 'returned', '2022-11-08', '2022-11-07', '2022-11-08', 82, '9780671035429', 4),
('2022-11-01', 'returned', '2022-11-14', '2022-11-01', '2022-11-14', 83, '9780143105428', 6),
('2022-11-01', 'returned', '2022-11-08', '2022-11-01', '2022-11-08', 84, '9781616208684', 66),
('2022-11-04', 'returned', '2022-11-13', '2022-11-04', '2022-11-13', 85, '9780735219113', 1),
('2022-11-02', 'returned', '2022-11-11', '2022-11-02', '2022-11-11', 87, '9780385720953', 4),
('2022-11-01', 'returned', '2022-11-13', '2022-11-01', '2022-11-13', 89, '9780007356348', 66),
('2022-11-01', 'returned', '2022-11-11', '2022-11-01', '2022-11-11', 91, '9780062073564', 2),
('2022-11-18', 'returned', '2022-11-30', '2022-11-19', '2022-11-30', 17, '9780141397642', 4),
('2022-11-16', 'returned', '2022-11-25', '2022-11-17', '2022-11-25', 18, '9780141185239', 6),
('2022-11-18', 'returned', '2022-11-30', '2022-11-19', '2022-11-30', 20, '9780553448122', 1),
('2022-11-16', 'returned', '2022-11-26', '2022-11-16', '2022-11-26', 22, '9780812987114', 4),
('2022-11-20', 'returned', '2022-11-27', '2022-11-20', '2022-11-27', 24, '9780684830421', 66),
('2022-11-19', 'returned', '2022-11-30', '2022-11-20', '2022-11-30', 25, '9780857521353', 1),
('2022-11-20', 'returned', '2022-11-28', '2022-11-20', '2022-11-28', 27, '9781785654584', 4),
('2022-11-15', 'returned', '2022-12-01', '2022-11-16', '2022-12-01', 28, '9780679750536', 6),
('2022-11-15', 'returned', '2022-11-30', '2022-11-15', '2022-11-30', 30, '9780140621195', 1),
('2022-11-19', 'returned', '2022-11-28', '2022-11-19', '2022-11-28', 32, '9781594631764', 4),
('2022-11-15', 'returned', '2022-11-23', '2022-11-15', '2022-11-23', 33, '9780547928227', 6),
('2022-11-20', 'returned', '2022-11-30', '2022-11-21', '2022-11-30', 34, '9780007356348', 66),
('2022-11-20', 'returned', '2022-11-30', '2022-11-21', '2022-11-30', 35, '9781616208684', 1),
('2022-11-19', 'returned', '2022-11-23', '2022-11-19', '2022-11-23', 36, '9781250142283', 6),
('2022-11-19', 'declined', '2022-11-19', null, null, 37, '9780062073563', 66),
('2022-11-20', 'returned', '2022-11-24', '2022-11-21', '2022-11-24', 38, '9780679735772', 1),
('2022-11-15', 'returned', '2022-11-27', '2022-11-15', '2022-11-27', 39, '9780684830507', 2),
('2022-11-17', 'declined', '2022-11-18', null, null, 41, '9780553448123', 2),
('2022-11-16', 'returned', '2022-11-25', '2022-11-16', '2022-11-25', 43, '9780141185130', 6),
('2022-11-21', 'returned', '2022-11-24', '2022-11-22', '2022-11-24', 44, '9781607014544', 66),
('2022-11-17', 'returned', '2022-11-24', '2022-11-17', '2022-11-24', 46, '9781501105807', 2),
('2022-11-21', 'returned', '2022-11-29', '2022-11-21', '2022-11-29', 48, '9780525952662', 6),
('2022-11-19', 'returned', '2022-11-26', '2022-11-20', '2022-11-26', 49, '9780141198963', 66),
('2022-11-16', 'returned', '2022-11-26', '2022-11-17', '2022-11-26', 50, '9780141439518', 1),
('2022-11-19', 'returned', '2022-11-27', '2022-11-19', '2022-11-27', 51, '9780385537856', 2),
('2022-11-21', 'returned', '2022-12-01', '2022-11-22', '2022-12-01', 53, '9780451169525', 6),
('2022-11-18', 'returned', '2022-11-27', '2022-11-18', '2022-11-27', 54, '9780765326355', 66),
('2022-11-16', 'returned', '2022-11-30', '2022-11-17', '2022-11-30', 56, '9781501160806', 2),
('2022-11-21', 'returned', '2022-11-26', '2022-11-21', '2022-11-26', 57, '9781501133435', 4),
('2022-11-19', 'returned', '2022-11-28', '2022-11-20', '2022-11-28', 58, '9780316055436', 6),
('2022-11-20', 'returned', '2022-11-27', '2022-11-21', '2022-11-27', 60, '9780316055437', 1),
('2022-11-20', 'returned', '2022-11-23', '2022-11-20', '2022-11-23', 64, '9780141187396', 66),
('2022-11-20', 'returned', '2022-11-29', '2022-11-20', '2022-11-29', 66, '9780684833392', 66),
('2022-11-19', 'returned', '2022-11-29', '2022-11-20', '2022-11-29', 67, '9780553448123', 1),
('2022-11-21', 'returned', '2022-11-27', '2022-11-22', '2022-11-27', 69, '9780007356348', 4),
('2022-11-20', 'returned', '2022-11-28', '2022-11-21', '2022-11-28', 71, '9781400031702', 66),
('2022-11-19', 'returned', '2022-11-23', '2022-11-19', '2022-11-23', 73, '9780671035429', 2),
('2022-11-22', 'returned', '2022-11-26', '2022-11-23', '2022-11-26', 74, '9781501175565', 4),
('2022-11-22', 'returned', '2022-11-26', '2022-11-22', '2022-11-26', 75, '9780439554947', 1),
('2022-11-17', 'declined', '2022-11-17', null, null, 77, '9781250142283', 4),
('2022-11-20', 'returned', '2022-11-30', '2022-11-21', '2022-11-30', 79, '9781501160769', 66),
('2022-11-16', 'returned', '2022-11-30', '2022-11-16', '2022-11-30', 80, '9781501160790', 1),
('2022-11-20', 'declined', '2022-11-20', null, null, 81, '9780140433922', 2),
('2022-11-17', 'returned', '2022-11-30', '2022-11-18', '2022-11-30', 82, '9780143105428', 4),
('2022-11-21', 'returned', '2022-11-26', '2022-11-22', '2022-11-26', 83, '9780099448792', 6),
('2022-11-20', 'returned', '2022-11-28', '2022-11-20', '2022-11-28', 85, '9780307278783', 1),
('2022-11-20', 'declined', '2022-11-21', null, null, 86, '9780525520375', 2),
('2022-11-21', 'returned', '2022-11-28', '2022-11-21', '2022-11-28', 88, '9780743273565', 6),
('2022-11-19', 'returned', '2022-11-27', '2022-11-20', '2022-11-27', 89, '9780735224292', 66),
('2022-11-17', 'returned', '2022-11-29', '2022-11-18', '2022-11-29', 91, '9780684830506', 2),
('2022-11-15', 'returned', '2022-11-24', '2022-11-16', '2022-11-24', 92, '9780062073549', 4),
('2022-11-15', 'returned', '2022-11-25', '2022-11-16', '2022-11-25', 94, '9780316556347', 6),
('2022-11-21', 'returned', '2022-11-27', '2022-11-21', '2022-11-27', 96, '9780545010222', 66),
('2022-11-22', 'returned', '2022-11-26', '2022-11-22', '2022-11-26', 97, '9780141198963', 1),
('2022-11-17', 'returned', '2022-11-23', '2022-11-17', '2022-11-23', 99, '9781501175466', 4),
('2022-11-21', 'returned', '2022-11-26', '2022-11-22', '2022-11-26', 101, '9780141185239', 66),
('2022-11-18', 'returned', '2022-11-23', '2022-11-18', '2022-11-23', 103, '9781501175466', 2),
('2022-11-16', 'returned', '2022-11-30', '2022-11-16', '2022-11-30', 104, '9780385349570', 4),
('2022-11-21', 'returned', '2022-11-27', '2022-11-21', '2022-11-27', 105, '9780735224292', 6),
('2022-11-21', 'declined', '2022-11-21', null, null, 106, '9780385524367', 1),
('2022-11-22', 'returned', '2022-11-26', '2022-11-23', '2022-11-26', 108, '9780007113804', 1),
('2022-11-15', 'returned', '2022-11-30', '2022-11-15', '2022-11-30', 109, '9781501166785', 2),
('2022-11-20', 'returned', '2022-11-29', '2022-11-21', '2022-11-29', 110, '9781250178619', 4),
('2022-11-19', 'returned', '2022-11-24', '2022-11-20', '2022-11-24', 112, '9781982135848', 66),
('2022-11-19', 'returned', '2022-11-27', '2022-11-19', '2022-11-27', 1, '9780553448122', 1),
('2022-11-20', 'returned', '2022-11-29', '2022-11-21', '2022-11-29', 2, '9780143105428', 2),
('2022-11-21', 'returned', '2022-11-25', '2022-11-22', '2022-11-25', 3, '9781501160806', 66),
('2022-11-15', 'declined', '2022-11-16', null, null, 4, '9781501160806', 4),



('2022-12-06', 'declined', '2022-12-07', null, null, 39, '9780439554893', 2),
('2022-12-01', 'returned', '2022-12-15', '2022-12-02', '2022-12-15', 41, '9780385720953', 2),
('2022-12-05', 'returned', '2022-12-09', '2022-12-06', '2022-12-09', 42, '9780553448123', 4),
('2022-12-06', 'returned', '2022-12-08', '2022-12-06', '2022-12-08', 43, '9780684833392', 6),
('2022-12-06', 'returned', '2022-12-12', '2022-12-07', '2022-12-12', 44, '9780439139601', 66),
('2022-12-01', 'returned', '2022-12-13', '2022-12-01', '2022-12-13', 46, '9781501166785', 2),
('2022-12-07', 'returned', '2022-12-11', '2022-12-07', '2022-12-11', 48, '9781250042763', 6),
('2022-12-03', 'declined', '2022-12-03', null, null, 50, '9780385537856', 1),
('2022-12-01', 'returned', '2022-12-13', '2022-12-02', '2022-12-13', 52, '9780061120085', 4),
('2022-12-06', 'returned', '2022-12-11', '2022-12-06', '2022-12-11', 54, '9781250142306', 66),
('2022-12-05', 'returned', '2022-12-14', '2022-12-06', '2022-12-14', 55, '9781627792134', 1),
('2022-12-02', 'returned', '2022-12-09', '2022-12-03', '2022-12-09', 57, '9780099448793', 4),
('2022-12-05', 'returned', '2022-12-14', '2022-12-06', '2022-12-14', 59, '9780812988406', 66),
('2022-12-01', 'returned', '2022-12-10', '2022-12-01', '2022-12-10', 61, '9780765326355', 2),
('2022-12-02', 'returned', '2022-12-14', '2022-12-03', '2022-12-14', 64, '9780141187396', 66),
('2022-12-02', 'returned', '2022-12-11', '2022-12-02', '2022-12-11', 65, '9780307278783', 6),
('2022-12-07', 'returned', '2022-12-10', '2022-12-08', '2022-12-10', 66, '9780553418026', 66),
('2022-12-04', 'declined', '2022-12-04', null, null, 68, '9781501175565', 2),
('2022-12-01', 'returned', '2022-12-13', '2022-12-02', '2022-12-13', 70, '9780805094619', 6),
('2022-12-06', 'declined', '2022-12-06', null, null, 72, '9780684830507', 1),
('2022-12-04', 'returned', '2022-12-12', '2022-12-05', '2022-12-12', 73, '9780099528988', 2),
('2022-12-03', 'returned', '2022-12-14', '2022-12-04', '2022-12-14', 74, '9780307588364', 4),
('2022-12-02', 'returned', '2022-12-14', '2022-12-02', '2022-12-14', 75, '9780805094619', 1),
('2022-12-07', 'returned', '2022-12-11', '2022-12-07', '2022-12-11', 76, '9780141185239', 2),
('2022-12-02', 'declined', '2022-12-02', null, null, 78, '9781501168529', 6),
('2022-12-03', 'returned', '2022-12-11', '2022-12-04', '2022-12-11', 79, '9781501175466', 66),
('2022-12-04', 'returned', '2022-12-12', '2022-12-05', '2022-12-12', 81, '9781250178619', 2),
('2022-12-04', 'returned', '2022-12-11', '2022-12-04', '2022-12-11', 82, '9780143105428', 4),
('2022-12-07', 'returned', '2022-12-12', '2022-12-08', '2022-12-12', 83, '9780062073564', 6),
('2022-12-03', 'returned', '2022-12-08', '2022-12-03', '2022-12-08', 85, '9780743273566', 1),
('2022-12-01', 'declined', '2022-12-02', null, null, 87, '9781501168802', 4),
('2022-12-04', 'returned', '2022-12-12', '2022-12-04', '2022-12-12', 88, '9780316055436', 6),
('2022-12-03', 'declined', '2022-12-04', null, null, 89, '9780062073600', 66),
('2022-12-03', 'returned', '2022-12-14', '2022-12-04', '2022-12-14', 91, '9781501142970', 2),
('2022-12-04', 'returned', '2022-12-09', '2022-12-04', '2022-12-09', 93, '9780385542361', 6),
('2022-12-06', 'returned', '2022-12-09', '2022-12-07', '2022-12-09', 94, '9780525520375', 6),
('2022-12-05', 'returned', '2022-12-11', '2022-12-05', '2022-12-11', 96, '9781250042763', 66),
('2022-12-03', 'returned', '2022-12-09', '2022-12-03', '2022-12-09', 98, '9780307277712', 2),
('2022-12-02', 'returned', '2022-12-09', '2022-12-03', '2022-12-09', 99, '9780061120085', 4),
('2022-12-04', 'returned', '2022-12-10', '2022-12-05', '2022-12-10', 101, '9780062409867', 66),
('2022-12-07', 'returned', '2022-12-14', '2022-12-07', '2022-12-14', 103, '9780684801520', 2),
('2022-12-07', 'returned', '2022-12-14', '2022-12-08', '2022-12-14', 104, '9780671035429', 4),
('2022-12-01', 'declined', '2022-12-01', null, null, 105, '9780547928227', 6),
('2022-12-07', 'returned', '2022-12-08', '2022-12-07', '2022-12-08', 107, '9780385524367', 2),
('2022-12-02', 'returned', '2022-12-08', '2022-12-02', '2022-12-08', 109, '9780061120084', 2),
('2022-12-05', 'returned', '2022-12-09', '2022-12-05', '2022-12-09', 111, '9780684800715', 6),
('2022-12-02', 'returned', '2022-12-10', '2022-12-02', '2022-12-10', 112, '9780571347292', 66),
('2022-12-01', 'declined', '2022-12-01', null, null, 1, '9781501142970', 1),
('2022-12-03', 'declined', '2022-12-04', null, null, 3, '9780141187761', 66),
('2022-12-06', 'returned', '2022-12-10', '2022-12-07', '2022-12-10', 4, '9781501168802', 4),
('2022-12-02', 'returned', '2022-12-10', '2022-12-02', '2022-12-10', 6, '9781501142970', 6),
('2022-12-02', 'returned', '2022-12-11', '2022-12-03', '2022-12-11', 8, '9780062457714', 1),
('2022-12-04', 'declined', '2022-12-04', null, null, 9, '9780684830421', 2),
('2022-12-03', 'returned', '2022-12-10', '2022-12-03', '2022-12-10', 10, '9781501173218', 4),
('2022-12-02', 'returned', '2022-12-12', '2022-12-03', '2022-12-12', 12, '9780261103283', 4),
('2022-12-01', 'returned', '2022-12-09', '2022-12-01', '2022-12-09', 13, '9780679750536', 6),
('2022-12-05', 'returned', '2022-12-14', '2022-12-05', '2022-12-14', 15, '9780143105428', 1),
('2022-12-07', 'returned', '2022-12-14', '2022-12-08', '2022-12-14', 16, '9780684801469', 2),
('2022-12-04', 'returned', '2022-12-10', '2022-12-04', '2022-12-10', 18, '9781501175565', 6),
('2022-12-02', 'returned', '2022-12-11', '2022-12-02', '2022-12-11', 19, '9780062255655', 66),
('2022-12-02', 'returned', '2022-12-08', '2022-12-02', '2022-12-08', 20, '9780099528988', 1),
('2022-12-03', 'returned', '2022-12-13', '2022-12-04', '2022-12-13', 21, '9780545010221', 2),
('2022-12-03', 'returned', '2022-12-10', '2022-12-04', '2022-12-10', 22, '9780345804358', 4),
('2022-12-01', 'returned', '2022-12-13', '2022-12-01', '2022-12-13', 24, '9781501166785', 66),
('2022-12-06', 'returned', '2022-12-15', '2022-12-07', '2022-12-15', 25, '9781416572366', 1),
('2022-12-21', 'declined', '2022-12-21', null, null, 27, '9780141185130', 4),
('2022-12-21', 'returned', '2022-12-25', '2022-12-22', '2022-12-25', 28, '9780385720045', 6),
('2022-12-19', 'returned', '2022-12-26', '2022-12-20', '2022-12-26', 29, '9780765326355', 66),
('2022-12-16', 'returned', '2022-12-25', '2022-12-16', '2022-12-25', 31, '9781501168529', 2),
('2022-12-19', 'returned', '2022-12-30', '2022-12-20', '2022-12-30', 33, '9781594489501', 6),
('2022-12-20', 'returned', '2022-12-31', '2022-12-21', '2022-12-31', 35, '9780307277712', 1),
('2022-12-17', 'returned', '2022-12-23', '2022-12-17', '2022-12-23', 36, '9781501133435', 6),
('2022-12-17', 'declined', '2022-12-18', null, null, 37, '9780062073600', 66),
('2022-12-17', 'returned', '2022-12-26', '2022-12-17', '2022-12-26', 38, '9781250027436', 1),
('2022-12-20', 'declined', '2022-12-21', null, null, 40, '9780062073549', 4),
('2022-12-18', 'declined', '2022-12-18', null, null, 42, '9781501105807', 4),
('2022-12-22', 'returned', '2022-12-26', '2022-12-22', '2022-12-26', 43, '9780553448122', 6),
('2022-12-15', 'returned', '2022-12-29', '2022-12-15', '2022-12-29', 45, '9780141439518', 1),
('2022-12-19', 'returned', '2022-12-25', '2022-12-20', '2022-12-25', 46, '9781250178619', 2),
('2022-12-22', 'returned', '2022-12-30', '2022-12-23', '2022-12-30', 48, '9780062073495', 6),
('2022-12-19', 'returned', '2022-12-30', '2022-12-20', '2022-12-30', 49, '9781501105777', 66),
('2022-12-20', 'returned', '2022-12-24', '2022-12-21', '2022-12-24', 50, '9781501173218', 1),
('2022-12-20', 'returned', '2022-12-29', '2022-12-21', '2022-12-29', 51, '9781594633940', 2),
('2022-12-17', 'returned', '2022-12-28', '2022-12-17', '2022-12-28', 53, '9780439358072', 6),
('2022-12-15', 'returned', '2022-12-25', '2022-12-15', '2022-12-25', 55, '9780151010264', 1),
('2022-12-19', 'returned', '2022-12-27', '2022-12-20', '2022-12-27', 57, '9780061120084', 4),
('2022-12-17', 'returned', '2022-12-31', '2022-12-18', '2022-12-31', 58, '9780061120084', 6),
('2022-12-20', 'declined', '2022-12-21', null, null, 60, '9780679732259', 1),
('2022-12-20', 'returned', '2022-12-27', '2022-12-20', '2022-12-27', 61, '9780316055437', 2),
('2022-12-17', 'returned', '2022-12-27', '2022-12-18', '2022-12-27', 63, '9780385531204', 6),
('2022-12-17', 'returned', '2022-12-30', '2022-12-18', '2022-12-30', 64, '9780735224292', 66),
('2022-12-16', 'returned', '2022-12-24', '2022-12-17', '2022-12-24', 66, '9780062073501', 66),
('2022-12-15', 'returned', '2022-12-26', '2022-12-15', '2022-12-26', 67, '9780141198963', 1),
('2022-12-21', 'returned', '2022-12-29', '2022-12-22', '2022-12-29', 69, '9780007356348', 4),
('2022-12-17', 'returned', '2022-12-27', '2022-12-18', '2022-12-27', 71, '9781250178619', 66),
('2022-12-22', 'declined', '2022-12-23', null, null, 72, '9780812988406', 1),
('2022-12-20', 'returned', '2022-12-27', '2022-12-21', '2022-12-27', 74, '9780062073501', 4),
('2022-12-22', 'declined', '2022-12-22', null, null, 75, '9780439139601', 1),
('2022-12-15', 'returned', '2022-12-24', '2022-12-16', '2022-12-24', 76, '9781400064168', 2),
('2022-12-22', 'returned', '2022-12-27', '2022-12-22', '2022-12-27', 78, '9780007356348', 6),
('2022-12-15', 'declined', '2022-12-16', null, null, 79, '9780439358071', 66),
('2022-12-15', 'returned', '2022-12-28', '2022-12-16', '2022-12-28', 81, '9781607014544', 2),
('2022-12-20', 'returned', '2022-12-29', '2022-12-20', '2022-12-29', 82, '9781594631764', 4),
('2022-12-17', 'returned', '2022-12-24', '2022-12-18', '2022-12-24', 83, '9780007356348', 6),
('2022-12-17', 'returned', '2022-12-24', '2022-12-18', '2022-12-24', 84, '9781501105807', 66),
('2022-12-18', 'returned', '2022-12-27', '2022-12-19', '2022-12-27', 85, '9780141198963', 1),
('2022-12-20', 'returned', '2022-12-26', '2022-12-21', '2022-12-26', 86, '9780684830421', 2),
('2022-12-16', 'returned', '2022-12-26', '2022-12-16', '2022-12-26', 88, '9780679733730', 6),
('2022-12-18', 'returned', '2022-12-24', '2022-12-19', '2022-12-24', 89, '9780671039755', 66),
('2022-12-21', 'returned', '2022-12-30', '2022-12-22', '2022-12-30', 90, '9780743273566', 1),
('2022-12-19', 'returned', '2022-12-25', '2022-12-20', '2022-12-25', 91, '9780151010264', 2),
('2022-12-21', 'returned', '2022-12-24', '2022-12-21', '2022-12-24', 92, '9780571347292', 4),
('2022-12-16', 'returned', '2022-12-24', '2022-12-16', '2022-12-24', 94, '9780765326355', 6),
('2022-12-21', 'returned', '2022-12-24', '2022-12-22', '2022-12-24', 95, '9780141397642', 66),
('2022-12-19', 'returned', '2022-12-24', '2022-12-19', '2022-12-24', 97, '9780307277712', 1),
('2022-12-22', 'returned', '2022-12-26', '2022-12-22', '2022-12-26', 98, '9781501168529', 2),
('2022-12-20', 'declined', '2022-12-21', null, null, 99, '9781501105807', 4),
('2022-12-22', 'returned', '2022-12-30', '2022-12-22', '2022-12-30', 100, '9780743273566', 6),
('2022-12-18', 'returned', '2022-12-26', '2022-12-19', '2022-12-26', 101, '9780062457714', 66),
('2022-12-15', 'declined', '2022-12-16', null, null, 102, '9780439358072', 1),
('2022-12-21', 'returned', '2022-12-25', '2022-12-21', '2022-12-25', 104, '9780671035429', 4),
('2022-12-18', 'returned', '2022-12-29', '2022-12-19', '2022-12-29', 106, '9781501160790', 1),
('2022-12-20', 'returned', '2022-12-26', '2022-12-21', '2022-12-26', 107, '9780684830507', 2),
('2022-12-19', 'returned', '2022-12-29', '2022-12-20', '2022-12-29', 108, '9780385511213', 1),
('2022-12-20', 'returned', '2022-12-25', '2022-12-20', '2022-12-25', 109, '9781449486792', 2),
('2022-12-16', 'returned', '2022-12-30', '2022-12-16', '2022-12-30', 110, '9780141397642', 4),
('2022-12-17', 'declined', '2022-12-18', null, null, 111, '9780141198963', 6),
('2022-12-21', 'returned', '2022-12-23', '2022-12-21', '2022-12-23', 1, '9780439554947', 1),
('2022-12-15', 'returned', '2022-12-29', '2022-12-16', '2022-12-29', 2, '9780385537039', 2),



('2023-01-01', 'returned', '2023-01-13', '2023-01-02', '2023-01-13', 14, '9781594489501', 112),
('2023-01-06', 'returned', '2023-01-14', '2023-01-07', '2023-01-14', 15, '9780375718946', 108),
('2023-01-02', 'declined', '2023-01-02', null, null, 16, '9781501168529', 109),
('2023-01-07', 'returned', '2023-01-12', '2023-01-07', '2023-01-12', 18, '9781501160790', 111),
('2023-01-01', 'returned', '2023-01-12', '2023-01-01', '2023-01-12', 19, '9780062073549', 112),
('2023-01-06', 'declined', '2023-01-07', null, null, 21, '9780525501220', 109),
('2023-01-02', 'returned', '2023-01-15', '2023-01-03', '2023-01-15', 23, '9780486284736', 111),
('2023-01-01', 'returned', '2023-01-11', '2023-01-02', '2023-01-11', 25, '9780062073495', 108),
('2023-01-03', 'returned', '2023-01-13', '2023-01-03', '2023-01-13', 27, '9780007136556', 110),
('2023-01-07', 'returned', '2023-01-10', '2023-01-07', '2023-01-10', 29, '9780007356348', 112),
('2023-01-06', 'returned', '2023-01-13', '2023-01-06', '2023-01-13', 31, '9780735219113', 109),
('2023-01-03', 'returned', '2023-01-09', '2023-01-04', '2023-01-09', 33, '9780684800715', 111),
('2023-01-02', 'returned', '2023-01-14', '2023-01-03', '2023-01-14', 34, '9780451169525', 112),
('2023-01-04', 'returned', '2023-01-11', '2023-01-05', '2023-01-11', 35, '9781250142306', 108),
('2023-01-01', 'returned', '2023-01-11', '2023-01-02', '2023-01-11', 37, '9780007356348', 112),
('2023-01-03', 'returned', '2023-01-14', '2023-01-03', '2023-01-14', 38, '9780385531204', 108),
('2023-01-03', 'returned', '2023-01-10', '2023-01-04', '2023-01-10', 39, '9781449486792', 109),
('2023-01-03', 'returned', '2023-01-14', '2023-01-03', '2023-01-14', 40, '9781501178269', 110),
('2023-01-05', 'returned', '2023-01-14', '2023-01-06', '2023-01-14', 41, '9780261103283', 109),
('2023-01-06', 'returned', '2023-01-09', '2023-01-06', '2023-01-09', 43, '9780679735772', 111),
('2023-01-02', 'returned', '2023-01-13', '2023-01-02', '2023-01-13', 44, '9781594631764', 112),
('2023-01-02', 'returned', '2023-01-09', '2023-01-02', '2023-01-09', 45, '9780316556347', 108),
('2023-01-07', 'returned', '2023-01-11', '2023-01-08', '2023-01-11', 46, '9780385349570', 109),
('2023-01-02', 'returned', '2023-01-11', '2023-01-02', '2023-01-11', 47, '9781501133435', 110),
('2023-01-06', 'returned', '2023-01-13', '2023-01-07', '2023-01-13', 48, '9780525501220', 111),
('2023-01-03', 'returned', '2023-01-08', '2023-01-03', '2023-01-08', 50, '9781627792134', 108),
('2023-01-03', 'returned', '2023-01-14', '2023-01-03', '2023-01-14', 52, '9780141439693', 110),
('2023-01-05', 'declined', '2023-01-05', null, null, 53, '9780345804358', 111),
('2023-01-04', 'returned', '2023-01-13', '2023-01-04', '2023-01-13', 55, '9781449486792', 108),
('2023-01-06', 'returned', '2023-01-14', '2023-01-07', '2023-01-14', 57, '9780439358071', 110),
('2023-01-05', 'returned', '2023-01-14', '2023-01-05', '2023-01-14', 58, '9780061120085', 111),
('2023-01-05', 'declined', '2023-01-05', null, null, 59, '9780099458326', 112),
('2023-01-05', 'returned', '2023-01-11', '2023-01-05', '2023-01-11', 61, '9780679732259', 109),
('2023-01-01', 'declined', '2023-01-01', null, null, 63, '9780141198963', 111),
('2023-01-05', 'declined', '2023-01-05', null, null, 64, '9781501105807', 112),
('2023-01-05', 'returned', '2023-01-13', '2023-01-05', '2023-01-13', 66, '9780345804358', 112),
('2023-01-05', 'returned', '2023-01-09', '2023-01-06', '2023-01-09', 67, '9780684830421', 108),
('2023-01-02', 'returned', '2023-01-12', '2023-01-03', '2023-01-12', 68, '9781416570868', 109),
('2023-01-04', 'returned', '2023-01-12', '2023-01-05', '2023-01-12', 70, '9780385537856', 111),
('2023-01-02', 'returned', '2023-01-09', '2023-01-03', '2023-01-09', 71, '9781501168529', 112),
('2023-01-02', 'returned', '2023-01-14', '2023-01-03', '2023-01-14', 72, '9780062073549', 108),
('2023-01-05', 'returned', '2023-01-13', '2023-01-06', '2023-01-13', 74, '9780525478812', 110),
('2023-01-01', 'returned', '2023-01-14', '2023-01-02', '2023-01-14', 76, '9781785654584', 109),
('2023-01-07', 'declined', '2023-01-08', null, null, 77, '9780141439693', 110),
('2023-01-03', 'returned', '2023-01-14', '2023-01-04', '2023-01-14', 79, '9780439358072', 112),
('2023-01-04', 'returned', '2023-01-14', '2023-01-04', '2023-01-14', 81, '9781416572366', 109),
('2023-01-04', 'returned', '2023-01-11', '2023-01-05', '2023-01-11', 83, '9780062073495', 111),
('2023-01-01', 'returned', '2023-01-12', '2023-01-01', '2023-01-12', 85, '9781982135848', 108),
('2023-01-05', 'returned', '2023-01-14', '2023-01-05', '2023-01-14', 86, '9781449486792', 109),
('2023-01-05', 'returned', '2023-01-11', '2023-01-06', '2023-01-11', 88, '9780684801469', 111),
('2023-01-01', 'returned', '2023-01-13', '2023-01-01', '2023-01-13', 89, '9780143105428', 112),
('2023-01-04', 'returned', '2023-01-11', '2023-01-05', '2023-01-11', 90, '9780525501220', 108),
('2023-01-03', 'returned', '2023-01-13', '2023-01-04', '2023-01-13', 91, '9780545010221', 109),
('2023-01-01', 'returned', '2023-01-11', '2023-01-01', '2023-01-11', 92, '9780545010222', 110),
('2023-01-01', 'returned', '2023-01-14', '2023-01-02', '2023-01-14', 93, '9781501142970', 111),
('2023-01-05', 'declined', '2023-01-05', null, null, 95, '9781501175466', 112),
('2023-01-02', 'returned', '2023-01-15', '2023-01-03', '2023-01-15', 96, '9781501166785', 112),
('2023-01-04', 'returned', '2023-01-09', '2023-01-05', '2023-01-09', 97, '9780062255655', 108),
('2023-01-05', 'returned', '2023-01-09', '2023-01-06', '2023-01-09', 98, '9780141439693', 109),
('2023-01-03', 'returned', '2023-01-12', '2023-01-04', '2023-01-12', 99, '9780141185130', 110),
('2023-01-01', 'returned', '2023-01-15', '2023-01-02', '2023-01-15', 100, '9781501175565', 111),
('2023-01-01', 'returned', '2023-01-11', '2023-01-02', '2023-01-11', 101, '9780151010264', 112),
('2023-01-02', 'returned', '2023-01-14', '2023-01-02', '2023-01-14', 103, '9780684830506', 109),
('2023-01-03', 'returned', '2023-01-09', '2023-01-04', '2023-01-09', 105, '9780553418026', 111),
('2023-01-22', 'returned', '2023-01-26', '2023-01-22', '2023-01-26', 71, '9781250313072', 112),
('2023-01-15', 'returned', '2023-01-29', '2023-01-16', '2023-01-29', 73, '9780099528988', 109),
('2023-01-22', 'returned', '2023-01-30', '2023-01-22', '2023-01-30', 75, '9780141439518', 108),
('2023-01-18', 'returned', '2023-01-30', '2023-01-19', '2023-01-30', 76, '9780857521353', 109),
('2023-01-17', 'returned', '2023-01-27', '2023-01-17', '2023-01-27', 78, '9781501173218', 111),
('2023-01-15', 'returned', '2023-01-28', '2023-01-16', '2023-01-28', 80, '9781501166785', 108),
('2023-01-16', 'returned', '2023-01-25', '2023-01-17', '2023-01-25', 82, '9780857521353', 110),
('2023-01-16', 'returned', '2023-01-27', '2023-01-16', '2023-01-27', 84, '9781501173219', 112),
('2023-01-19', 'declined', '2023-01-20', null, null, 86, '9780141187761', 109),
('2023-01-20', 'returned', '2023-01-27', '2023-01-21', '2023-01-27', 88, '9780684801520', 111),
('2023-01-15', 'returned', '2023-01-25', '2023-01-15', '2023-01-25', 90, '9780812987114', 108),
('2023-01-15', 'returned', '2023-01-24', '2023-01-15', '2023-01-24', 92, '9780805094619', 110),
('2023-01-19', 'returned', '2023-01-26', '2023-01-20', '2023-01-26', 93, '9780812987114', 111),
('2023-01-19', 'returned', '2023-01-30', '2023-01-19', '2023-01-30', 95, '9780805094602', 112),
('2023-01-18', 'returned', '2023-01-28', '2023-01-18', '2023-01-28', 97, '9781250042763', 108),
('2023-01-21', 'returned', '2023-01-24', '2023-01-22', '2023-01-24', 98, '9781501173218', 109),
('2023-01-17', 'returned', '2023-01-30', '2023-01-17', '2023-01-30', 100, '9780671039755', 111),
('2023-01-15', 'returned', '2023-01-27', '2023-01-15', '2023-01-27', 102, '9780385720953', 108),
('2023-01-22', 'declined', '2023-01-23', null, null, 104, '9780394703955', 110),
('2023-01-22', 'returned', '2023-01-25', '2023-01-23', '2023-01-25', 105, '9781594489501', 111),
('2023-01-15', 'returned', '2023-01-31', '2023-01-16', '2023-01-31', 106, '9780141185130', 108),
('2023-01-18', 'returned', '2023-01-31', '2023-01-19', '2023-01-31', 108, '9780385531204', 108),
('2023-01-16', 'declined', '2023-01-17', null, null, 109, '9780385524367', 109),
('2023-01-15', 'returned', '2023-01-24', '2023-01-16', '2023-01-24', 111, '9780439358072', 111),
('2023-01-18', 'declined', '2023-01-19', null, null, 112, '9780099528988', 112),
('2023-01-15', 'declined', '2023-01-15', null, null, 1, '9780007356348', 108),
('2023-01-20', 'returned', '2023-01-28', '2023-01-21', '2023-01-28', 3, '9780743273565', 112),
('2023-01-18', 'returned', '2023-01-29', '2023-01-19', '2023-01-29', 5, '9780451176462', 108),
('2023-01-18', 'declined', '2023-01-19', null, null, 6, '9780385537039', 111),
('2023-01-18', 'returned', '2023-01-28', '2023-01-19', '2023-01-28', 8, '9781416572366', 108),
('2023-01-22', 'returned', '2023-01-25', '2023-01-23', '2023-01-25', 10, '9780765377142', 110),
('2023-01-19', 'returned', '2023-01-26', '2023-01-20', '2023-01-26', 11, '9780812988406', 109),
('2023-01-18', 'returned', '2023-01-28', '2023-01-19', '2023-01-28', 12, '9780684830507', 110),
('2023-01-17', 'returned', '2023-01-24', '2023-01-17', '2023-01-24', 13, '9781416524793', 111),
('2023-01-22', 'returned', '2023-01-31', '2023-01-23', '2023-01-31', 15, '9780812987114', 108),
('2023-01-18', 'returned', '2023-01-30', '2023-01-18', '2023-01-30', 17, '9781607014544', 110),
('2023-01-15', 'returned', '2023-01-27', '2023-01-15', '2023-01-27', 18, '9781400064168', 111),
('2023-01-22', 'returned', '2023-01-31', '2023-01-23', '2023-01-31', 19, '9781501168529', 112),
('2023-01-18', 'returned', '2023-01-29', '2023-01-19', '2023-01-29', 20, '9780735224292', 108),
('2023-01-16', 'returned', '2023-01-26', '2023-01-17', '2023-01-26', 22, '9781416570868', 110),
('2023-01-18', 'declined', '2023-01-18', null, null, 24, '9781250313072', 112),
('2023-01-22', 'returned', '2023-01-28', '2023-01-22', '2023-01-28', 25, '9780316556347', 108),
('2023-01-22', 'returned', '2023-01-27', '2023-01-22', '2023-01-27', 27, '9780141185130', 110),
('2023-01-21', 'returned', '2023-01-26', '2023-01-22', '2023-01-26', 28, '9780141397642', 111),
('2023-01-22', 'returned', '2023-01-23', '2023-01-22', '2023-01-23', 30, '9780141187761', 108),
('2023-01-21', 'returned', '2023-01-29', '2023-01-22', '2023-01-29', 31, '9780261103283', 109),
('2023-01-18', 'returned', '2023-01-30', '2023-01-18', '2023-01-30', 32, '9781250142283', 110),
('2023-01-15', 'returned', '2023-01-25', '2023-01-16', '2023-01-25', 34, '9781501105807', 112),
('2023-01-18', 'returned', '2023-01-30', '2023-01-19', '2023-01-30', 36, '9780451524935', 111),
('2023-01-22', 'returned', '2023-01-23', '2023-01-22', '2023-01-23', 37, '9780007356348', 112),
('2023-01-22', 'returned', '2023-01-31', '2023-01-23', '2023-01-31', 38, '9780141198963', 108),
('2023-01-17', 'returned', '2023-01-30', '2023-01-18', '2023-01-30', 39, '9780062073564', 109),
('2023-01-22', 'returned', '2023-01-30', '2023-01-23', '2023-01-30', 41, '9780679732259', 109),
('2023-01-17', 'returned', '2023-01-29', '2023-01-17', '2023-01-29', 42, '9780141187396', 110),
('2023-01-20', 'returned', '2023-01-23', '2023-01-20', '2023-01-23', 44, '9781501160806', 112),
('2023-01-19', 'returned', '2023-01-24', '2023-01-20', '2023-01-24', 45, '9781627792134', 108),
('2023-01-17', 'returned', '2023-01-24', '2023-01-17', '2023-01-24', 46, '9780547928227', 109),
('2023-01-21', 'returned', '2023-01-25', '2023-01-22', '2023-01-25', 47, '9780525520375', 110),
('2023-01-19', 'returned', '2023-01-25', '2023-01-20', '2023-01-25', 48, '9780571347292', 111),
('2023-01-21', 'declined', '2023-01-21', null, null, 49, '9780547928203', 112),



('2023-02-06', 'returned', '2023-02-15', '2023-02-07', '2023-02-15', 63, '9781609455739', 111),
('2023-02-01', 'returned', '2023-02-08', '2023-02-01', '2023-02-08', 65, '9781501142970', 111),
('2023-02-03', 'returned', '2023-02-11', '2023-02-03', '2023-02-11', 66, '9780684801469', 112),
('2023-02-07', 'declined', '2023-02-07', null, null, 68, '9780553418026', 109),
('2023-02-04', 'returned', '2023-02-12', '2023-02-05', '2023-02-12', 70, '9780007113804', 111),
('2023-02-07', 'returned', '2023-02-11', '2023-02-07', '2023-02-11', 72, '9780062255655', 108),
('2023-02-01', 'returned', '2023-02-12', '2023-02-02', '2023-02-12', 73, '9781250313072', 109),
('2023-02-03', 'returned', '2023-02-14', '2023-02-04', '2023-02-14', 75, '9781250313072', 108),
('2023-02-02', 'returned', '2023-02-10', '2023-02-02', '2023-02-10', 77, '9780007113804', 110),
('2023-02-03', 'returned', '2023-02-10', '2023-02-03', '2023-02-10', 79, '9780684801469', 112),
('2023-02-07', 'returned', '2023-02-13', '2023-02-08', '2023-02-13', 80, '9780385537856', 108),
('2023-02-07', 'returned', '2023-02-11', '2023-02-08', '2023-02-11', 82, '9781627792134', 110),
('2023-02-06', 'returned', '2023-02-11', '2023-02-06', '2023-02-11', 83, '9780385537855', 111),
('2023-02-06', 'returned', '2023-02-09', '2023-02-06', '2023-02-09', 84, '9780062255655', 112),
('2023-02-02', 'returned', '2023-02-15', '2023-02-03', '2023-02-15', 85, '9780143105428', 108),
('2023-02-04', 'returned', '2023-02-09', '2023-02-04', '2023-02-09', 86, '9780451169525', 109),
('2023-02-06', 'returned', '2023-02-12', '2023-02-07', '2023-02-12', 88, '9780316055437', 111),
('2023-02-03', 'returned', '2023-02-10', '2023-02-03', '2023-02-10', 89, '9781501168802', 112),
('2023-02-06', 'returned', '2023-02-08', '2023-02-06', '2023-02-08', 90, '9780007113804', 108),
('2023-02-07', 'returned', '2023-02-11', '2023-02-07', '2023-02-11', 91, '9780451169525', 109),
('2023-02-04', 'returned', '2023-02-10', '2023-02-05', '2023-02-10', 92, '9780743273565', 110),
('2023-02-04', 'returned', '2023-02-15', '2023-02-05', '2023-02-15', 93, '9780385524282', 111),
('2023-02-05', 'returned', '2023-02-11', '2023-02-05', '2023-02-11', 95, '9780261103283', 112),
('2023-02-02', 'returned', '2023-02-08', '2023-02-02', '2023-02-08', 96, '9780062073564', 112),
('2023-02-05', 'returned', '2023-02-10', '2023-02-05', '2023-02-10', 98, '9780385511213', 109),
('2023-02-01', 'returned', '2023-02-12', '2023-02-01', '2023-02-12', 100, '9780684830507', 111),
('2023-02-07', 'returned', '2023-02-08', '2023-02-07', '2023-02-08', 101, '9780684801520', 112),
('2023-02-02', 'returned', '2023-02-09', '2023-02-03', '2023-02-09', 102, '9780062073600', 108),
('2023-02-05', 'returned', '2023-02-09', '2023-02-06', '2023-02-09', 103, '9781416570868', 109),
('2023-02-07', 'returned', '2023-02-15', '2023-02-08', '2023-02-15', 104, '9780439358071', 110),
('2023-02-02', 'returned', '2023-02-10', '2023-02-02', '2023-02-10', 105, '9781416524793', 111),
('2023-02-02', 'returned', '2023-02-15', '2023-02-03', '2023-02-15', 107, '9780140621195', 109),
('2023-02-05', 'declined', '2023-02-05', null, null, 108, '9780486284736', 108),
('2023-02-03', 'returned', '2023-02-12', '2023-02-04', '2023-02-12', 109, '9780439358072', 109),
('2023-02-02', 'returned', '2023-02-09', '2023-02-02', '2023-02-09', 110, '9780805094602', 110),
('2023-02-05', 'declined', '2023-02-06', null, null, 111, '9780385349570', 111),
('2023-02-01', 'returned', '2023-02-10', '2023-02-01', '2023-02-10', 112, '9780525563235', 112),
('2023-02-18', 'declined', '2023-02-19', null, null, 94, '9781982135848', 111),
('2023-02-18', 'returned', '2023-02-24', '2023-02-19', '2023-02-24', 95, '9781501168802', 112),
('2023-02-16', 'declined', '2023-02-16', null, null, 96, '9781616208684', 112),
('2023-02-21', 'declined', '2023-02-21', null, null, 97, '9780007136556', 108),
('2023-02-20', 'returned', '2023-02-24', '2023-02-20', '2023-02-24', 98, '9780307276650', 109),
('2023-02-22', 'returned', '2023-02-26', '2023-02-22', '2023-02-26', 100, '9781501173219', 111),
('2023-02-17', 'returned', '2023-02-25', '2023-02-18', '2023-02-25', 102, '9780099458326', 108),
('2023-02-15', 'returned', '2023-02-26', '2023-02-15', '2023-02-26', 104, '9780141198963', 110),
('2023-02-20', 'returned', '2023-02-25', '2023-02-21', '2023-02-25', 106, '9780679735772', 108),
('2023-02-22', 'returned', '2023-02-24', '2023-02-22', '2023-02-24', 107, '9780141198963', 109),
('2023-02-22', 'returned', '2023-02-26', '2023-02-22', '2023-02-26', 108, '9780141187396', 108),
('2023-02-16', 'returned', '2023-02-23', '2023-02-16', '2023-02-23', 110, '9780765326355', 110),
('2023-02-18', 'returned', '2023-02-25', '2023-02-19', '2023-02-25', 111, '9781594489501', 111),
('2023-02-22', 'returned', '2023-02-23', '2023-02-22', '2023-02-23', 112, '9780684833392', 112),
('2023-02-22', 'declined', '2023-02-23', null, null, 1, '9780307276650', 108),
('2023-02-19', 'returned', '2023-02-24', '2023-02-20', '2023-02-24', 3, '9780307277712', 112),
('2023-02-17', 'returned', '2023-02-24', '2023-02-17', '2023-02-24', 5, '9780439554893', 108),
('2023-02-19', 'returned', '2023-02-26', '2023-02-20', '2023-02-26', 6, '9780099448793', 111),
('2023-02-16', 'returned', '2023-02-26', '2023-02-16', '2023-02-26', 8, '9780007136556', 108),
('2023-02-16', 'returned', '2023-02-27', '2023-02-17', '2023-02-27', 9, '9780684833392', 109),
('2023-02-20', 'returned', '2023-02-26', '2023-02-21', '2023-02-26', 11, '9780307588364', 109),
('2023-02-21', 'returned', '2023-02-25', '2023-02-21', '2023-02-25', 12, '9780553448123', 110),
('2023-02-17', 'returned', '2023-02-27', '2023-02-18', '2023-02-27', 13, '9780545010221', 111),
('2023-02-21', 'returned', '2023-02-26', '2023-02-22', '2023-02-26', 14, '9781501168529', 112),
('2023-02-18', 'returned', '2023-02-27', '2023-02-19', '2023-02-27', 16, '9780141442464', 109),
('2023-02-18', 'returned', '2023-02-26', '2023-02-18', '2023-02-26', 17, '9781476763954', 110),
('2023-02-22', 'returned', '2023-02-25', '2023-02-23', '2023-02-25', 18, '9780545010222', 111),
('2023-02-22', 'returned', '2023-02-27', '2023-02-23', '2023-02-27', 20, '9780684800715', 108),
('2023-02-22', 'returned', '2023-02-26', '2023-02-22', '2023-02-26', 21, '9780525501220', 109),
('2023-02-16', 'returned', '2023-02-23', '2023-02-16', '2023-02-23', 23, '9780525501220', 111),
('2023-02-22', 'returned', '2023-02-24', '2023-02-23', '2023-02-24', 24, '9780684830507', 112),
('2023-02-15', 'returned', '2023-02-24', '2023-02-16', '2023-02-24', 26, '9780316055436', 109),
('2023-02-22', 'returned', '2023-02-26', '2023-02-23', '2023-02-26', 27, '9780684830506', 110),
('2023-02-20', 'returned', '2023-02-24', '2023-02-21', '2023-02-24', 29, '9780765377142', 112),
('2023-02-16', 'returned', '2023-02-24', '2023-02-16', '2023-02-24', 31, '9780684801469', 109),
('2023-02-17', 'returned', '2023-02-24', '2023-02-18', '2023-02-24', 32, '9780684801469', 110),
('2023-02-16', 'returned', '2023-02-24', '2023-02-16', '2023-02-24', 34, '9780553448122', 112),
('2023-02-16', 'returned', '2023-02-25', '2023-02-17', '2023-02-25', 35, '9781594631764', 108),
('2023-02-16', 'returned', '2023-02-27', '2023-02-17', '2023-02-27', 37, '9780684801520', 112),



('2023-03-03', 'returned', '2023-03-09', '2023-03-03', '2023-03-09', 110, '9780316556347', 110),
('2023-03-04', 'returned', '2023-03-14', '2023-03-05', '2023-03-14', 111, '9780545010221', 111),
('2023-03-02', 'returned', '2023-03-13', '2023-03-02', '2023-03-13', 1, '9781594489501', 108),
('2023-03-04', 'returned', '2023-03-11', '2023-03-05', '2023-03-11', 3, '9780062073563', 112),
('2023-03-06', 'returned', '2023-03-13', '2023-03-06', '2023-03-13', 5, '9780385542361', 108),
('2023-03-07', 'declined', '2023-03-08', null, null, 6, '9780099448792', 111),
('2023-03-03', 'returned', '2023-03-08', '2023-03-03', '2023-03-08', 9, '9780451169525', 109),
('2023-03-01', 'returned', '2023-03-11', '2023-03-02', '2023-03-11', 11, '9781501160806', 109),
('2023-03-01', 'returned', '2023-03-09', '2023-03-01', '2023-03-09', 12, '9780140621195', 110),
('2023-03-03', 'returned', '2023-03-11', '2023-03-04', '2023-03-11', 13, '9781501175466', 111),
('2023-03-02', 'returned', '2023-03-15', '2023-03-03', '2023-03-15', 14, '9781449486792', 112),
('2023-03-01', 'returned', '2023-03-12', '2023-03-01', '2023-03-12', 16, '9780385524282', 109),
('2023-03-07', 'returned', '2023-03-14', '2023-03-07', '2023-03-14', 18, '9780679735772', 111),
('2023-03-05', 'declined', '2023-03-06', null, null, 20, '9780062073563', 108),
('2023-03-07', 'returned', '2023-03-11', '2023-03-07', '2023-03-11', 21, '9780062073495', 109),
('2023-03-07', 'returned', '2023-03-12', '2023-03-07', '2023-03-12', 23, '9780007136556', 111),
('2023-03-03', 'declined', '2023-03-04', null, null, 24, '9781416570868', 112),
('2023-03-04', 'returned', '2023-03-12', '2023-03-05', '2023-03-12', 25, '9781501175565', 108),
('2023-03-05', 'returned', '2023-03-08', '2023-03-05', '2023-03-08', 27, '9781501178269', 110),
('2023-03-03', 'declined', '2023-03-04', null, null, 28, '9780099448792', 111),
('2023-03-03', 'returned', '2023-03-09', '2023-03-03', '2023-03-09', 29, '9781616208684', 112),
('2023-03-07', 'returned', '2023-03-09', '2023-03-07', '2023-03-09', 31, '9780141442464', 109),
('2023-03-06', 'returned', '2023-03-12', '2023-03-06', '2023-03-12', 33, '9780439358071', 111),
('2023-03-01', 'returned', '2023-03-14', '2023-03-01', '2023-03-14', 35, '9780525563235', 108),
('2023-03-03', 'returned', '2023-03-10', '2023-03-04', '2023-03-10', 37, '9780451169525', 112),
('2023-03-01', 'returned', '2023-03-09', '2023-03-01', '2023-03-09', 38, '9781594489501', 108),
('2023-03-05', 'returned', '2023-03-08', '2023-03-05', '2023-03-08', 40, '9780141185239', 110),
('2023-03-07', 'declined', '2023-03-08', null, null, 42, '9780316055436', 110),
('2023-03-06', 'returned', '2023-03-12', '2023-03-06', '2023-03-12', 44, '9780857521353', 112),
('2023-03-03', 'returned', '2023-03-11', '2023-03-03', '2023-03-11', 45, '9780684833392', 108),
('2023-03-01', 'returned', '2023-03-14', '2023-03-02', '2023-03-14', 46, '9781627792134', 109),
('2023-03-03', 'returned', '2023-03-08', '2023-03-03', '2023-03-08', 47, '9781594633940', 110),
('2023-03-04', 'returned', '2023-03-10', '2023-03-05', '2023-03-10', 48, '9780671039755', 111),
('2023-03-07', 'returned', '2023-03-14', '2023-03-07', '2023-03-14', 50, '9780261103283', 108),
('2023-03-01', 'returned', '2023-03-14', '2023-03-02', '2023-03-14', 52, '9781785038881', 110),
('2023-03-06', 'returned', '2023-03-12', '2023-03-06', '2023-03-12', 54, '9780385537855', 112),
('2023-03-02', 'returned', '2023-03-10', '2023-03-02', '2023-03-10', 55, '9780747596461', 108),
('2023-03-01', 'returned', '2023-03-14', '2023-03-02', '2023-03-14', 57, '9780671039755', 110),
('2023-03-04', 'returned', '2023-03-15', '2023-03-05', '2023-03-15', 59, '9781501175565', 112),
('2023-03-03', 'returned', '2023-03-11', '2023-03-04', '2023-03-11', 61, '9780385537039', 109),
('2023-03-03', 'returned', '2023-03-09', '2023-03-03', '2023-03-09', 63, '9781594489501', 111),
('2023-03-01', 'returned', '2023-03-11', '2023-03-01', '2023-03-11', 64, '9780684830507', 112),
('2023-03-04', 'returned', '2023-03-15', '2023-03-05', '2023-03-15', 65, '9780747596461', 111),
('2023-03-03', 'returned', '2023-03-08', '2023-03-03', '2023-03-08', 66, '9781250027436', 112),
('2023-03-02', 'returned', '2023-03-14', '2023-03-03', '2023-03-14', 67, '9780307277712', 108),
('2023-03-21', 'returned', '2023-03-25', '2023-03-22', '2023-03-25', 39, '9780385720045', 109),
('2023-03-22', 'returned', '2023-03-26', '2023-03-23', '2023-03-26', 40, '9780684830506', 110),
('2023-03-17', 'returned', '2023-03-27', '2023-03-17', '2023-03-27', 41, '9780571347292', 109),
('2023-03-19', 'returned', '2023-03-25', '2023-03-19', '2023-03-25', 43, '9780684801469', 111),
('2023-03-15', 'returned', '2023-03-24', '2023-03-16', '2023-03-24', 45, '9780316556347', 108),
('2023-03-16', 'returned', '2023-03-31', '2023-03-17', '2023-03-31', 47, '9780061120085', 110),
('2023-03-15', 'returned', '2023-03-28', '2023-03-15', '2023-03-28', 48, '9780007356348', 111),
('2023-03-18', 'returned', '2023-03-30', '2023-03-19', '2023-03-30', 50, '9780451524935', 108),
('2023-03-21', 'returned', '2023-03-26', '2023-03-21', '2023-03-26', 52, '9781250142283', 110),
('2023-03-20', 'returned', '2023-03-25', '2023-03-21', '2023-03-25', 53, '9780061120085', 111),
('2023-03-19', 'returned', '2023-03-25', '2023-03-20', '2023-03-25', 55, '9780547928227', 108),
('2023-03-20', 'returned', '2023-03-29', '2023-03-20', '2023-03-29', 57, '9780062073564', 110),
('2023-03-19', 'returned', '2023-03-28', '2023-03-19', '2023-03-28', 59, '9780679732259', 112),
('2023-03-20', 'returned', '2023-03-29', '2023-03-21', '2023-03-29', 60, '9780525520375', 108),
('2023-03-18', 'returned', '2023-03-26', '2023-03-18', '2023-03-26', 63, '9780307278783', 111),
('2023-03-20', 'returned', '2023-03-24', '2023-03-21', '2023-03-24', 65, '9780141187761', 111),
('2023-03-19', 'returned', '2023-03-29', '2023-03-20', '2023-03-29', 66, '9781501173218', 112),
('2023-03-15', 'returned', '2023-03-29', '2023-03-15', '2023-03-29', 68, '9780735219113', 109),
('2023-03-15', 'returned', '2023-03-26', '2023-03-15', '2023-03-26', 70, '9780062073501', 111),
('2023-03-17', 'returned', '2023-03-30', '2023-03-18', '2023-03-30', 72, '9780062073495', 108),
('2023-03-17', 'returned', '2023-03-27', '2023-03-18', '2023-03-27', 73, '9780307588364', 109),
('2023-03-18', 'returned', '2023-03-30', '2023-03-19', '2023-03-30', 75, '9780316055436', 108),
('2023-03-19', 'declined', '2023-03-20', null, null, 77, '9781501133435', 110),
('2023-03-22', 'returned', '2023-03-24', '2023-03-22', '2023-03-24', 78, '9780140433922', 111),
('2023-03-20', 'returned', '2023-03-28', '2023-03-20', '2023-03-28', 80, '9780385537855', 108),
('2023-03-17', 'returned', '2023-03-31', '2023-03-18', '2023-03-31', 81, '9781250142306', 109),
('2023-03-21', 'returned', '2023-03-24', '2023-03-21', '2023-03-24', 82, '9780525563235', 110),
('2023-03-16', 'returned', '2023-03-30', '2023-03-16', '2023-03-30', 84, '9780679735772', 112),
('2023-03-20', 'returned', '2023-03-25', '2023-03-20', '2023-03-25', 86, '9780679735772', 109),
('2023-03-16', 'returned', '2023-03-24', '2023-03-17', '2023-03-24', 88, '9781250142283', 111),
('2023-03-19', 'returned', '2023-03-23', '2023-03-19', '2023-03-23', 89, '9780525501220', 112),
('2023-03-20', 'returned', '2023-03-29', '2023-03-21', '2023-03-29', 90, '9780375718946', 108),
('2023-03-21', 'returned', '2023-03-30', '2023-03-22', '2023-03-30', 92, '9780007136556', 110),
('2023-03-19', 'returned', '2023-03-28', '2023-03-19', '2023-03-28', 93, '9780143105428', 111),
('2023-03-22', 'returned', '2023-03-25', '2023-03-23', '2023-03-25', 94, '9781250142306', 111),
('2023-03-15', 'declined', '2023-03-15', null, null, 95, '9780061120085', 112),
('2023-03-19', 'returned', '2023-03-30', '2023-03-19', '2023-03-30', 97, '9781501175465', 108),
('2023-03-19', 'returned', '2023-03-27', '2023-03-20', '2023-03-27', 98, '9780544003415', 109),
('2023-03-22', 'returned', '2023-03-25', '2023-03-22', '2023-03-25', 100, '9780141185239', 111),
('2023-03-22', 'returned', '2023-03-29', '2023-03-22', '2023-03-29', 102, '9780307276650', 108),
('2023-03-19', 'returned', '2023-03-24', '2023-03-20', '2023-03-24', 103, '9780571347292', 109),
('2023-03-17', 'returned', '2023-03-30', '2023-03-18', '2023-03-30', 105, '9780062073501', 111),
('2023-03-21', 'returned', '2023-03-26', '2023-03-21', '2023-03-26', 107, '9780547928210', 109),
('2023-03-21', 'returned', '2023-03-30', '2023-03-22', '2023-03-30', 109, '9780735224292', 109),
('2023-03-17', 'returned', '2023-03-28', '2023-03-18', '2023-03-28', 111, '9780679732259', 111),
('2023-03-20', 'returned', '2023-03-25', '2023-03-20', '2023-03-25', 112, '9780805094602', 112),
('2023-03-18', 'returned', '2023-03-27', '2023-03-18', '2023-03-27', 1, '9780805094602', 108),
('2023-03-16', 'returned', '2023-03-29', '2023-03-16', '2023-03-29', 2, '9780385531204', 109),
('2023-03-15', 'returned', '2023-03-29', '2023-03-15', '2023-03-29', 3, '9780007113804', 112),
('2023-03-19', 'returned', '2023-03-30', '2023-03-20', '2023-03-30', 5, '9781627792134', 108),
('2023-03-16', 'declined', '2023-03-16', null, null, 6, '9780385531204', 111),
('2023-03-16', 'returned', '2023-03-30', '2023-03-16', '2023-03-30', 9, '9780141185130', 109),
('2023-03-15', 'returned', '2023-03-30', '2023-03-15', '2023-03-30', 10, '9780525478812', 110),
('2023-03-17', 'returned', '2023-03-25', '2023-03-17', '2023-03-25', 11, '9780385537039', 109),



('2023-04-07', 'returned', '2023-04-14', '2023-04-08', '2023-04-14', 26, '9781501160769', 109),
('2023-04-02', 'returned', '2023-04-14', '2023-04-03', '2023-04-14', 27, '9780743273566', 110),
('2023-04-03', 'returned', '2023-04-12', '2023-04-04', '2023-04-12', 29, '9781501180989', 112),
('2023-04-04', 'returned', '2023-04-10', '2023-04-04', '2023-04-10', 31, '9781785038881', 109),
('2023-04-04', 'returned', '2023-04-13', '2023-04-04', '2023-04-13', 32, '9780385524282', 110),
('2023-04-04', 'returned', '2023-04-08', '2023-04-04', '2023-04-08', 34, '9780553418026', 112),
('2023-04-03', 'returned', '2023-04-13', '2023-04-03', '2023-04-13', 35, '9780140621195', 108),
('2023-04-01', 'declined', '2023-04-02', null, null, 37, '9781982135848', 112),
('2023-04-07', 'returned', '2023-04-12', '2023-04-08', '2023-04-12', 38, '9780439139601', 108),
('2023-04-03', 'returned', '2023-04-11', '2023-04-03', '2023-04-11', 39, '9780316556347', 109),
('2023-04-05', 'returned', '2023-04-14', '2023-04-05', '2023-04-14', 40, '9780812987114', 110),
('2023-04-07', 'returned', '2023-04-15', '2023-04-08', '2023-04-15', 41, '9780525563235', 109),
('2023-04-05', 'returned', '2023-04-13', '2023-04-06', '2023-04-13', 42, '9780399590504', 110),
('2023-04-03', 'returned', '2023-04-12', '2023-04-04', '2023-04-12', 44, '9780385537855', 112),
('2023-04-06', 'returned', '2023-04-12', '2023-04-07', '2023-04-12', 45, '9780439554893', 108),
('2023-04-05', 'returned', '2023-04-12', '2023-04-05', '2023-04-12', 46, '9780679732259', 109),
('2023-04-02', 'returned', '2023-04-15', '2023-04-03', '2023-04-15', 48, '9780307588364', 111),
('2023-04-04', 'returned', '2023-04-15', '2023-04-05', '2023-04-15', 50, '9780062073564', 108),
('2023-04-07', 'declined', '2023-04-07', null, null, 52, '9780062073600', 110),
('2023-04-03', 'returned', '2023-04-14', '2023-04-03', '2023-04-14', 53, '9780743273565', 111),
('2023-04-07', 'returned', '2023-04-09', '2023-04-07', '2023-04-09', 54, '9780062073564', 112),
('2023-04-02', 'returned', '2023-04-09', '2023-04-03', '2023-04-09', 56, '9781627792134', 109),
('2023-04-03', 'returned', '2023-04-14', '2023-04-04', '2023-04-14', 58, '9780062255655', 111),
('2023-04-06', 'returned', '2023-04-10', '2023-04-06', '2023-04-10', 59, '9780439554947', 112),
('2023-04-01', 'declined', '2023-04-02', null, null, 60, '9781416570868', 108),
('2023-04-03', 'returned', '2023-04-10', '2023-04-04', '2023-04-10', 64, '9781594489501', 112),
('2023-04-03', 'returned', '2023-04-13', '2023-04-03', '2023-04-13', 66, '9781501168802', 112),
('2023-04-01', 'declined', '2023-04-02', null, null, 68, '9780553448123', 109),
('2023-04-04', 'returned', '2023-04-10', '2023-04-04', '2023-04-10', 69, '9781250178619', 110),
('2023-04-01', 'returned', '2023-04-08', '2023-04-01', '2023-04-08', 71, '9781627792134', 112),
('2023-04-03', 'returned', '2023-04-12', '2023-04-03', '2023-04-12', 73, '9780553448123', 109),
('2023-04-06', 'returned', '2023-04-13', '2023-04-07', '2023-04-13', 75, '9780525563235', 108),
('2023-04-06', 'returned', '2023-04-08', '2023-04-06', '2023-04-08', 77, '9780544003415', 110),
('2023-04-07', 'returned', '2023-04-13', '2023-04-08', '2023-04-13', 79, '9780141187761', 112),
('2023-04-07', 'returned', '2023-04-11', '2023-04-08', '2023-04-11', 80, '9781501178269', 108),
('2023-04-07', 'returned', '2023-04-12', '2023-04-08', '2023-04-12', 82, '9781594631764', 110),
('2023-04-04', 'declined', '2023-04-05', null, null, 83, '9780062073563', 111),
('2023-04-22', 'returned', '2023-05-01', '2023-04-23', '2023-05-01', 65, '9780684801520', 111),
('2023-04-21', 'returned', '2023-04-28', '2023-04-21', '2023-04-28', 66, '9780140433922', 112),
('2023-04-18', 'returned', '2023-04-23', '2023-04-18', '2023-04-23', 67, '9780525478812', 108),
('2023-04-17', 'returned', '2023-04-25', '2023-04-18', '2023-04-25', 68, '9780765326355', 109),
('2023-04-20', 'returned', '2023-04-30', '2023-04-20', '2023-04-30', 70, '9781501160806', 111),
('2023-04-21', 'returned', '2023-04-29', '2023-04-22', '2023-04-29', 71, '9780345804358', 112),
('2023-04-18', 'returned', '2023-04-25', '2023-04-19', '2023-04-25', 73, '9780553418026', 109),
('2023-04-22', 'returned', '2023-04-25', '2023-04-22', '2023-04-25', 75, '9780571347292', 108),
('2023-04-22', 'returned', '2023-04-27', '2023-04-22', '2023-04-27', 76, '9780099448792', 109),
('2023-04-17', 'returned', '2023-04-25', '2023-04-17', '2023-04-25', 78, '9781501160769', 111),
('2023-04-17', 'returned', '2023-04-25', '2023-04-18', '2023-04-25', 80, '9780062255655', 108),
('2023-04-22', 'returned', '2023-04-26', '2023-04-23', '2023-04-26', 82, '9780007136556', 110),
('2023-04-15', 'returned', '2023-04-30', '2023-04-16', '2023-04-30', 83, '9781501175466', 111),
('2023-04-22', 'returned', '2023-04-25', '2023-04-22', '2023-04-25', 84, '9781501168802', 112),
('2023-04-15', 'returned', '2023-04-26', '2023-04-15', '2023-04-26', 86, '9780571347292', 109),
('2023-04-19', 'declined', '2023-04-19', null, null, 87, '9780061120084', 110),
('2023-04-20', 'declined', '2023-04-20', null, null, 88, '9780062073495', 111),
('2023-04-22', 'returned', '2023-04-27', '2023-04-23', '2023-04-27', 90, '9780375718946', 108),
('2023-04-21', 'returned', '2023-04-23', '2023-04-21', '2023-04-23', 91, '9780439554893', 109),
('2023-04-21', 'returned', '2023-04-27', '2023-04-21', '2023-04-27', 93, '9780141185130', 111),
('2023-04-18', 'declined', '2023-04-18', null, null, 94, '9780439139601', 111),
('2023-04-16', 'returned', '2023-04-25', '2023-04-17', '2023-04-25', 96, '9780307276650', 112),
('2023-04-15', 'returned', '2023-04-28', '2023-04-15', '2023-04-28', 97, '9780399590504', 108),
('2023-04-21', 'returned', '2023-04-26', '2023-04-22', '2023-04-26', 98, '9780439358071', 109),
('2023-04-15', 'declined', '2023-04-15', null, null, 100, '9780679733730', 111),
('2023-04-22', 'returned', '2023-04-25', '2023-04-22', '2023-04-25', 102, '9780062457714', 108),
('2023-04-21', 'returned', '2023-04-27', '2023-04-21', '2023-04-27', 103, '9780544003415', 109),
('2023-04-19', 'returned', '2023-04-30', '2023-04-19', '2023-04-30', 104, '9780553418026', 110),
('2023-04-20', 'returned', '2023-05-01', '2023-04-21', '2023-05-01', 105, '9780439554947', 111),
('2023-04-17', 'returned', '2023-04-25', '2023-04-17', '2023-04-25', 106, '9780007356348', 108),
('2023-04-16', 'declined', '2023-04-16', null, null, 107, '9780316556347', 109),
('2023-04-18', 'returned', '2023-04-30', '2023-04-19', '2023-04-30', 109, '9780545010221', 109),
('2023-04-21', 'returned', '2023-04-28', '2023-04-21', '2023-04-28', 110, '9780062073501', 110),
('2023-04-18', 'returned', '2023-04-25', '2023-04-18', '2023-04-25', 111, '9781540682178', 111),
('2023-04-16', 'returned', '2023-04-29', '2023-04-16', '2023-04-29', 112, '9781501160806', 112),
('2023-04-19', 'returned', '2023-04-29', '2023-04-20', '2023-04-29', 1, '9780062073564', 108),
('2023-04-18', 'returned', '2023-04-24', '2023-04-18', '2023-04-24', 2, '9780544003415', 109),
('2023-04-19', 'returned', '2023-04-25', '2023-04-20', '2023-04-25', 4, '9780385720953', 110),
('2023-04-21', 'returned', '2023-04-29', '2023-04-22', '2023-04-29', 5, '9780439139601', 108),
('2023-04-15', 'returned', '2023-04-30', '2023-04-16', '2023-04-30', 9, '9781501173219', 109),
('2023-04-16', 'returned', '2023-05-01', '2023-04-17', '2023-05-01', 11, '9781250313072', 109),
('2023-04-20', 'returned', '2023-04-28', '2023-04-20', '2023-04-28', 13, '9781250313072', 111),
('2023-04-19', 'returned', '2023-04-27', '2023-04-20', '2023-04-27', 15, '9781400064168', 108),
('2023-04-20', 'returned', '2023-04-30', '2023-04-20', '2023-04-30', 17, '9781609455739', 110),
('2023-04-16', 'returned', '2023-05-01', '2023-04-17', '2023-05-01', 19, '9780439358071', 112),
('2023-04-16', 'returned', '2023-04-30', '2023-04-17', '2023-04-30', 20, '9781416572366', 108),
('2023-04-16', 'returned', '2023-04-24', '2023-04-17', '2023-04-24', 21, '9780062255655', 109),
('2023-04-17', 'returned', '2023-04-24', '2023-04-17', '2023-04-24', 23, '9780743273565', 111),
('2023-04-22', 'returned', '2023-04-25', '2023-04-22', '2023-04-25', 25, '9780143105428', 108),
('2023-04-20', 'returned', '2023-04-26', '2023-04-20', '2023-04-26', 26, '9780062073549', 109),
('2023-04-20', 'returned', '2023-04-30', '2023-04-21', '2023-04-30', 27, '9780062457714', 110),
('2023-04-15', 'returned', '2023-04-27', '2023-04-15', '2023-04-27', 28, '9781501160790', 111),
('2023-04-17', 'returned', '2023-04-27', '2023-04-18', '2023-04-27', 30, '9780062457714', 108),
('2023-04-21', 'returned', '2023-04-24', '2023-04-21', '2023-04-24', 31, '9780007356348', 109),
('2023-04-16', 'returned', '2023-04-28', '2023-04-16', '2023-04-28', 33, '9781501160806', 111),
('2023-04-17', 'returned', '2023-04-28', '2023-04-18', '2023-04-28', 34, '9780451524935', 112),
('2023-04-15', 'returned', '2023-04-23', '2023-04-15', '2023-04-23', 36, '9780385720953', 111),
('2023-04-22', 'returned', '2023-04-29', '2023-04-22', '2023-04-29', 37, '9780062409867', 112),
('2023-04-19', 'returned', '2023-04-24', '2023-04-20', '2023-04-24', 38, '9781616208684', 108),
('2023-04-22', 'returned', '2023-04-30', '2023-04-23', '2023-04-30', 39, '9781501175565', 109),
('2023-04-15', 'returned', '2023-04-28', '2023-04-15', '2023-04-28', 41, '9780062073564', 109),
('2023-04-18', 'returned', '2023-04-27', '2023-04-19', '2023-04-27', 43, '9780140433922', 111),
('2023-04-22', 'returned', '2023-04-27', '2023-04-23', '2023-04-27', 44, '9780141439518', 112),
('2023-04-17', 'returned', '2023-04-27', '2023-04-18', '2023-04-27', 46, '9781501105807', 109),
('2023-04-17', 'returned', '2023-04-27', '2023-04-17', '2023-04-27', 48, '9781416524793', 111),



('2023-05-03', 'declined', '2023-05-03', null, null, 93, '9781501160790', 111),
('2023-05-05', 'returned', '2023-05-12', '2023-05-05', '2023-05-12', 94, '9780439554893', 111),
('2023-05-07', 'returned', '2023-05-12', '2023-05-07', '2023-05-12', 96, '9780451176462', 112),
('2023-05-02', 'returned', '2023-05-12', '2023-05-03', '2023-05-12', 98, '9780765326355', 109),
('2023-05-02', 'returned', '2023-05-11', '2023-05-03', '2023-05-11', 99, '9780385524367', 110),
('2023-05-05', 'returned', '2023-05-11', '2023-05-06', '2023-05-11', 101, '9780007113804', 112),
('2023-05-01', 'returned', '2023-05-13', '2023-05-01', '2023-05-13', 103, '9780451176462', 109),
('2023-05-02', 'returned', '2023-05-09', '2023-05-03', '2023-05-09', 105, '9781609455739', 111),
('2023-05-05', 'returned', '2023-05-10', '2023-05-05', '2023-05-10', 106, '9781501168529', 108),
('2023-05-04', 'returned', '2023-05-14', '2023-05-04', '2023-05-14', 108, '9780735224292', 108),
('2023-05-07', 'returned', '2023-05-14', '2023-05-08', '2023-05-14', 109, '9781501160790', 109),
('2023-05-01', 'returned', '2023-05-15', '2023-05-02', '2023-05-15', 110, '9780553418026', 110),
('2023-05-06', 'returned', '2023-05-10', '2023-05-07', '2023-05-10', 111, '9781501173218', 111),
('2023-05-01', 'returned', '2023-05-09', '2023-05-02', '2023-05-09', 1, '9781501173219', 108),
('2023-05-02', 'declined', '2023-05-02', null, null, 3, '9780375718946', 112),
('2023-05-05', 'returned', '2023-05-11', '2023-05-06', '2023-05-11', 5, '9780375718946', 108),
('2023-05-05', 'declined', '2023-05-06', null, null, 6, '9781501160806', 111),
('2023-05-05', 'returned', '2023-05-14', '2023-05-05', '2023-05-14', 8, '9781250313072', 108),
('2023-05-07', 'returned', '2023-05-10', '2023-05-07', '2023-05-10', 10, '9780007136556', 110),
('2023-05-06', 'returned', '2023-05-10', '2023-05-06', '2023-05-10', 12, '9780062457714', 110),
('2023-05-02', 'returned', '2023-05-13', '2023-05-02', '2023-05-13', 14, '9780140433922', 112),
('2023-05-03', 'returned', '2023-05-14', '2023-05-03', '2023-05-14', 16, '9780765326355', 109),
('2023-05-04', 'returned', '2023-05-09', '2023-05-04', '2023-05-09', 17, '9781594489501', 110),
('2023-05-01', 'returned', '2023-05-13', '2023-05-02', '2023-05-13', 18, '9780399590504', 111),
('2023-05-04', 'returned', '2023-05-13', '2023-05-05', '2023-05-13', 19, '9780007356348', 112),
('2023-05-06', 'returned', '2023-05-13', '2023-05-07', '2023-05-13', 21, '9780140621195', 109),
('2023-05-05', 'returned', '2023-05-12', '2023-05-06', '2023-05-12', 22, '9781501168802', 110),
('2023-05-04', 'returned', '2023-05-10', '2023-05-04', '2023-05-10', 23, '9780307278783', 111),
('2023-05-07', 'declined', '2023-05-07', null, null, 25, '9780062073501', 108),
('2023-05-02', 'declined', '2023-05-02', null, null, 26, '9781416572366', 109),
('2023-05-06', 'returned', '2023-05-12', '2023-05-07', '2023-05-12', 27, '9781607014544', 110),
('2023-05-03', 'returned', '2023-05-15', '2023-05-04', '2023-05-15', 28, '9780571347292', 111),
('2023-05-03', 'returned', '2023-05-13', '2023-05-03', '2023-05-13', 29, '9780679733730', 112),
('2023-05-03', 'returned', '2023-05-09', '2023-05-03', '2023-05-09', 31, '9781250142306', 109),
('2023-05-01', 'returned', '2023-05-15', '2023-05-02', '2023-05-15', 33, '9781501175466', 111),
('2023-05-02', 'returned', '2023-05-09', '2023-05-03', '2023-05-09', 35, '9780547928227', 108),
('2023-05-05', 'declined', '2023-05-06', null, null, 37, '9781250142283', 112),
('2023-05-01', 'returned', '2023-05-14', '2023-05-01', '2023-05-14', 38, '9781607014544', 108),
('2023-05-02', 'returned', '2023-05-08', '2023-05-02', '2023-05-08', 39, '9781250142283', 109),
('2023-05-01', 'returned', '2023-05-10', '2023-05-02', '2023-05-10', 41, '9781416570868', 109),
('2023-05-03', 'returned', '2023-05-11', '2023-05-04', '2023-05-11', 43, '9780486284736', 111),
('2023-05-07', 'returned', '2023-05-10', '2023-05-08', '2023-05-10', 45, '9781501173218', 108),
('2023-05-06', 'returned', '2023-05-10', '2023-05-07', '2023-05-10', 47, '9780547928227', 110),
('2023-05-05', 'returned', '2023-05-15', '2023-05-06', '2023-05-15', 48, '9780743273566', 111),
('2023-05-18', 'returned', '2023-05-24', '2023-05-19', '2023-05-24', 76, '9780439554947', 109),
('2023-05-15', 'returned', '2023-05-28', '2023-05-15', '2023-05-28', 77, '9780439554947', 110),
('2023-05-16', 'returned', '2023-05-24', '2023-05-16', '2023-05-24', 78, '9780684830421', 111),
('2023-05-18', 'returned', '2023-05-28', '2023-05-18', '2023-05-28', 79, '9780007356348', 112),
('2023-05-16', 'returned', '2023-05-29', '2023-05-17', '2023-05-29', 81, '9780099448792', 109),
('2023-05-19', 'declined', '2023-05-19', null, null, 83, '9781476763954', 111),
('2023-05-16', 'returned', '2023-05-28', '2023-05-16', '2023-05-28', 84, '9781501133435', 112),
('2023-05-20', 'declined', '2023-05-21', null, null, 85, '9780735224292', 108),
('2023-05-16', 'returned', '2023-05-26', '2023-05-16', '2023-05-26', 86, '9780684801469', 109),
('2023-05-18', 'returned', '2023-05-30', '2023-05-18', '2023-05-30', 88, '9780679732259', 111),
('2023-05-15', 'returned', '2023-05-28', '2023-05-16', '2023-05-28', 90, '9781501175466', 108),
('2023-05-22', 'returned', '2023-05-25', '2023-05-22', '2023-05-25', 91, '9781501133435', 109),
('2023-05-15', 'returned', '2023-05-30', '2023-05-16', '2023-05-30', 93, '9780385349570', 111),
('2023-05-22', 'returned', '2023-05-24', '2023-05-23', '2023-05-24', 94, '9780316055437', 111),
('2023-05-19', 'returned', '2023-05-31', '2023-05-20', '2023-05-31', 96, '9780062073564', 112),
('2023-05-17', 'returned', '2023-05-29', '2023-05-18', '2023-05-29', 97, '9780062073600', 108),
('2023-05-17', 'returned', '2023-05-31', '2023-05-18', '2023-05-31', 99, '9780140621195', 110),
('2023-05-15', 'returned', '2023-05-28', '2023-05-16', '2023-05-28', 101, '9780062073600', 112),
('2023-05-19', 'returned', '2023-05-28', '2023-05-20', '2023-05-28', 103, '9780525952662', 109),
('2023-05-16', 'returned', '2023-05-31', '2023-05-17', '2023-05-31', 104, '9780684801469', 110),
('2023-05-16', 'returned', '2023-05-26', '2023-05-17', '2023-05-26', 105, '9780062073563', 111),
('2023-05-22', 'declined', '2023-05-22', null, null, 106, '9780261103283', 108),
('2023-05-16', 'returned', '2023-05-28', '2023-05-16', '2023-05-28', 107, '9780735219113', 109),
('2023-05-21', 'returned', '2023-05-23', '2023-05-21', '2023-05-23', 108, '9780007113804', 108),
('2023-05-20', 'returned', '2023-05-31', '2023-05-21', '2023-05-31', 109, '9780735224292', 109),
('2023-05-15', 'returned', '2023-05-26', '2023-05-15', '2023-05-26', 110, '9780525501220', 110),
('2023-05-18', 'returned', '2023-05-29', '2023-05-19', '2023-05-29', 112, '9780307276650', 112),
('2023-05-20', 'declined', '2023-05-20', null, null, 1, '9780141393049', 108),
('2023-05-21', 'returned', '2023-05-31', '2023-05-22', '2023-05-31', 2, '9780062073563', 109),
('2023-05-19', 'returned', '2023-05-27', '2023-05-19', '2023-05-27', 4, '9780545010221', 110),
('2023-05-19', 'returned', '2023-05-30', '2023-05-19', '2023-05-30', 5, '9780307277712', 108),
('2023-05-20', 'returned', '2023-05-28', '2023-05-20', '2023-05-28', 9, '9781250178619', 109),
('2023-05-15', 'returned', '2023-05-27', '2023-05-15', '2023-05-27', 10, '9780141393049', 110),
('2023-05-22', 'returned', '2023-05-30', '2023-05-23', '2023-05-30', 12, '9780385720045', 110),
('2023-05-22', 'returned', '2023-05-28', '2023-05-22', '2023-05-28', 13, '9780544003415', 111),
('2023-05-15', 'returned', '2023-05-26', '2023-05-15', '2023-05-26', 15, '9781501168529', 108),
('2023-05-15', 'declined', '2023-05-15', null, null, 16, '9780525520375', 109),
('2023-05-16', 'returned', '2023-05-25', '2023-05-16', '2023-05-25', 17, '9780765326355', 110),
('2023-05-19', 'returned', '2023-05-25', '2023-05-19', '2023-05-25', 19, '9781400031702', 112),
('2023-05-21', 'returned', '2023-05-26', '2023-05-22', '2023-05-26', 21, '9780062073549', 109),
('2023-05-21', 'returned', '2023-05-30', '2023-05-22', '2023-05-30', 22, '9780684830421', 110),
('2023-05-20', 'returned', '2023-05-24', '2023-05-21', '2023-05-24', 23, '9780545010222', 111),
('2023-05-17', 'returned', '2023-05-24', '2023-05-17', '2023-05-24', 25, '9781982135848', 108),
('2023-05-17', 'returned', '2023-05-25', '2023-05-17', '2023-05-25', 27, '9780141439693', 110),
('2023-05-18', 'returned', '2023-05-30', '2023-05-19', '2023-05-30', 28, '9780007356348', 111),
('2023-05-20', 'returned', '2023-05-29', '2023-05-20', '2023-05-29', 29, '9781501168802', 112),
('2023-05-17', 'returned', '2023-05-31', '2023-05-18', '2023-05-31', 31, '9780316055436', 109),
('2023-05-15', 'returned', '2023-05-29', '2023-05-15', '2023-05-29', 33, '9780061120085', 111),
('2023-05-20', 'returned', '2023-05-29', '2023-05-21', '2023-05-29', 35, '9780099448792', 108),



('2022-01-04', 'returned', '2023-01-09', '2022-01-04', '2023-01-09', 104, '9780140433922', 69),
('2022-01-05', 'returned', '2023-01-08', '2022-01-05', '2023-01-08', 105, '9780385537856', 65),
('2022-01-03', 'returned', '2023-01-09', '2022-01-03', '2023-01-09', 107, '9780007136556', 91),
('2022-01-06', 'returned', '2023-01-11', '2022-01-06', '2023-01-11', 109, '9780399590504', 91),
('2022-01-07', 'returned', '2023-01-13', '2022-01-08', '2023-01-13', 111, '9780547928227', 65),
('2022-01-04', 'returned', '2023-01-12', '2022-01-04', '2023-01-12', 1, '9780486284736', 38),
('2022-01-01', 'returned', '2023-01-13', '2022-01-02', '2023-01-13', 2, '9780061120085', 91),
('2022-01-01', 'returned', '2023-01-14', '2022-01-02', '2023-01-14', 3, '9781400031702', 71),
('2022-01-01', 'returned', '2023-01-14', '2022-01-01', '2023-01-14', 4, '9781501160790', 69),
('2022-01-04', 'returned', '2023-01-10', '2022-01-04', '2023-01-10', 5, '9781416524793', 38),
('2022-01-02', 'returned', '2023-01-10', '2022-01-02', '2023-01-10', 9, '9780151010264', 91),
('2022-01-07', 'returned', '2023-01-11', '2022-01-07', '2023-01-11', 10, '9780385524282', 69),
('2022-01-04', 'returned', '2023-01-12', '2022-01-04', '2023-01-12', 12, '9780141187761', 69),
('2022-01-01', 'returned', '2023-01-11', '2022-01-01', '2023-01-11', 14, '9781501173219', 71),
('2022-01-05', 'returned', '2023-01-09', '2022-01-06', '2023-01-09', 15, '9780385524367', 38),
('2022-01-03', 'returned', '2023-01-11', '2022-01-04', '2023-01-11', 17, '9781616208684', 69),
('2022-01-01', 'returned', '2023-01-08', '2022-01-01', '2023-01-08', 19, '9781250142306', 71),
('2022-01-02', 'returned', '2023-01-09', '2022-01-03', '2023-01-09', 21, '9780486284736', 91),
('2022-01-01', 'returned', '2023-01-12', '2022-01-01', '2023-01-12', 23, '9780385349570', 65),
('2022-01-02', 'returned', '2023-01-15', '2022-01-03', '2023-01-15', 25, '9780439139601', 38),
('2022-01-16', 'returned', '2022-01-28', '2022-01-16', '2022-01-28', 37, '9780062073563', 71),
('2022-01-21', 'returned', '2022-01-24', '2022-01-21', '2022-01-24', 39, '9780525563235', 91),
('2022-01-16', 'returned', '2022-01-28', '2022-01-17', '2022-01-28', 41, '9780451169525', 91),
('2022-01-16', 'returned', '2022-01-30', '2022-01-17', '2022-01-30', 42, '9780062457714', 69),
('2022-01-22', 'returned', '2022-01-27', '2022-01-22', '2022-01-27', 43, '9781501178269', 65),
('2022-01-22', 'returned', '2022-01-24', '2022-01-22', '2022-01-24', 44, '9780679732259', 71),
('2022-01-17', 'returned', '2022-01-24', '2022-01-18', '2022-01-24', 46, '9780439554947', 91),
('2022-01-15', 'returned', '2022-01-31', '2022-01-16', '2022-01-31', 47, '9780141187761', 69),
('2022-01-20', 'returned', '2022-01-30', '2022-01-20', '2022-01-30', 49, '9780525520375', 71),
('2022-01-15', 'returned', '2022-01-24', '2022-01-16', '2022-01-24', 51, '9781616208684', 91),
('2022-01-17', 'returned', '2022-01-25', '2022-01-17', '2022-01-25', 52, '9780679735772', 69),
('2022-01-22', 'returned', '2022-01-25', '2022-01-23', '2022-01-25', 53, '9781616208684', 65),
('2022-01-15', 'returned', '2022-01-29', '2022-01-16', '2022-01-29', 55, '9780553448122', 38),
('2022-01-19', 'declined', '2022-01-19', null, null, 57, '9780385511213', 69),
('2022-01-22', 'returned', '2022-01-27', '2022-01-23', '2022-01-27', 59, '9780684833392', 71),
('2022-01-15', 'returned', '2022-01-28', '2022-01-16', '2022-01-28', 61, '9780679735772', 91),



('2022-02-06', 'returned', '2023-02-09', '2022-02-07', '2023-02-09', 80, '9780385542361', 38),
('2022-02-02', 'returned', '2023-02-12', '2022-02-03', '2023-02-12', 81, '9780140621195', 91),
('2022-02-02', 'returned', '2023-02-08', '2022-02-02', '2023-02-08', 82, '9780307278783', 69),
('2022-02-05', 'returned', '2023-02-10', '2022-02-06', '2023-02-10', 84, '9780062409867', 71),
('2022-02-01', 'returned', '2023-02-09', '2022-02-02', '2023-02-09', 86, '9780307278783', 91),
('2022-02-06', 'declined', '2022-02-06', null, null, 87, '9781449486792', 69),
('2022-02-07', 'returned', '2023-02-13', '2022-02-07', '2023-02-13', 89, '9780547928210', 71),
('2022-02-06', 'returned', '2023-02-13', '2022-02-06', '2023-02-13', 91, '9780062409867', 91),
('2022-02-03', 'returned', '2023-02-11', '2022-02-04', '2023-02-11', 92, '9780141187396', 69),
('2022-02-04', 'returned', '2023-02-08', '2022-02-04', '2023-02-08', 94, '9781616208684', 65),
('2022-02-06', 'returned', '2023-02-11', '2022-02-06', '2023-02-11', 95, '9780545010221', 71),
('2022-02-02', 'returned', '2023-02-13', '2022-02-03', '2023-02-13', 97, '9780385720953', 38),
('2022-02-02', 'returned', '2023-02-14', '2022-02-03', '2023-02-14', 99, '9780140433922', 69),
('2022-02-05', 'returned', '2023-02-11', '2022-02-06', '2023-02-11', 101, '9780140433922', 71),
('2022-02-04', 'returned', '2023-02-11', '2022-02-04', '2023-02-11', 103, '9780307276650', 91),
('2022-02-05', 'returned', '2023-02-11', '2022-02-06', '2023-02-11', 104, '9781416572366', 69),
('2022-02-04', 'returned', '2023-02-12', '2022-02-04', '2023-02-12', 105, '9780451524935', 65),
('2022-02-17', 'returned', '2022-02-25', '2022-02-17', '2022-02-25', 53, '9781982135848', 65),
('2022-02-20', 'returned', '2022-02-26', '2022-02-21', '2022-02-26', 54, '9780735224292', 71),
('2022-02-20', 'returned', '2022-02-25', '2022-02-20', '2022-02-25', 56, '9780735224292', 91),
('2022-02-21', 'declined', '2022-02-22', null, null, 58, '9780671035429', 65),
('2022-02-16', 'returned', '2022-02-25', '2022-02-16', '2022-02-25', 60, '9780399590504', 38),
('2022-02-20', 'returned', '2022-02-27', '2022-02-21', '2022-02-27', 61, '9780451176462', 91),
('2022-02-15', 'returned', '2022-02-26', '2022-02-15', '2022-02-26', 63, '9781501178269', 65),
('2022-02-15', 'returned', '2022-02-25', '2022-02-15', '2022-02-25', 65, '9780141185239', 65),
('2022-02-22', 'returned', '2022-02-26', '2022-02-22', '2022-02-26', 67, '9781250178619', 38),
('2022-02-19', 'returned', '2022-02-27', '2022-02-20', '2022-02-27', 69, '9780316055437', 69),



('2022-03-03', 'returned', '2023-03-09', '2022-03-04', '2023-03-09', 45, '9781501175565', 38),
('2022-03-06', 'returned', '2023-03-11', '2022-03-07', '2023-03-11', 47, '9780439358071', 69),
('2022-03-05', 'returned', '2023-03-10', '2022-03-06', '2023-03-10', 48, '9781501173218', 65),
('2022-03-04', 'returned', '2023-03-09', '2022-03-05', '2023-03-09', 49, '9780439554947', 71),
('2022-03-01', 'declined', '2022-03-02', null, null, 51, '9780525952662', 91),
('2022-03-05', 'returned', '2023-03-15', '2022-03-06', '2023-03-15', 52, '9780743273566', 69),
('2022-03-05', 'returned', '2023-03-10', '2022-03-05', '2023-03-10', 53, '9781416524793', 65),
('2022-03-03', 'returned', '2023-03-12', '2022-03-04', '2023-03-12', 55, '9780525520375', 38),
('2022-03-07', 'returned', '2023-03-12', '2022-03-08', '2023-03-12', 56, '9781476763954', 91),
('2022-03-03', 'returned', '2023-03-13', '2022-03-03', '2023-03-13', 57, '9780553448122', 69),
('2022-03-03', 'returned', '2023-03-10', '2022-03-04', '2023-03-10', 58, '9780553418026', 65),
('2022-03-03', 'returned', '2023-03-14', '2022-03-04', '2023-03-14', 59, '9781501142970', 71),
('2022-03-03', 'declined', '2022-03-03', null, null, 60, '9781250142306', 38),
('2022-03-02', 'returned', '2023-03-08', '2022-03-02', '2023-03-08', 63, '9781785654584', 65),
('2022-03-07', 'returned', '2023-03-11', '2022-03-07', '2023-03-11', 65, '9781416570868', 65),
('2022-03-02', 'returned', '2023-03-12', '2022-03-02', '2023-03-12', 67, '9781501175465', 38),
('2022-03-02', 'returned', '2023-03-09', '2022-03-03', '2023-03-09', 68, '9780061120085', 91),
('2022-03-06', 'returned', '2023-03-12', '2022-03-07', '2023-03-12', 69, '9780805094602', 69),
('2022-03-02', 'returned', '2023-03-10', '2022-03-03', '2023-03-10', 70, '9780394703955', 65),
('2022-03-01', 'returned', '2023-03-09', '2022-03-01', '2023-03-09', 71, '9780375718946', 71),
('2022-03-03', 'returned', '2023-03-14', '2022-03-04', '2023-03-14', 73, '9781250142306', 91),
('2022-03-02', 'returned', '2023-03-10', '2022-03-02', '2023-03-10', 75, '9781616208684', 38),
('2022-03-07', 'returned', '2023-03-11', '2022-03-08', '2023-03-11', 76, '9781501168529', 91),
('2022-03-05', 'returned', '2023-03-14', '2022-03-05', '2023-03-14', 77, '9780385349570', 69),
('2022-03-04', 'returned', '2023-03-11', '2022-03-04', '2023-03-11', 78, '9781501160806', 65),
('2022-03-04', 'returned', '2023-03-13', '2022-03-05', '2023-03-13', 80, '9780399590504', 38),
('2022-03-07', 'returned', '2023-03-08', '2022-03-07', '2023-03-08', 82, '9780399590504', 69),
('2022-03-07', 'returned', '2023-03-11', '2022-03-08', '2023-03-11', 84, '9780307277712', 71),
('2022-03-05', 'returned', '2023-03-12', '2022-03-05', '2023-03-12', 86, '9780307276650', 91),
('2022-03-01', 'returned', '2023-03-14', '2022-03-01', '2023-03-14', 87, '9780261103283', 69),
('2022-03-01', 'returned', '2023-03-10', '2022-03-02', '2023-03-10', 88, '9780345804358', 65),
('2022-03-02', 'declined', '2022-03-02', null, null, 89, '9780399590504', 71),
('2022-03-16', 'returned', '2022-03-26', '2022-03-16', '2022-03-26', 3, '9780062073501', 71),
('2022-03-15', 'returned', '2022-03-26', '2022-03-15', '2022-03-26', 5, '9780062073549', 38),
('2022-03-18', 'returned', '2022-03-24', '2022-03-19', '2022-03-24', 6, '9780544003415', 65),
('2022-03-16', 'returned', '2022-03-25', '2022-03-17', '2022-03-25', 8, '9781250142283', 38),
('2022-03-17', 'returned', '2022-03-25', '2022-03-18', '2022-03-25', 10, '9781501160769', 69),
('2022-03-15', 'returned', '2022-03-26', '2022-03-15', '2022-03-26', 12, '9780061120085', 69),
('2022-03-16', 'returned', '2022-03-26', '2022-03-16', '2022-03-26', 13, '9781476763954', 65),
('2022-03-16', 'returned', '2022-03-24', '2022-03-16', '2022-03-24', 15, '9780062255655', 38),
('2022-03-17', 'returned', '2022-03-25', '2022-03-17', '2022-03-25', 16, '9780684830507', 91),
('2022-03-21', 'returned', '2022-03-26', '2022-03-21', '2022-03-26', 17, '9780385720045', 69),
('2022-03-19', 'returned', '2022-03-27', '2022-03-20', '2022-03-27', 19, '9781416524793', 71),
('2022-03-21', 'returned', '2022-03-23', '2022-03-21', '2022-03-23', 20, '9781501160790', 38),
('2022-03-20', 'declined', '2022-03-21', null, null, 21, '9780141442464', 91),
('2022-03-18', 'returned', '2022-03-25', '2022-03-19', '2022-03-25', 23, '9781501168802', 65),
('2022-03-15', 'returned', '2022-03-25', '2022-03-15', '2022-03-25', 25, '9780735224292', 38),
('2022-03-16', 'returned', '2022-03-24', '2022-03-16', '2022-03-24', 26, '9780007113804', 91),
('2022-03-20', 'returned', '2022-03-23', '2022-03-20', '2022-03-23', 28, '9781501175466', 65),
('2022-03-17', 'returned', '2022-03-26', '2022-03-18', '2022-03-26', 30, '9780062073563', 38),
('2022-03-15', 'returned', '2022-03-26', '2022-03-16', '2022-03-26', 32, '9780141187761', 69),
('2022-03-15', 'returned', '2022-03-26', '2022-03-16', '2022-03-26', 33, '9781982135848', 65),
('2022-03-19', 'returned', '2022-03-24', '2022-03-19', '2022-03-24', 35, '9780451176462', 38),
('2022-03-16', 'returned', '2022-03-25', '2022-03-16', '2022-03-25', 36, '9780671035429', 65),
('2022-03-15', 'declined', '2022-03-16', null, null, 38, '9780385542361', 38),
('2022-03-15', 'declined', '2022-03-16', null, null, 40, '9780385349570', 69),
('2022-03-22', 'returned', '2022-03-25', '2022-03-22', '2022-03-25', 41, '9780684830421', 91),
('2022-03-15', 'returned', '2022-03-24', '2022-03-16', '2022-03-24', 42, '9780765326355', 69),
('2022-03-22', 'returned', '2022-03-25', '2022-03-23', '2022-03-25', 44, '9780547928203', 71),
('2022-03-19', 'returned', '2022-03-24', '2022-03-19', '2022-03-24', 45, '9780062073563', 38),
('2022-03-18', 'returned', '2022-03-25', '2022-03-19', '2022-03-25', 46, '9781594633940', 91),
('2022-03-19', 'returned', '2022-03-24', '2022-03-20', '2022-03-24', 48, '9780345804358', 65),
('2022-03-17', 'returned', '2022-03-24', '2022-03-17', '2022-03-24', 50, '9780684830506', 38),
('2022-03-16', 'returned', '2022-03-27', '2022-03-17', '2022-03-27', 51, '9780385537039', 91),
('2022-03-15', 'returned', '2022-03-24', '2022-03-15', '2022-03-24', 52, '9780141442464', 69),
('2022-03-17', 'returned', '2022-03-24', '2022-03-17', '2022-03-24', 54, '9781449486792', 71),
('2022-03-21', 'returned', '2022-03-24', '2022-03-21', '2022-03-24', 56, '9780805094619', 91),
('2022-03-17', 'returned', '2022-03-25', '2022-03-18', '2022-03-25', 57, '9780812987114', 69),
('2022-03-22', 'returned', '2022-03-25', '2022-03-22', '2022-03-25', 58, '9780684800715', 65),
('2022-03-16', 'returned', '2022-03-24', '2022-03-17', '2022-03-24', 59, '9781416572366', 71),
('2022-03-16', 'returned', '2022-03-24', '2022-03-16', '2022-03-24', 61, '9780684800715', 91),



('2022-04-02', 'returned', '2023-04-15', '2022-04-03', '2023-04-15', 13, '9780486284736', 65),
('2022-04-02', 'returned', '2023-04-10', '2022-04-02', '2023-04-10', 15, '9780007356348', 38),
('2022-04-05', 'returned', '2023-04-14', '2022-04-05', '2023-04-14', 16, '9780553418026', 91),
('2022-04-02', 'declined', '2022-04-03', null, null, 17, '9780062255655', 69),
('2022-04-04', 'returned', '2023-04-09', '2022-04-05', '2023-04-09', 18, '9780525478812', 65),
('2022-04-01', 'returned', '2023-04-12', '2022-04-01', '2023-04-12', 20, '9781416572366', 38),
('2022-04-04', 'returned', '2023-04-10', '2022-04-05', '2023-04-10', 21, '9780451524935', 91),
('2022-04-06', 'returned', '2023-04-14', '2022-04-07', '2023-04-14', 22, '9781501178269', 69),
('2022-04-05', 'returned', '2023-04-11', '2022-04-06', '2023-04-11', 23, '9780007136556', 65),
('2022-04-05', 'returned', '2023-04-12', '2022-04-06', '2023-04-12', 25, '9780525952662', 38),
('2022-04-05', 'returned', '2023-04-10', '2022-04-05', '2023-04-10', 26, '9780141397642', 91),
('2022-04-05', 'returned', '2023-04-13', '2022-04-06', '2023-04-13', 28, '9780141439518', 65),
('2022-04-01', 'returned', '2023-04-10', '2022-04-02', '2023-04-10', 30, '9780385542361', 38),
('2022-04-02', 'returned', '2023-04-10', '2022-04-02', '2023-04-10', 31, '9780385542361', 91),
('2022-04-07', 'returned', '2023-04-11', '2022-04-07', '2023-04-11', 32, '9780062457714', 69),
('2022-04-04', 'returned', '2023-04-12', '2022-04-05', '2023-04-12', 34, '9780545010222', 71),
('2022-04-03', 'returned', '2023-04-11', '2022-04-04', '2023-04-11', 35, '9780141442464', 38),
('2022-04-07', 'returned', '2023-04-12', '2022-04-08', '2023-04-12', 37, '9780735224292', 71),
('2022-04-06', 'declined', '2022-04-07', null, null, 39, '9780451524935', 91),
('2022-04-17', 'returned', '2022-04-24', '2022-04-17', '2022-04-24', 58, '9780061120085', 65),
('2022-04-16', 'returned', '2022-04-26', '2022-04-17', '2022-04-26', 60, '9780812987114', 38),
('2022-04-22', 'returned', '2022-04-24', '2022-04-23', '2022-04-24', 64, '9780545010221', 71),
('2022-04-19', 'returned', '2022-04-26', '2022-04-20', '2022-04-26', 66, '9781785654584', 71),
('2022-04-22', 'returned', '2022-04-23', '2022-04-22', '2022-04-23', 67, '9780439139601', 38),
('2022-04-19', 'declined', '2022-04-20', null, null, 70, '9781501105807', 65),
('2022-04-21', 'returned', '2022-04-26', '2022-04-21', '2022-04-26', 72, '9780525478812', 38),
('2022-04-16', 'returned', '2022-04-27', '2022-04-17', '2022-04-27', 74, '9780765377142', 69),
('2022-04-20', 'returned', '2022-04-24', '2022-04-21', '2022-04-24', 76, '9780141393049', 91),
('2022-04-20', 'returned', '2022-04-26', '2022-04-20', '2022-04-26', 77, '9780399590504', 69),
('2022-04-22', 'returned', '2022-04-24', '2022-04-23', '2022-04-24', 78, '9780062073600', 65),
('2022-04-15', 'returned', '2022-04-25', '2022-04-15', '2022-04-25', 80, '9780547928227', 38),
('2022-04-17', 'returned', '2022-04-26', '2022-04-18', '2022-04-26', 82, '9781250313072', 69),
('2022-04-15', 'returned', '2022-04-26', '2022-04-16', '2022-04-26', 83, '9781416572366', 65),
('2022-04-18', 'returned', '2022-04-26', '2022-04-18', '2022-04-26', 84, '9780061120085', 71),
('2022-04-18', 'returned', '2022-04-26', '2022-04-19', '2022-04-26', 86, '9781416572366', 91),
('2022-04-17', 'returned', '2022-04-25', '2022-04-18', '2022-04-25', 87, '9780451169525', 69),
('2022-04-21', 'returned', '2022-04-24', '2022-04-22', '2022-04-24', 88, '9780684830421', 65),
('2022-04-20', 'returned', '2022-04-26', '2022-04-21', '2022-04-26', 89, '9780545010221', 71),
('2022-04-18', 'returned', '2022-04-24', '2022-04-18', '2022-04-24', 91, '9780553448122', 91),
('2022-04-19', 'returned', '2022-04-26', '2022-04-19', '2022-04-26', 92, '9780765377142', 69),
('2022-04-15', 'returned', '2022-04-27', '2022-04-16', '2022-04-27', 93, '9780307276650', 65);

Insert into loan(request_date, loan_status, last_status_update, loan_date, return_date, user_id, ISBN, lib_admin_id)
values

('2023-05-26','overdue','2023-06-03','2023-05-27','2023-06-03',80,'9780747596461', 108),
('2023-05-26','overdue','2023-06-02','2023-05-26','2023-06-02',58,'9780385524367', 111),
('2023-05-26','overdue','2023-06-03','2023-05-27','2023-06-03',54,'9780062457714', 112),
('2023-05-22','overdue','2023-05-30','2023-05-23','2023-05-30',44,'9780062073501', 112),
('2023-05-22','overdue','2023-05-30','2023-05-23','2023-05-30',34,'9780684830507', 112),
('2023-05-26','overdue','2023-06-03','2023-05-27','2023-06-03',20,'9780385511213', 108);


Insert into loan(request_date, loan_status, last_status_update, loan_date, return_date, user_id, ISBN, lib_admin_id)
values


('2023-06-05', 'pending', '2023-06-05', NULL, NULL, 34, '9780007113804', 112),
('2023-06-04', 'loaned', '2023-06-04', '2023-06-04', '2023-06-11', 33, '9781501142970', 111),
('2023-06-06', 'pending', '2023-06-06', NULL, NULL, 32, '9780007356348', 110),
('2023-06-02', 'pending', '2023-06-02', NULL, NULL, 31, '9780061120084', 109),
('2023-06-01', 'pending', '2023-06-01', NULL, NULL, 30, '9780061120085', 108 ),
('2023-06-01', 'loaned', '2023-06-01', '2023-06-01', '2023-06-08', 29, '9781501142970', 112),
('2023-06-03', 'declined', '2023-06-03', NULL, NULL, 28, '9780062073501', 111),
('2023-06-04', 'pending', '2023-06-04', NULL, NULL, 27, '9780062073549', 110),
('2023-06-05', 'loaned', '2023-06-05', '2023-06-05', '2023-06-12', 26, '9780062073563', 109),
('2023-06-04', 'pending', '2023-06-04', NULL, NULL, 25, '9780062073564', 108),
('2023-06-01', 'pending', '2023-06-01', NULL, NULL, 24, '9780062073600', 112),
('2023-06-03', 'pending', '2023-06-03', NULL, NULL, 23, '9780062255655', 111),
('2023-06-06', 'pending', '2023-06-06', NULL, NULL, 22, '9780062409867', 110),
('2023-06-01', 'declined', '2023-06-02', NULL, NULL, 21, '9780062457714', 109),
('2023-06-04', 'pending', '2023-06-04', NULL, NULL, 20, '9780099448792', 108),
('2023-06-06', 'pending', '2023-06-06', NULL, NULL, 19, '9780099448793', 112),
('2023-06-04', 'pending', '2023-06-04', NULL, NULL, 18, '9780099458326', 111),
('2023-06-05', 'declined', '2023-06-06', NULL, NULL, 17, '9780099528988', 110),
('2023-06-02', 'pending', '2023-06-02', NULL, NULL, 16, '9780140433922', 109),
('2023-06-05', 'pending', '2023-06-05', NULL, NULL, 15, '9780140621195', 108),
('2023-06-06', 'pending', '2023-06-06', NULL, NULL, 14, '9780141185130', 112),
('2023-06-02', 'loaned', '2023-06-02', '2023-06-09', '2023-06-09', 13, '9780141185239', 111),
('2023-06-01', 'pending', '2023-06-01', NULL, NULL, 12, '9781501142970', 110),
('2023-06-05', 'pending', '2023-06-05', NULL, NULL, 11, '9780141187761', 109),
('2023-06-06', 'loaned', '2023-06-06', '2023-06-06', '2023-06-13', 10, '9780141198963', 110),
('2023-06-01', 'pending', '2023-06-01', NULL, NULL, 9, '9780141393049', 109),
('2023-06-03', 'declined', '2023-06-03', NULL, NULL, 8, '9780141397642', 108),
('2023-06-06', 'pending', '2023-06-06', NULL, NULL, 6, '9780141439693', 111),
('2023-06-03', 'pending', '2023-06-03', NULL, NULL, 5, '9780385524367', 108),
('2023-06-04', 'pending', '2023-06-04', NULL, NULL, 4, '9780143105428', 110),
('2023-06-02', 'pending', '2023-06-02', NULL, NULL, 3, '9780151010264', 112),
('2023-06-05', 'pending', '2023-06-05', NULL, NULL, 2, '9781501142970', 109),
('2023-06-06', 'pending', '2023-06-06', NULL, NULL, 1, '9780307276650', 108);

Insert into loan(request_date, loan_status, last_status_update, loan_date, return_date, user_id, ISBN, lib_admin_id)
values
('2023-06-04', 'loaned', '2023-06-04', '2023-06-04', '2023-06-11', 112, '9780307277712', 112),
('2023-06-01', 'loaned', '2023-06-01', '2023-06-01', '2023-06-08', 111, '9780307278783', 111),
('2023-06-03', 'approved', '2023-06-03', null, null, 110, '9780307588364', 110),
('2023-06-03', 'loaned', '2023-06-04', '2023-06-04', '2023-06-11', 109, '9781250313072', 109),
('2023-06-06', 'pending', '2023-06-06', null, null, 108, '9780316055437', 108),
('2023-06-01', 'loaned', '2023-06-02', '2023-06-02', '2023-06-09', 107, '9780316556347', 109),
('2023-06-04', 'pending', '2023-06-04', null, null, 106, '9780345804358', 108),
('2023-06-01', 'pending', '2023-06-01', null, null, 105, '9780375718946', 111),
('2023-06-05', 'loaned', '2023-06-05', '2023-06-05', '2023-06-12', 104, '9780385349570', 110),
('2023-06-01', 'pending', '2023-06-01', null, null, 103, '9780385511213', 109),
('2023-06-01', 'loaned', '2023-06-02', '2023-06-02', '2023-06-09', 102, '9781250313072', 108),
('2023-06-06', 'approved', '2023-06-06', null, null, 101, '9780385524367', 112),
('2023-06-05', 'loaned', '2023-06-06', '2023-06-06', '2023-06-13', 100, '9780385531204', 111),
('2023-06-05', 'pending', '2023-06-05', null, null, 99, '9780385537039', 110),
('2023-06-06', 'pending', '2023-06-06', null, null, 98, '9780385537855', 109),
('2023-06-05', 'pending', '2023-06-05', null, null, 97, '9780385537856', 108),
('2023-06-03', 'loaned', '2023-06-04', '2023-06-04', '2023-06-11', 96, '9780385542361', 112),
('2023-06-04', 'pending', '2023-06-04', null, null, 95, '9780385720045', 112),
('2023-06-02', 'pending', '2023-06-02', null, null, 94, '9780385720953', 111),
('2023-06-01', 'pending', '2023-06-01', null, null, 93, '9780394703955', 111),
('2023-06-02', 'loaned', '2023-06-03', '2023-06-03', '2023-06-10', 92, '9780399590504', 110),
('2023-06-03', 'loaned', '2023-06-04', '2023-06-04', '2023-06-11', 91, '9780439139601', 109),
('2023-06-04', 'approved', '2023-06-04', null, null, 90, '9780439358071', 108),
('2023-06-03', 'pending', '2023-06-03', null, null, 89, '9780439358072', 112),
('2023-06-03', 'approved', '2023-06-04', null, null, 88, '9780439554893', 111),
('2023-06-05', 'loaned', '2023-06-05', '2023-06-05', '2023-06-12', 87, '9780439554947', 110),
('2023-06-02', 'loaned', '2023-06-02', '2023-06-02', '2023-06-09', 86, '9780451169525', 109),
('2023-06-06', 'loaned', '2023-06-07', '2023-06-07', '2023-06-14', 85, '9780451176462', 108),
('2023-06-01', 'pending', '2023-06-01', null, null, 84, '9780451524935', 112),
('2023-06-03', 'pending', '2023-06-03', null, null, 83, '9780486284736', 111),
('2023-06-02', 'pending', '2023-06-02', null, null, 82, '9780525478812', 110),
('2023-06-06', 'pending', '2023-06-06', null, null, 81, '9780525501220', 109),
('2023-06-05', 'declined', '2023-06-05', null, null, 80, '9780525520375', 108);

Insert into loan(request_date, loan_status, last_status_update, loan_date, return_date, user_id, ISBN, lib_admin_id)
values
('2023-06-03', 'loaned', '2023-06-04', '2023-06-04', '2023-06-11', 79, '9781501142970', 112),
('2023-06-01', 'pending', '2023-06-01', null, null, 78, '9780525952662', 111),
('2023-06-06', 'pending', '2023-06-06', null, null, 77, '9780544003415', 110),
('2023-06-05', 'loaned', '2023-06-06', '2023-06-06', '2023-06-13', 76, '9780545010221', 109),
('2023-06-06', 'loaned', '2023-06-06', '2023-06-06', '2023-06-13', 75, '9780545010222', 108),
('2023-06-04', 'loaned', '2023-06-04', '2023-06-04', '2023-06-11', 74, '9780547928203', 110),
('2023-06-05', 'declined', '2023-06-06', null, null, 73, '9780547928210', 109),
('2023-06-01', 'pending', '2023-06-01', null, null, 72, '9780547928227', 108),
('2023-06-04', 'declined', '2023-06-04', null, null, 71, '9780553418026', 112),
('2023-06-02', 'loaned', '2023-06-02', '2023-06-02', '2023-06-09', 70, '9780385524367', 111),
('2023-06-05', 'loaned', '2023-06-05', '2023-06-05', '2023-06-12', 69, '9780553448123', 110),
('2023-06-02', 'approved', '2023-06-02', null, null, 68, '9780385524367', 109),
('2023-06-06', 'loaned', '2023-06-07', '2023-06-07', '2023-06-14', 67, '9780671035429', 108),
('2023-06-04', 'pending', '2023-06-04', null, null, 66, '9780671039755', 112),
('2023-06-02', 'pending', '2023-06-02', null, null, 65, '9780679732259', 111),
('2023-06-01', 'pending', '2023-06-01', null, null, 64, '9780679733730', 112),
('2023-06-03', 'pending', '2023-06-03', null, null, 63, '9780679735772', 111),
('2023-06-02', 'pending', '2023-06-02', null, null, 62, '9780679750536', 110),
('2023-06-03', 'pending', '2023-06-03', null, null, 61, '9780684800715', 109),
('2023-06-02', 'loaned', '2023-06-02', '2023-06-02', '2023-06-09', 60, '9780684801469', 108),
('2023-06-04', 'pending', '2023-06-04', null, null, 59, '9780684801520', 112),
('2023-06-05', 'declined', '2023-06-05', null, null, 58, '9780684830421', 111),
('2023-06-03', 'pending', '2023-06-03', null, null, 57, '9780684830506', 110),
('2023-06-06', 'pending', '2023-06-06', null, null, 56, '9780684830507', 109),
('2023-06-01', 'pending', '2023-06-01', null, null, 55, '9780684833392', 108),
('2023-06-01', 'declined', '2023-06-01', null, null, 54, '9780735219113', 112),
('2023-06-04', 'loaned', '2023-06-05', '2023-06-05', '2023-06-12', 53, '9780735224292', 111),
('2023-06-02', 'loaned', '2023-06-03', '2023-06-03', '2023-06-10', 52, '9780743273565', 110),
('2023-06-03', 'loaned', '2023-06-03', '2023-06-03', '2023-06-10', 51, '9780743273566', 109),
('2023-06-03', 'pending', '2023-06-03', null, null, 50, '9780747596461', 108),
('2023-06-03', 'pending', '2023-06-03', null, null, 49, '9780765326355', 112),
('2023-06-01', 'loaned', '2023-06-02', '2023-06-02', '2023-06-09', 48, '9781609455739', 111),
('2023-06-06', 'loaned', '2023-06-07', '2023-06-07', '2023-06-14', 47, '9780805094602', 110),
('2023-06-04', 'loaned', '2023-06-05', '2023-06-05', '2023-06-12', 46, '9780805094619', 109),
('2023-06-01', 'approved', '2023-06-02', null, null, 45, '9780812987114', 108),
('2023-06-06', 'declined', '2023-06-07', null, null, 44, '9780812988406', 112),
('2023-06-06', 'pending', '2023-06-06', null, null, 43, '9780857521353', 111),
('2023-06-02', 'loaned', '2023-06-02', '2023-06-02', '2023-06-09', 42, '9780385524367', 110);

Insert into loan(request_date, loan_status, last_status_update, loan_date, return_date, user_id, ISBN, lib_admin_id)
values
('2023-06-02', 'reserved', '2023-06-03', NULL, NULL, 35, '9781250313072', 108),
('2023-06-01', 'reserved', '2023-06-02', NULL, NULL, 41, '9781250313072', 109),
('2023-06-03', 'reserved', '2023-06-05', NULL, NULL, 42, '9781250313072', 110),
('2023-06-03', 'reserved', '2023-06-05', NULL, NULL, 43, '9780385524367', 111),
('2023-06-02', 'reserved', '2023-06-03', NULL, NULL, 45, '9781501142970', 108),
('2023-06-03', 'reserved', '2023-06-05', NULL, NULL, 46, '9780385524367', 109),
('2023-06-03', 'reserved', '2023-06-05', NULL, NULL, 47, '9781501142970', 110),
('2023-06-02', 'reserved', '2023-06-04', NULL, NULL, 48, '9780385524367', 111),
('2023-06-01', 'reserved', '2023-06-03', NULL, NULL, 49, '9780385524367', 112),
('2023-06-02', 'reserved', '2023-06-04', NULL, NULL, 50, '9781501142970', 108),
('2023-06-03', 'reserved', '2023-06-05', NULL, NULL, 51, '9781501142970', 109),
('2023-06-03', 'reserved', '2023-06-05', NULL, NULL, 52, '9780385524367', 110),
('2023-06-01', 'reserved', '2023-06-02', NULL, NULL, 53, '9781250313072', 111),
('2023-06-02', 'reserved', '2023-06-03', NULL, NULL, 55, '9781501142970', 108),
('2023-06-01', 'reserved', '2023-06-02', NULL, NULL, 56, '9780385524367', 109),
('2023-06-01', 'reserved', '2023-06-02', NULL, NULL, 57, '9780385524367', 110),
('2023-06-02', 'reserved', '2023-06-03', NULL, NULL, 59, '9781501142970', 112),
('2023-06-02', 'reserved', '2023-06-04', NULL, NULL, 60, '9781250313072', 108),
('2023-06-03', 'reserved', '2023-06-04', NULL, NULL, 61, '9781250313072', 109),
('2023-06-02', 'reserved', '2023-06-04', NULL, NULL, 62, '9781501142970', 110),
('2023-06-02', 'reserved', '2023-06-04', NULL, NULL, 63, '9780385524367', 111),
('2023-06-03', 'reserved', '2023-06-04', NULL, NULL, 64, '9781501142970', 112),
('2023-06-02', 'reserved', '2023-06-03', NULL, NULL, 75, '9780385524367', 108),
('2023-06-01', 'reserved', '2023-06-02', NULL, NULL, 76, '9781501142970', 109),
('2023-06-03', 'reserved', '2023-06-04', NULL, NULL, 77, '9781501142970', 110),
('2023-06-01', 'reserved', '2023-06-03', NULL, NULL, 78, '9780385524367', 111),
('2023-06-02', 'reserved', '2023-06-03', NULL, NULL, 79, '9780385524367', 112),
('2023-06-02', 'reserved', '2023-06-03', NULL, NULL, 81, '9781501142970', 109),
('2023-06-02', 'reserved', '2023-06-03', NULL, NULL, 82, '9781250313072', 110),
('2023-06-01', 'reserved', '2023-06-03', NULL, NULL, 83, '9781250313072', 111),
('2023-06-02', 'reserved', '2023-06-04', NULL, NULL, 84, '9780385524367', 112),
('2023-06-01', 'reserved', '2023-06-03', NULL, NULL, 85, '9780385524367', 108),
('2023-06-02', 'reserved', '2023-06-04', NULL, NULL, 86, '9781250313072', 109),
('2023-06-03', 'reserved', '2023-06-04', NULL, NULL, 87, '9781250313072', 110),
('2023-06-01', 'reserved', '2023-06-03', NULL, NULL, 88, '9780385524367', 111),
('2023-06-02', 'reserved', '2023-06-04', NULL, NULL, 89, '9780385524367', 112),
('2023-06-02', 'reserved', '2023-06-04', NULL, NULL, 90, '9780385524367', 108),
('2023-06-01', 'reserved', '2023-06-02', NULL, NULL, 91, '9781501142970', 109),
('2023-06-02', 'reserved', '2023-06-04', NULL, NULL, 92, '9780385524367', 110),
('2023-06-01', 'reserved', '2023-06-03', NULL, NULL, 93, '9781250313072', 111),
('2023-06-03', 'reserved', '2023-06-05', NULL, NULL, 94, '9781250313072', 111),
('2023-06-02', 'reserved', '2023-06-03', NULL, NULL, 95, '9780385524367', 112),
('2023-06-03', 'reserved', '2023-06-04', NULL, NULL, 96, '9780385524367', 112),
('2023-06-01', 'reserved', '2023-06-03', NULL, NULL, 97, '9780385524367', 108),
('2023-06-03', 'reserved', '2023-06-05', NULL, NULL, 98, '9781501142970', 109),
('2023-06-02', 'reserved', '2023-06-03', NULL, NULL, 99, '9781250313072', 110),
('2023-06-03', 'reserved', '2023-06-05', NULL, NULL, 100, '9781501142970', 111);

Insert into applications(user_id, request)
values
(1, 'library admin'), (36, 'library admin'), (65, 'library admin');


update users set approved='yes';








