import 'package:flutter/material.dart';
import 'package:foundationx/core/models/models.dart';

class EnglishData {
  static final SubjectModel subject = SubjectModel(
    id: 'english',
    name: 'English',
    emoji: '📖',
    icon: Icons.menu_book_rounded,
    color: Colors.purple,
    lightColor: Colors.purple,
    totalLessons: 25,
    completedLessons: 0,
    description: 'Develop grammar, writing, reading and communication skills.',
    topics: topics,
  );

  static final List<TopicModel> topics = [
    TopicModel(
      id: 'eng_01',
      order: 1,
      title: 'Parts of Speech',
      description: 'Nouns, verbs, adjectives and more.',
    ),

    TopicModel(
      id: 'eng_02',
      order: 2,
      title: 'Sentence Structure',
      description: 'Constructing meaningful sentences.',
    ),

    TopicModel(
      id: 'eng_03',
      order: 3,
      title: 'Tenses',
      description: 'Past, present and future tense.',
    ),

    TopicModel(
      id: 'eng_04',
      order: 4,
      title: 'Pronouns',
      description: 'Replacing nouns correctly.',
    ),

    TopicModel(
      id: 'eng_05',
      order: 5,
      title: 'Punctuation',
      description: 'Using punctuation marks properly.',
    ),

    TopicModel(
      id: 'eng_06',
      order: 6,
      title: 'Capitalization',
      description: 'Rules for capital letters.',
    ),

    TopicModel(
      id: 'eng_07',
      order: 7,
      title: 'Vocabulary',
      description: 'Expanding your word knowledge.',
    ),

    TopicModel(
      id: 'eng_08',
      order: 8,
      title: 'Synonyms and Antonyms',
      description: 'Words with similar and opposite meanings.',
    ),

    TopicModel(
      id: 'eng_09',
      order: 9,
      title: 'Comprehension',
      description: 'Reading and understanding passages.',
    ),

    TopicModel(
      id: 'eng_10',
      order: 10,
      title: 'Summary Writing',
      description: 'Writing concise summaries.',
    ),

    TopicModel(
      id: 'eng_11',
      order: 11,
      title: 'Essay Writing',
      description: 'Writing organized essays.',
    ),

    TopicModel(
      id: 'eng_12',
      order: 12,
      title: 'Letter Writing',
      description: 'Formal and informal letters.',
    ),

    TopicModel(
      id: 'eng_13',
      order: 13,
      title: 'Speech Writing',
      description: 'Preparing effective speeches.',
    ),

    TopicModel(
      id: 'eng_14',
      order: 14,
      title: 'Direct and Indirect Speech',
      description: 'Reporting conversations correctly.',
    ),

    TopicModel(
      id: 'eng_15',
      order: 15,
      title: 'Active and Passive Voice',
      description: 'Changing sentence voice.',
    ),

    TopicModel(
      id: 'eng_16',
      order: 16,
      title: 'Figures of Speech',
      description: 'Understanding literary devices.',
    ),

    TopicModel(
      id: 'eng_17',
      order: 17,
      title: 'Poetry',
      description: 'Reading and appreciating poems.',
    ),

    TopicModel(
      id: 'eng_18',
      order: 18,
      title: 'Drama',
      description: 'Understanding dramatic texts.',
    ),

    TopicModel(
      id: 'eng_19',
      order: 19,
      title: 'Novel Study',
      description: 'Analyzing novels and characters.',
    ),

    TopicModel(
      id: 'eng_20',
      order: 20,
      title: 'Listening Skills',
      description: 'Understanding spoken English.',
    ),

    TopicModel(
      id: 'eng_21',
      order: 21,
      title: 'Speaking Skills',
      description: 'Confident verbal communication.',
    ),

    TopicModel(
      id: 'eng_22',
      order: 22,
      title: 'Idioms and Proverbs',
      description: 'Common expressions and meanings.',
    ),

    TopicModel(
      id: 'eng_23',
      order: 23,
      title: 'Spelling',
      description: 'Correct spelling techniques.',
    ),

    TopicModel(
      id: 'eng_24',
      order: 24,
      title: 'Grammar Revision',
      description: 'Review of key grammar concepts.',
    ),

    TopicModel(
      id: 'eng_25',
      order: 25,
      title: 'Final Revision',
      description: 'Complete English review.',
    ),
  ];

  static final List<LessonModel> lessons = [
    LessonModel(
  id: 'eng_l1',
  title: 'Introduction to Parts of Speech',
  subjectId: 'english',
  topicTag: 'Parts of Speech',
  explanation:
      'Parts of speech are categories of words based on how they are used in a sentence.',
  detailedContent: '''
Every word in the English language belongs to a particular group called a part of speech. These groups help us understand the role each word plays in communication.

The eight main parts of speech are:

• Noun – Names a person, place, thing or idea.
Examples: teacher, Kigali, happiness

• Pronoun – Replaces a noun.
Examples: he, she, they, it

• Verb – Shows an action or state of being.
Examples: run, write, is

• Adjective – Describes a noun.
Examples: beautiful, tall, blue

• Adverb – Describes a verb, adjective or another adverb.
Examples: quickly, carefully, very

• Preposition – Shows the relationship between words.
Examples: on, under, beside

• Conjunction – Joins words or sentences.
Examples: and, but, because

• Interjection – Expresses emotion.
Examples: Wow!, Ouch!, Hurray!

Understanding parts of speech helps learners write grammatically correct and meaningful sentences.
''',
  keyPoints: [
    'There are eight main parts of speech.',
    'Each word has a specific function.',
    'Knowing parts of speech improves grammar.',
    'Every sentence contains different parts of speech.',
  ],
  durationMinutes: 12,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l2',
  title: 'Identifying Parts of Speech',
  subjectId: 'english',
  topicTag: 'Parts of Speech',
  explanation:
      'Learn how to recognize the different parts of speech in sentences.',
  detailedContent: '''
To identify parts of speech, ask simple questions about each word.

Who or what?
→ Usually a noun.

What is happening?
→ Usually the verb.

Which one?
→ Usually an adjective.

How?
→ Usually an adverb.

Example:

"The clever student answered quickly."

The = Article
clever = Adjective
student = Noun
answered = Verb
quickly = Adverb

Practice identifying words by reading short sentences and deciding the job each word performs.
''',
  keyPoints: [
    'Identify the noun first.',
    'Find the action word (verb).',
    'Look for describing words.',
    'Practice with many sentences.',
  ],
  durationMinutes: 14,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l3',
  title: 'Types of Sentences',
  subjectId: 'english',
  topicTag: 'Sentence Structure',
  explanation:
      'Sentences are grouped according to the purpose they serve.',
  detailedContent: '''
A sentence is a group of words that expresses a complete thought. Every sentence begins with a capital letter and ends with the correct punctuation mark.

There are four main types of sentences:

• Declarative Sentence
Makes a statement.
Example:
The students are studying.

• Interrogative Sentence
Asks a question.
Example:
Where do you live?

• Imperative Sentence
Gives a command or instruction.
Example:
Please close the door.

• Exclamatory Sentence
Expresses strong emotion.
Example:
What a beautiful day!

Knowing sentence types helps you communicate clearly and use punctuation correctly.
''',
  keyPoints: [
    'A sentence expresses a complete thought.',
    'Every sentence begins with a capital letter.',
    'Declarative sentences make statements.',
    'Interrogative sentences ask questions.',
    'Imperative sentences give commands.',
    'Exclamatory sentences express emotion.',
  ],
  durationMinutes: 12,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l4',
  title: 'Building Correct Sentences',
  subjectId: 'english',
  topicTag: 'Sentence Structure',
  explanation:
      'A correct sentence must have a subject and a predicate.',
  detailedContent: '''
Every complete sentence contains two important parts.

Subject
The subject tells who or what the sentence is about.

Predicate
The predicate tells what the subject does or what happens.

Example:

The boy plays football.

Subject:
The boy

Predicate:
plays football

A good sentence should:

• Begin with a capital letter.
• End with the correct punctuation.
• Express one complete idea.
• Contain a subject and a predicate.

Incorrect:
Running very fast.

Correct:
The athlete is running very fast.
''',
  keyPoints: [
    'Every sentence needs a subject.',
    'Every sentence needs a predicate.',
    'Use correct punctuation.',
    'Avoid sentence fragments.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l5',
  title: 'Present Tense',
  subjectId: 'english',
  topicTag: 'Tenses',
  explanation:
      'The present tense describes actions that happen now or regularly.',
  detailedContent: '''
Tense tells us when an action happens. The present tense is used for actions happening now, habits, routines, and general truths.

There are four forms of the present tense:

• Simple Present
Used for habits and facts.
Example:
She walks to school every day.

• Present Continuous
Used for actions happening now.
Example:
She is walking to school.

• Present Perfect
Used for actions completed recently or with present importance.
Example:
She has finished her homework.

• Present Perfect Continuous
Shows an action that began in the past and is still continuing.
Example:
She has been reading for two hours.

The present tense is one of the most commonly used tenses in everyday communication.
''',
  keyPoints: [
    'Present tense describes current actions and habits.',
    'Simple present expresses routines.',
    'Present continuous shows actions happening now.',
    'Present perfect links the past with the present.',
  ],
  durationMinutes: 14,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l6',
  title: 'Past and Future Tenses',
  subjectId: 'english',
  topicTag: 'Tenses',
  explanation:
      'Past tense describes completed actions while future tense describes actions yet to happen.',
  detailedContent: '''
The past tense tells about actions that have already happened.

Examples:
I visited my grandmother yesterday.
They played football last weekend.

The future tense tells about actions that will happen later.

Examples:
We will travel tomorrow.
She is going to become a doctor.

Different forms include:

• Simple Past
• Past Continuous
• Past Perfect
• Simple Future
• Future Continuous

Time words such as yesterday, last week, tomorrow, and next year help identify the correct tense.

Choosing the correct tense makes writing clear and accurate.
''',
  keyPoints: [
    'Past tense describes completed actions.',
    'Future tense describes upcoming actions.',
    'Time words help identify the correct tense.',
    'Use the correct verb form for each tense.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l7',
  title: 'Types of Pronouns',
  subjectId: 'english',
  topicTag: 'Pronouns',
  explanation:
      'Pronouns replace nouns to avoid unnecessary repetition in sentences.',
  detailedContent: '''
A pronoun is a word that takes the place of a noun. Instead of repeating the same noun many times, pronouns make our speech and writing smoother.

Example:

Sarah is reading a book.
Sarah likes the book.

This can be improved to:

Sarah is reading a book.
She likes it.

Common types of pronouns include:

• Personal Pronouns
Examples: I, you, he, she, it, we, they

• Possessive Pronouns
Examples: mine, yours, his, hers, ours, theirs

• Demonstrative Pronouns
Examples: this, that, these, those

• Interrogative Pronouns
Examples: who, whom, whose, which, what

• Relative Pronouns
Examples: who, whom, whose, which, that

Using the correct pronoun makes communication clear and avoids repetition.
''',
  keyPoints: [
    'Pronouns replace nouns.',
    'They make sentences less repetitive.',
    'There are different types of pronouns.',
    'Choose pronouns that agree with the noun they replace.',
  ],
  durationMinutes: 13,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l8',
  title: 'Using Pronouns Correctly',
  subjectId: 'english',
  topicTag: 'Pronouns',
  explanation:
      'Pronouns should correctly match the nouns they replace in number and gender.',
  detailedContent: '''
A pronoun must clearly refer to the correct noun.

Examples:

John is absent because he is sick.
"The pronoun he refers to John."

The girls finished their assignment.
"The pronoun their refers to the girls."

Incorrect:
Mary told Jane that she was late.
(The pronoun "she" is unclear.)

Correct:
Mary told Jane, "You are late."
OR
Mary was late when she met Jane.

Pronouns should agree with their nouns in:

• Number
Singular noun → singular pronoun
Plural noun → plural pronoun

• Gender
Male → he, him, his
Female → she, her, hers
Object/Animal → it

Clear pronoun use prevents confusion for the reader.
''',
  keyPoints: [
    'Pronouns must agree with the nouns they replace.',
    'Avoid unclear pronoun references.',
    'Match singular nouns with singular pronouns.',
    'Match plural nouns with plural pronouns.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l9',
  title: 'Common Punctuation Marks',
  subjectId: 'english',
  topicTag: 'Punctuation',
  explanation:
      'Punctuation marks make writing clear, organized, and easy to understand.',
  detailedContent: '''
Punctuation marks are symbols used in writing to separate ideas and show meaning.

The most common punctuation marks are:

• Full Stop (.)
Ends a statement.
Example:
The students are studying.

• Comma (,)
Separates items in a list or parts of a sentence.
Example:
I bought books, pens, pencils, and rulers.

• Question Mark (?)
Ends a direct question.
Example:
Where do you live?

• Exclamation Mark (!)
Shows strong feelings or excitement.
Example:
What a wonderful surprise!

• Colon (:)
Introduces a list or explanation.
Example:
Bring the following: books, pens, and paper.

• Semicolon (;)
Joins closely related independent clauses.
Example:
The exam was difficult; everyone studied hard.

• Quotation Marks (" ")
Show the exact words spoken by someone.
Example:
She said, "Practice every day."

Using punctuation correctly helps readers understand your ideas clearly.
''',
  keyPoints: [
    'A full stop ends a statement.',
    'A comma separates items or ideas.',
    'A question mark ends a question.',
    'An exclamation mark shows emotion.',
    'Quotation marks show direct speech.',
  ],
  durationMinutes: 14,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l10',
  title: 'Using Punctuation Correctly',
  subjectId: 'english',
  topicTag: 'Punctuation',
  explanation:
      'Correct punctuation improves the meaning and readability of sentences.',
  detailedContent: '''
Punctuation can completely change the meaning of a sentence.

Compare:

Let's eat, Grandma!
Let's eat Grandma!

The comma changes the meaning entirely.

Some important punctuation rules:

• Begin every sentence with a capital letter.

• End statements with a full stop.

• End questions with a question mark.

• Use commas to separate items in a series.

• Place quotation marks around the exact words someone says.

Examples:

Correct:
Mary, John, and Peter went home.

Correct:
"Where are you going?" asked the teacher.

Correct punctuation makes writing professional and easier to understand.
''',
  keyPoints: [
    'Punctuation affects meaning.',
    'Always use the correct ending punctuation.',
    'Use commas in lists.',
    'Quotation marks are used for direct speech.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l11',
  title: 'Rules of Capitalization',
  subjectId: 'english',
  topicTag: 'Capitalization',
  explanation:
      'Capitalization is the use of uppercase letters in the correct places.',
  detailedContent: '''
Capitalization makes writing clear and follows the standard rules of English grammar.

Always use a capital letter in the following situations:

• At the beginning of every sentence.
Example:
The sun is shining.

• For people's names.
Example:
Grace, David, Amina

• For countries, cities and continents.
Example:
Rwanda, Kigali, Africa

• For days, months and holidays.
Example:
Monday, July, Christmas

• For the pronoun "I".
Example:
I enjoy reading books.

• For languages and nationalities.
Example:
English, French, Kenyan

• For titles placed before names.
Example:
President Kagame
Mrs Smith
Dr Johnson

Correct capitalization makes your writing professional and easier to read.
''',
  keyPoints: [
    'Begin every sentence with a capital letter.',
    'Capitalize proper nouns.',
    'Capitalize days, months and holidays.',
    'Always capitalize the pronoun "I".',
  ],
  durationMinutes: 13,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l12',
  title: 'Common Capitalization Mistakes',
  subjectId: 'english',
  topicTag: 'Capitalization',
  explanation:
      'Learn to recognize and correct common capitalization errors.',
  detailedContent: '''
Many writing mistakes happen because of incorrect capitalization.

Incorrect:
i live in rwanda.

Correct:
I live in Rwanda.

Incorrect:
my birthday is in june.

Correct:
My birthday is in June.

Incorrect:
we study english every day.

Correct:
We study English every day.

Remember:

• Common nouns are not capitalized unless they begin a sentence.
Example:
teacher
school
book

• Proper nouns are always capitalized.
Example:
Lake Kivu
Mount Kenya
University of Rwanda

Proofreading your work helps you find capitalization mistakes before submitting it.
''',
  keyPoints: [
    'Capitalize proper nouns only.',
    'Do not capitalize common nouns unnecessarily.',
    'Check the beginning of every sentence.',
    'Proofread your writing for mistakes.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
  xpReward: 100,
), 
    LessonModel(
  id: 'eng_l13',
  title: 'Building Vocabulary',
  subjectId: 'english',
  topicTag: 'Vocabulary',
  explanation:
      'Vocabulary is the collection of words a person knows and uses.',
  detailedContent: '''
Vocabulary refers to all the words a person understands and uses when speaking, reading, and writing.

Having a wide vocabulary helps you:

• Understand books and articles more easily.
• Express your ideas clearly.
• Improve your speaking and writing.
• Perform better in examinations.

Ways to build your vocabulary include:

• Reading books, newspapers, and magazines.
• Looking up unfamiliar words in a dictionary.
• Learning one or two new words every day.
• Practicing new words in conversations and writing.

Example:

Word: Generous
Meaning: Willing to share or give.
Sentence:
The generous woman donated books to the school.

Learning vocabulary is a gradual process that improves with regular practice.
''',
  keyPoints: [
    'Vocabulary is the collection of words you know.',
    'Reading regularly improves vocabulary.',
    'Use a dictionary to learn new words.',
    'Practice using new words in sentences.',
  ],
  durationMinutes: 14,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l14',
  title: 'Using New Words Correctly',
  subjectId: 'english',
  topicTag: 'Vocabulary',
  explanation:
      'Knowing a word is important, but using it correctly is even more important.',
  detailedContent: '''
Learning new words is only useful if you know how to use them correctly.

Whenever you learn a new word:

• Learn its meaning.
• Learn how to pronounce it.
• Learn its spelling.
• Use it in a sentence.

Example:

Word: Courage

Meaning:
The ability to face danger or difficulty without fear.

Sentence:
The firefighter showed great courage during the rescue.

Another example:

Word: Brilliant

Meaning:
Very intelligent or extremely bright.

Sentence:
She is a brilliant student.

Practice using new vocabulary every day to become a confident English speaker and writer.
''',
  keyPoints: [
    'Learn meaning, spelling and pronunciation.',
    'Practice using new words in sentences.',
    'Repeated practice improves vocabulary.',
    'Context helps remember new words.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l15',
  title: 'Understanding Synonyms',
  subjectId: 'english',
  topicTag: 'Synonyms and Antonyms',
  explanation:
      'Synonyms are words that have the same or nearly the same meaning.',
  detailedContent: '''
Synonyms are words that have similar meanings. They help make your writing more interesting and prevent repeating the same word too often.

Examples:

Happy → Joyful
Big → Large
Fast → Quick
Begin → Start
Smart → Intelligent

Instead of writing:

The big dog chased the big cat.

You can write:

The large dog chased the small cat.

Using synonyms improves both speaking and writing by making language richer and more varied.

When choosing a synonym, always consider the context because words with similar meanings are not always interchangeable.

Example:

Tiny and little have similar meanings, but one may sound more suitable than the other depending on the sentence.
''',
  keyPoints: [
    'Synonyms have similar meanings.',
    'They reduce unnecessary repetition.',
    'They improve writing quality.',
    'Choose synonyms that fit the context.',
  ],
  durationMinutes: 14,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l16',
  title: 'Understanding Antonyms',
  subjectId: 'english',
  topicTag: 'Synonyms and Antonyms',
  explanation:
      'Antonyms are words with opposite meanings.',
  detailedContent: '''
Antonyms are words that have opposite meanings.

Examples:

Hot ↔ Cold
Tall ↔ Short
Old ↔ Young
Open ↔ Close
Success ↔ Failure

Knowing antonyms helps you compare ideas and understand vocabulary more clearly.

Example:

The road is wide.
The path is narrow.

Another example:

The exam was easy.
The next exam was difficult.

Learning both synonyms and antonyms expands your vocabulary and helps you express ideas more accurately.
''',
  keyPoints: [
    'Antonyms have opposite meanings.',
    'They help compare ideas.',
    'Learning opposites improves vocabulary.',
    'Practice using antonyms in sentences.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l17',
  title: 'Reading for Understanding',
  subjectId: 'english',
  topicTag: 'Comprehension',
  explanation:
      'Comprehension is the ability to read a passage and understand its meaning.',
  detailedContent: '''
Reading comprehension means understanding what you read rather than simply saying the words.

Good readers are able to:

• Identify the main idea.
• Find important details.
• Understand unfamiliar words from context.
• Draw conclusions from the information given.

Example Passage:

Every morning, Sarah wakes up early to water the flowers in her garden before going to school. She believes caring for plants teaches responsibility and patience.

From this passage we learn that:
• Sarah waters her flowers every morning.
• She does this before going to school.
• She believes gardening teaches responsibility.

To improve comprehension:

• Read slowly and carefully.
• Pay attention to important details.
• Think about what each paragraph is saying.
• Read the passage again if necessary.

Understanding what you read is one of the most important English skills.
''',
  keyPoints: [
    'Comprehension means understanding what you read.',
    'Identify the main idea.',
    'Look for supporting details.',
    'Read carefully before answering questions.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l18',
  title: 'Answering Comprehension Questions',
  subjectId: 'english',
  topicTag: 'Comprehension',
  explanation:
      'Learn how to answer questions based on a reading passage.',
  detailedContent: '''
When answering comprehension questions, always use information from the passage.

Common question types include:

• Who?
Example:
Who watered the flowers?

Answer:
Sarah.

• What?
Example:
What did Sarah do every morning?

Answer:
She watered the flowers.

• When?
Example:
When did she water the flowers?

Answer:
Before going to school.

• Why?
Example:
Why did Sarah enjoy gardening?

Answer:
She believed it taught responsibility and patience.

Tips:

• Read every question carefully.
• Look back at the passage before answering.
• Do not guess if the answer can be found in the text.
• Support your answers using information from the passage.

Good comprehension skills improve performance in all school subjects.
''',
  keyPoints: [
    'Read the questions carefully.',
    'Find answers directly from the passage.',
    'Use evidence from the text.',
    'Review the passage before answering.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l19',
  title: 'What is Summary Writing?',
  subjectId: 'english',
  topicTag: 'Summary Writing',
  explanation:
      'A summary is a short version of a longer passage that contains only the main ideas.',
  detailedContent: '''
Summary writing is the process of reducing a long piece of writing into a shorter version while keeping its main ideas.

A good summary:

• Includes only the important points.
• Leaves out unnecessary details and examples.
• Uses your own words whenever possible.
• Is much shorter than the original passage.
• Maintains the original meaning.

Example:

Original:
Every Saturday, John wakes up early, cleans his room, washes his clothes, helps his parents in the garden, and later plays football with his friends.

Summary:
John spends Saturdays helping at home before playing football.

Notice that the summary keeps only the important information.

Summary writing helps students study faster and understand information better.
''',
  keyPoints: [
    'A summary contains only the main ideas.',
    'Leave out unnecessary details.',
    'Use your own words.',
    'Keep the original meaning.',
  ],
  durationMinutes: 15,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l20',
  title: 'Steps to Write a Good Summary',
  subjectId: 'english',
  topicTag: 'Summary Writing',
  explanation:
      'Follow simple steps to write clear and accurate summaries.',
  detailedContent: '''
Writing a good summary becomes easier when you follow these steps.

Step 1:
Read the passage carefully.

Step 2:
Identify the main idea.

Step 3:
Underline the important supporting points.

Step 4:
Ignore examples, repeated ideas, and unnecessary details.

Step 5:
Write the summary in your own words.

Example:

Passage:
Trees provide oxygen, give shade, prevent soil erosion, and provide homes for many animals.

Summary:
Trees are important because they benefit both people and the environment.

Always read your summary after writing it to ensure it is clear, accurate, and concise.
''',
  keyPoints: [
    'Read carefully before writing.',
    'Identify the main idea.',
    'Remove unnecessary details.',
    'Write clearly using your own words.',
  ],
  durationMinutes: 15,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l21',
  title: 'Introduction to Essay Writing',
  subjectId: 'english',
  topicTag: 'Essay Writing',
  explanation:
      'An essay is a piece of writing that explains, describes, or discusses a topic.',
  detailedContent: '''
Essay writing is an important skill used in school examinations and everyday communication.

An essay allows you to express your ideas in an organized way.

A good essay has three main parts:

Introduction
The introduction introduces the topic and captures the reader's attention.

Body
The body contains the main ideas. Each paragraph should discuss one idea and include supporting details.

Conclusion
The conclusion summarizes the essay and gives a final thought.

Example Structure:

Introduction
"My favorite hobby is reading because it helps me learn new ideas."

Body Paragraph 1
Explain why you enjoy reading.

Body Paragraph 2
Describe what kinds of books you like.

Conclusion
Summarize why reading is an important hobby.

Every essay should stay focused on the topic and follow a logical order.
''',
  keyPoints: [
    'Every essay has an introduction.',
    'The body develops the main ideas.',
    'The conclusion summarizes the essay.',
    'Ideas should be presented in a logical order.',
  ],
  durationMinutes: 16,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l22',
  title: 'Writing Effective Essays',
  subjectId: 'english',
  topicTag: 'Essay Writing',
  explanation:
      'Good essays are clear, organized, and easy to understand.',
  detailedContent: '''
Writing a good essay requires planning.

Before writing:

• Understand the question carefully.
• Brainstorm your ideas.
• Arrange your ideas into paragraphs.

During writing:

• Begin with an interesting introduction.
• Develop each idea in its own paragraph.
• Use linking words such as "first," "next," "however," and "finally."

After writing:

• Check spelling and grammar.
• Correct punctuation mistakes.
• Make sure every paragraph supports the topic.

Example Essay Topic:

"The Importance of Education"

Possible points:

• Education provides knowledge.
• It creates opportunities.
• It helps people solve problems.
• It contributes to national development.

Planning before writing produces stronger essays and improves examination performance.
''',
  keyPoints: [
    'Plan before writing.',
    'Use clear paragraphs.',
    'Support ideas with examples.',
    'Proofread before submitting.',
  ],
  durationMinutes: 16,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l23',
  title: 'Formal and Informal Letters',
  subjectId: 'english',
  topicTag: 'Letter Writing',
  explanation:
      'Letters are written messages used to communicate with other people.',
  detailedContent: '''
Letter writing is an important communication skill. There are two main types of letters.

1. Formal Letters

Formal letters are written to people you do not know personally or to organizations.

Examples:
• School principal
• Company manager
• Government office
• Bank

Formal letters should be polite and professional.

Structure of a formal letter:

• Sender's address
• Date
• Receiver's address
• Salutation (Dear Sir/Madam)
• Subject (optional)
• Body
• Closing (Yours faithfully)
• Signature

2. Informal Letters

Informal letters are written to people you know well.

Examples:
• Friends
• Parents
• Brothers and sisters
• Cousins

Informal letters use friendly language.

Structure of an informal letter:

• Sender's address
• Date
• Greeting (Dear John,)
• Body
• Closing (Your friend, Love, Best wishes)
• Signature

Always choose the correct type of letter depending on who will receive it.
''',
  keyPoints: [
    'There are formal and informal letters.',
    'Formal letters use professional language.',
    'Informal letters use friendly language.',
    'Each type follows a specific structure.',
  ],
  durationMinutes: 16,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l24',
  title: 'Writing Effective Letters',
  subjectId: 'english',
  topicTag: 'Letter Writing',
  explanation:
      'Good letters are clear, organized, and appropriate for the reader.',
  detailedContent: '''
Before writing a letter, think about:

• Who are you writing to?
• Why are you writing?
• What information should you include?

Formal Letter Example:

Dear Sir,

I am writing to request permission to participate in the science competition.

Thank you for your consideration.

Yours faithfully,
James

Informal Letter Example:

Dear Sarah,

How are you? I hope you are doing well. I wanted to tell you about my school trip last week. It was exciting and I learned many new things.

Best wishes,
Mary

Tips for good letter writing:

• Be clear and polite.
• Organize ideas into paragraphs.
• Use correct punctuation and grammar.
• End the letter with an appropriate closing.
''',
  keyPoints: [
    'Know your audience before writing.',
    'Use the correct format.',
    'Write clearly and politely.',
    'Proofread before sending.',
  ],
  durationMinutes: 16,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l25',
  title: 'Introduction to Speech Writing',
  subjectId: 'english',
  topicTag: 'Speech Writing',
  explanation:
      'A speech is a prepared talk delivered to an audience for a specific purpose.',
  detailedContent: '''
Speech writing involves preparing ideas that will be presented to listeners.

Unlike essays, speeches are meant to be spoken aloud. Therefore, they should be simple, clear, and engaging.

The basic structure of a speech is:

1. Greeting
Welcome the audience politely.

Example:
• Good morning, teachers and fellow students.
• Ladies and gentlemen.

2. Introduction
Introduce yourself if necessary and state your topic.

Example:
Today I would like to speak about the importance of protecting the environment.

3. Body
Present your main ideas clearly. Each paragraph should explain one point with examples.

4. Conclusion
Summarize your message and thank the audience.

Example:
Thank you for listening.

A good speech has one clear purpose and keeps the audience interested from beginning to end.
''',
  keyPoints: [
    'A speech is written to be spoken.',
    'Begin with an appropriate greeting.',
    'State your topic clearly.',
    'Finish with a memorable conclusion.',
  ],
  durationMinutes: 16,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l26',
  title: 'Delivering an Effective Speech',
  subjectId: 'english',
  topicTag: 'Speech Writing',
  explanation:
      'Good speeches are not only well written but also well delivered.',
  detailedContent: '''
After writing a speech, practice is very important.

Tips for delivering a speech:

• Speak clearly and loudly enough.
• Maintain eye contact with your audience.
• Stand confidently.
• Avoid reading every word from your paper.
• Use appropriate gestures and facial expressions.
• Pause after important points.
• Speak at a moderate pace.

Example Speech Topic:

"The Importance of Reading"

Main points:
• Reading improves vocabulary.
• Reading increases knowledge.
• Reading develops imagination.
• Reading improves academic performance.

The best speeches are clear, confident, and easy for the audience to follow.
''',
  keyPoints: [
    'Practice before speaking.',
    'Speak clearly and confidently.',
    'Maintain eye contact.',
    'Use gestures naturally.',
  ],
  durationMinutes: 16,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l27',
  title: 'Understanding Direct and Indirect Speech',
  subjectId: 'english',
  topicTag: 'Direct and Indirect Speech',
  explanation:
      'Direct speech repeats a speaker’s exact words, while indirect speech reports what was said.',
  detailedContent: '''
Direct speech gives the exact words spoken by a person. Quotation marks (" ") are used.

Example:
Mary said, "I am going to school."

Indirect speech reports what someone said without using the exact words. Quotation marks are not used.

Example:
Mary said that she was going to school.

When changing direct speech to indirect speech, several changes may occur:

• Pronouns may change.
• Verb tenses may change.
• Words showing time and place may also change.

Examples:

Direct:
John said, "I like football."

Indirect:
John said that he liked football.

Direct:
The teacher said, "Complete your homework."

Indirect:
The teacher instructed the students to complete their homework.

Understanding both forms helps us report conversations accurately.
''',
  keyPoints: [
    'Direct speech uses quotation marks.',
    'Indirect speech reports what someone said.',
    'Pronouns and tenses may change.',
    'Quotation marks are removed in indirect speech.',
  ],
  durationMinutes: 16,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l28',
  title: 'Changing Direct Speech to Indirect Speech',
  subjectId: 'english',
  topicTag: 'Direct and Indirect Speech',
  explanation:
      'Learn the basic rules for converting direct speech into indirect speech.',
  detailedContent: '''
To change direct speech into indirect speech:

1. Remove quotation marks.

2. Add words like "that" when appropriate.

3. Change pronouns where necessary.

4. Change the tense if the reporting verb is in the past.

Examples:

Direct:
Sarah said, "I am tired."

Indirect:
Sarah said that she was tired.

Direct:
David said, "We will travel tomorrow."

Indirect:
David said that they would travel the following day.

Common time changes:

today → that day

tomorrow → the following day

yesterday → the previous day

now → then

here → there

Practice these rules regularly to become confident in reported speech.
''',
  keyPoints: [
    'Remove quotation marks.',
    'Change pronouns when necessary.',
    'Change time expressions correctly.',
    'Practice converting sentences.',
  ],
  durationMinutes: 16,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l29',
  title: 'Understanding Active and Passive Voice',
  subjectId: 'english',
  topicTag: 'Active and Passive Voice',
  explanation:
      'Sentences can be written in either active voice or passive voice depending on the focus.',
  detailedContent: '''
Voice refers to the relationship between the subject and the action in a sentence.

There are two types of voice:

1. Active Voice

In active voice, the subject performs the action.

Structure:
Subject + Verb + Object

Examples:

• Mary baked a cake.
• The students completed the assignment.
• The dog chased the cat.

Active voice is usually clearer and more direct.

2. Passive Voice

In passive voice, the subject receives the action.

Structure:
Object + form of "be" + past participle + by + subject

Examples:

• A cake was baked by Mary.
• The assignment was completed by the students.
• The cat was chased by the dog.

Sometimes the person performing the action is unknown or unimportant.

Example:

The classroom was cleaned.

Here, we do not know who cleaned it.

Both voices are correct, but active voice is generally preferred because it is easier to understand.
''',
  keyPoints: [
    'Active voice shows the subject performing the action.',
    'Passive voice shows the subject receiving the action.',
    'Passive voice uses a form of "be" and a past participle.',
    'Active voice is usually clearer.',
  ],
  durationMinutes: 16,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l30',
  title: 'Changing Between Active and Passive Voice',
  subjectId: 'english',
  topicTag: 'Active and Passive Voice',
  explanation:
      'Learn how to convert sentences from active voice to passive voice and back.',
  detailedContent: '''
To change an active sentence into a passive sentence:

Step 1:
Move the object to the beginning.

Step 2:
Use the correct form of the verb "be."

Step 3:
Use the past participle of the main verb.

Step 4:
Add "by" followed by the original subject if necessary.

Examples:

Active:
The teacher explained the lesson.

Passive:
The lesson was explained by the teacher.

Active:
The chef prepared the meal.

Passive:
The meal was prepared by the chef.

Some passive sentences do not include "by" because the performer is not important.

Example:

The school was built in 1998.

Practice identifying the subject, verb, and object before changing the sentence.

This makes converting between voices much easier.
''',
  keyPoints: [
    'Identify the subject, verb, and object first.',
    'Move the object to the beginning.',
    'Use the correct form of "be".',
    'Use the past participle of the verb.',
  ],
  durationMinutes: 16,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l31',
  title: 'Introduction to Figures of Speech',
  subjectId: 'english',
  topicTag: 'Figures of Speech',
  explanation:
      'Figures of speech make language more interesting, vivid and expressive.',
  detailedContent: '''
Figures of speech are special ways of using words to create stronger meaning or imagery.

Writers and speakers use figures of speech to make their language more enjoyable and memorable.

Some common figures of speech include:

1. Simile
A simile compares two things using "like" or "as."

Examples:
• She is as brave as a lion.
• He runs like the wind.

2. Metaphor
A metaphor compares two things without using "like" or "as."

Examples:
• Time is money.
• Her smile is sunshine.

3. Personification
Personification gives human qualities to animals or objects.

Examples:
• The wind whispered through the trees.
• The sun smiled at us.

4. Hyperbole
Hyperbole is deliberate exaggeration.

Examples:
• I have told you a million times.
• This bag weighs a ton.

Figures of speech help readers imagine ideas more clearly and make communication more effective.
''',
  keyPoints: [
    'Figures of speech make language expressive.',
    'Similes use "like" or "as".',
    'Metaphors compare directly.',
    'Personification gives human qualities to non-human things.',
    'Hyperbole uses exaggeration.',
  ],
  durationMinutes: 17,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l32',
  title: 'Common Figures of Speech',
  subjectId: 'english',
  topicTag: 'Figures of Speech',
  explanation:
      'Learn to identify and use common figures of speech correctly.',
  detailedContent: '''
Besides similes and metaphors, there are many other figures of speech.

Alliteration
The repetition of the same beginning sound in nearby words.

Example:
• Peter Piper picked peppers.

Irony
When what happens is different from what is expected.

Example:
A fire station burns down.

Onomatopoeia
Words that imitate sounds.

Examples:
• Buzz
• Bang
• Splash
• Meow

Oxymoron
Two opposite words used together.

Examples:
• Deafening silence
• Bitter sweet

Using figures of speech correctly improves creative writing, speeches, poems, and stories.

Always think about the meaning behind the words rather than taking them literally.
''',
  keyPoints: [
    'Alliteration repeats beginning sounds.',
    'Irony contrasts expectation and reality.',
    'Onomatopoeia imitates sounds.',
    'Oxymoron joins opposite ideas.',
    'Figures of speech should not always be interpreted literally.',
  ],
  durationMinutes: 17,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l33',
  title: 'Introduction to Poetry',
  subjectId: 'english',
  topicTag: 'Poetry',
  explanation:
      'Poetry is a form of literature that expresses ideas, emotions and experiences through carefully chosen words.',
  detailedContent: '''
Poetry is a type of writing that uses rhythm, sound, imagery, and emotion to communicate ideas.

Unlike ordinary writing, poems often have special structures and patterns.

Common features of poetry include:

1. Line
A single row of words in a poem.

2. Stanza
A group of lines, similar to a paragraph in prose.

3. Rhyme
Words that end with the same or similar sounds.

Example:
• Cat
• Hat
• Mat

4. Rhythm
The pattern of stressed and unstressed syllables that gives poetry its musical quality.

Poets use these features to make poems enjoyable and memorable.

Poetry can tell stories, express feelings, describe nature, or share important messages.
''',
  keyPoints: [
    'Poetry expresses thoughts and emotions.',
    'A line is one row of a poem.',
    'A stanza is a group of lines.',
    'Rhyme creates similar ending sounds.',
    'Rhythm gives poems their musical flow.',
  ],
  durationMinutes: 17,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l34',
  title: 'Poetic Devices and Poem Analysis',
  subjectId: 'english',
  topicTag: 'Poetry',
  explanation:
      'Learn how poets use language creatively and how to analyse poems.',
  detailedContent: '''
Poets use different literary devices to make poems more meaningful.

Imagery
Uses descriptive language that appeals to the senses.

Example:
"The golden sun warmed the green fields."

Repetition
Repeating words or phrases for emphasis.

Symbolism
Using an object or image to represent a deeper meaning.

Example:
A dove may symbolize peace.

Tone
The poet's attitude towards the subject.

Theme
The main message or lesson of the poem.

When analysing a poem, ask yourself:

• What is the poem about?
• What emotions does it create?
• Which poetic devices are used?
• What message is the poet trying to communicate?

Reading poems carefully helps improve comprehension and appreciation of literature.
''',
  keyPoints: [
    'Imagery creates mental pictures.',
    'Repetition emphasizes important ideas.',
    'Symbols represent deeper meanings.',
    'Tone shows the poet’s attitude.',
    'Theme is the main message of the poem.',
  ],
  durationMinutes: 18,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l35',
  title: 'Introduction to Drama',
  subjectId: 'english',
  topicTag: 'Drama',
  explanation:
      'Drama is literature that is written to be performed by actors before an audience.',
  detailedContent: '''
Drama is a form of literature that tells a story through dialogue and action rather than narration.

A drama is also called a play.

The people who perform a play are called actors, while the person who writes it is called a playwright.

The main elements of drama include:

1. Characters
The people in the story.

2. Dialogue
The conversations between characters.

3. Setting
The place and time where the play happens.

4. Plot
The sequence of events in the play.

5. Conflict
The problem or challenge faced by the characters.

Drama is divided into acts and scenes.

An act is a major section of the play, while a scene is a smaller part that usually changes when the setting or characters change.

Drama is meant to be watched as well as read, making it different from novels and poetry.
''',
  keyPoints: [
    'Drama is written to be performed.',
    'A playwright writes a play.',
    'Dialogue is conversation between characters.',
    'Plays are divided into acts and scenes.',
    'Conflict drives the story.',
  ],
  durationMinutes: 17,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l36',
  title: 'Stage Directions and Characterization',
  subjectId: 'english',
  topicTag: 'Drama',
  explanation:
      'Learn how stage directions guide performances and how characters are developed.',
  detailedContent: '''
Stage directions are instructions written by the playwright.

They tell actors how to move, speak, or behave during a performance.

Examples include:

• Enter
• Exit
• Smiles
• Walks slowly
• (Laughing)

These instructions are usually written in brackets or italics.

Characterization is the way a writer develops a character.

Characters may be:

• Main characters
• Supporting characters
• Heroes
• Villains

Writers reveal character through:

• Dialogue
• Actions
• Thoughts
• Appearance
• Interactions with others

Understanding characters helps readers understand the message of the play.

When studying drama, pay attention to both what characters say and what they do.
''',
  keyPoints: [
    'Stage directions guide actors.',
    'They are not spoken aloud.',
    'Characterization develops personalities.',
    'Characters are revealed through words and actions.',
    'Drama combines dialogue with performance.',
  ],
  durationMinutes: 18,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l37',
  title: 'Understanding Novels',
  subjectId: 'english',
  topicTag: 'Novel Study',
  explanation:
      'A novel is a long fictional story with characters, settings, and a plot.',
  detailedContent: '''
A novel is a lengthy work of fiction that tells a complete story. Unlike short stories, novels usually contain several chapters and provide detailed descriptions of characters and events.

The main elements of a novel include:

1. Plot
The sequence of events from beginning to end.

2. Characters
The people who take part in the story.

3. Setting
The time and place where the story happens.

4. Conflict
The main problem that drives the story.

5. Theme
The central message or lesson of the novel.

As you read a novel, pay attention to how characters change and how events are connected. Good readers make predictions, ask questions, and think about the author's purpose.

Reading novels improves vocabulary, comprehension, creativity, and critical thinking skills.
''',
  keyPoints: [
    'A novel is a long fictional story.',
    'Every novel has a plot, characters, and setting.',
    'Conflict creates interest in the story.',
    'Theme is the main message.',
    'Reading novels develops comprehension skills.',
  ],
  durationMinutes: 18,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l38',
  title: 'Analysing a Novel',
  subjectId: 'english',
  topicTag: 'Novel Study',
  explanation:
      'Learn how to analyse characters, themes, and events in a novel.',
  detailedContent: '''
Novel analysis helps readers understand stories more deeply.

When analysing a novel, ask the following questions:

• Who are the main characters?
• What problems do they face?
• How do they change throughout the story?
• What lessons can be learned?

Characterization explains how an author develops characters through their actions, speech, thoughts, and relationships.

Authors also use literary devices such as symbolism, foreshadowing, and flashbacks to make stories more engaging.

Always support your answers with evidence from the novel instead of personal opinions.

Careful analysis helps readers appreciate both the story and the writer's techniques.
''',
  keyPoints: [
    'Analyse characters and their development.',
    'Identify the main conflict.',
    'Determine the theme of the novel.',
    'Support answers using evidence.',
    'Literary devices enrich storytelling.',
  ],
  durationMinutes: 18,
 difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l39',
  title: 'Active Listening',
  subjectId: 'english',
  topicTag: 'Listening Skills',
  explanation:
      'Active listening means paying full attention to what is being said and understanding the message.',
  detailedContent: '''
Listening is one of the four basic language skills, alongside speaking, reading, and writing.

Active listening involves concentrating on the speaker instead of simply hearing the words.

Good listeners:
• Maintain eye contact.
• Avoid interrupting.
• Listen with an open mind.
• Think about the speaker's message.
• Ask questions when necessary.

There are different types of listening:

1. Informational Listening
Listening to learn new information.

2. Critical Listening
Listening to evaluate ideas and arguments.

3. Appreciative Listening
Listening for enjoyment, such as music or stories.

Good listening improves communication, learning, and relationships.
''',
  keyPoints: [
    'Listening is an important communication skill.',
    'Active listening requires full attention.',
    'Do not interrupt the speaker.',
    'Different situations require different types of listening.',
    'Good listening improves understanding.',
  ],
  durationMinutes: 17,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l40',
  title: 'Listening for Information',
  subjectId: 'english',
  topicTag: 'Listening Skills',
  explanation:
      'Learn how to identify important information while listening.',
  detailedContent: '''
Effective listeners identify the main ideas and supporting details.

Useful listening strategies include:

• Taking brief notes.
• Identifying key words.
• Listening for facts and opinions.
• Following spoken instructions carefully.
• Asking for clarification when something is unclear.

Sometimes speakers include unnecessary information. Good listeners learn to focus on the important points.

Listening examinations often require students to answer questions based on spoken passages.

Practice listening regularly through conversations, speeches, news reports, and educational videos.

The more you practice listening, the better your comprehension becomes.
''',
  keyPoints: [
    'Identify the main idea.',
    'Listen for supporting details.',
    'Take brief notes.',
    'Ask for clarification when necessary.',
    'Practice listening regularly.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l41',
  title: 'Effective Speaking',
  subjectId: 'english',
  topicTag: 'Speaking Skills',
  explanation:
      'Speaking is the ability to express ideas clearly, confidently, and appropriately.',
  detailedContent: '''
Speaking is one of the four language skills. It allows us to communicate ideas, opinions, and feelings.

Good speaking involves more than simply talking. It requires clear pronunciation, confidence, and careful organization of ideas.

Characteristics of effective speakers include:

1. Clear pronunciation
Words should be spoken correctly and clearly.

2. Appropriate volume
Speak loudly enough to be heard without shouting.

3. Good pace
Avoid speaking too fast or too slowly.

4. Confidence
Maintain eye contact and speak with assurance.

5. Courtesy
Use polite language and respect your audience.

Effective speaking helps during class discussions, presentations, interviews, and everyday conversations.
''',
  keyPoints: [
    'Speaking is an essential communication skill.',
    'Clear pronunciation improves understanding.',
    'Maintain an appropriate speaking pace.',
    'Confidence makes communication more effective.',
    'Always speak respectfully.',
  ],
  durationMinutes: 17,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l42',
  title: 'Public Speaking and Presentations',
  subjectId: 'english',
  topicTag: 'Speaking Skills',
  explanation:
      'Learn techniques for delivering confident speeches and presentations.',
  detailedContent: '''
Public speaking is the act of addressing an audience.

Many people feel nervous when speaking in public, but preparation and practice help build confidence.

Before giving a presentation:

• Understand your topic.
• Organize your ideas logically.
• Practice several times.
• Prepare examples if needed.

During the presentation:

• Make eye contact.
• Speak clearly.
• Use appropriate gestures.
• Avoid reading directly from notes.
• Pause briefly between important ideas.

After speaking, listen carefully to questions and answer them politely.

Strong speaking skills improve leadership, teamwork, and academic performance.
''',
  keyPoints: [
    'Prepare before speaking.',
    'Organize ideas logically.',
    'Maintain eye contact.',
    'Speak clearly and confidently.',
    'Answer questions respectfully.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l43',
  title: 'Understanding Idioms',
  subjectId: 'english',
  topicTag: 'Idioms and Proverbs',
  explanation:
      'Idioms are expressions whose meanings cannot be understood from the individual words.',
  detailedContent: '''
An idiom is a group of words with a special meaning that is different from the literal meaning of the words.

For example:
• "Break the ice" means to begin a conversation and make people feel comfortable.
• "Hit the nail on the head" means to say exactly the right thing.
• "Once in a blue moon" means something that happens very rarely.
• "Piece of cake" means something very easy.
• "Under the weather" means feeling ill.

Idioms make speech and writing more interesting. They are commonly used in conversations, books, newspapers, and speeches.

When learning idioms, focus on understanding their meanings rather than translating each word literally.

Reading widely and practising conversations will help you become familiar with common idioms.
''',
  keyPoints: [
    'Idioms have figurative meanings.',
    'Their meanings are different from the literal words.',
    'Idioms make language more expressive.',
    'Learn the meaning of each idiom as a whole.',
    'Practice using idioms in context.',
  ],
  durationMinutes: 17,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l44',
  title: 'Understanding Proverbs',
  subjectId: 'english',
  topicTag: 'Idioms and Proverbs',
  explanation:
      'Proverbs are short, wise sayings that teach important life lessons.',
  detailedContent: '''
A proverb is a short saying that expresses wisdom or gives advice.

Unlike idioms, proverbs usually teach a moral lesson.

Examples include:

• "Actions speak louder than words."
Meaning: What people do is more important than what they say.

• "Practice makes perfect."
Meaning: Improvement comes through repeated effort.

• "A stitch in time saves nine."
Meaning: Solving a problem early prevents bigger problems later.

• "Honesty is the best policy."
Meaning: Being truthful is always the best choice.

• "Where there is a will, there is a way."
Meaning: Determination helps people succeed.

Understanding proverbs helps learners appreciate literature and communicate more effectively.

Many cultures have their own unique proverbs, but the lessons they teach are often universal.
''',
  keyPoints: [
    'Proverbs teach wisdom or advice.',
    'Most proverbs contain moral lessons.',
    'Proverbs differ from idioms.',
    'Learn both the wording and the meaning.',
    'Use proverbs appropriately in writing and speech.',
  ],
  durationMinutes: 18,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l45',
  title: 'Improving Your Spelling',
  subjectId: 'english',
  topicTag: 'Spelling',
  explanation:
      'Correct spelling makes your writing clear, accurate, and professional.',
  detailedContent: '''
Spelling is the correct arrangement of letters in a word.

Correct spelling is important because it helps readers understand your message without confusion.

Common causes of spelling mistakes include:
• Poor pronunciation.
• Typing too quickly.
• Confusing similar words.
• Lack of reading practice.

Some useful spelling strategies are:

1. Read regularly.
Reading exposes you to correctly spelled words.

2. Learn word patterns.
For example:
- receive
- deceive
- believe

3. Break long words into smaller parts.
Example:
un-believ-able

4. Use dictionaries.
Always check unfamiliar words.

5. Proofread your work.
Read your writing carefully before submitting it.

Good spelling improves communication in school, exams, and everyday life.
''',
  keyPoints: [
    'Correct spelling improves communication.',
    'Reading regularly improves spelling.',
    'Learn common spelling patterns.',
    'Use a dictionary when unsure.',
    'Always proofread your work.',
  ],
  durationMinutes: 17,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l46',
  title: 'Commonly Misspelled Words',
  subjectId: 'english',
  topicTag: 'Spelling',
  explanation:
      'Learn to recognize and correctly spell frequently confused words.',
  detailedContent: '''
Many English words are commonly misspelled.

Examples include:

Correct → Incorrect

• Separate → Seperate
• Necessary → Neccessary
• Environment → Enviroment
• Beginning → Begining
• Because → Becuase
• Friend → Freind
• Accommodation → Accomodation
• Government → Goverment

Words that sound alike may also cause confusion.

Examples:

• Their – belonging to them
• There – a place
• They're – they are

Regular practice, reading, and writing help improve spelling accuracy.

Learning the meanings of words also makes correct spelling easier to remember.
''',
  keyPoints: [
    'Some English words are commonly misspelled.',
    'Learn the difference between similar words.',
    'Practice spelling regularly.',
    'Understand word meanings.',
    'Proofreading helps catch mistakes.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l47',
  title: 'Review of English Grammar',
  subjectId: 'english',
  topicTag: 'Grammar Revision',
  explanation:
      'Revise the major grammar concepts learned throughout the English course.',
  detailedContent: '''
Grammar is the system of rules that governs how words are used to form meaningful sentences.

Throughout this course, you have studied many grammar topics, including:

• Parts of Speech
Nouns, pronouns, verbs, adjectives, adverbs, prepositions, conjunctions, and interjections.

• Sentence Structure
Simple, compound, and complex sentences.

• Tenses
Present, past, and future tenses.

• Punctuation
Correct use of commas, full stops, quotation marks, apostrophes, and question marks.

• Capitalization
Using capital letters correctly.

• Direct and Indirect Speech
Reporting another person's words.

• Active and Passive Voice
Changing the focus of a sentence while keeping the meaning.

Understanding how these grammar rules work together helps improve speaking, reading, and writing.

Regular revision strengthens grammar skills and reduces common mistakes.
''',
  keyPoints: [
    'Grammar consists of rules for using language correctly.',
    'Review all major grammar topics regularly.',
    'Practice improves grammar accuracy.',
    'Grammar supports effective communication.',
    'Revision prepares learners for examinations.',
  ],
  durationMinutes: 18,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l48',
  title: 'Common Grammar Mistakes',
  subjectId: 'english',
  topicTag: 'Grammar Revision',
  explanation:
      'Identify and avoid the grammar mistakes learners make most often.',
  detailedContent: '''
Many grammar mistakes occur because learners rush or forget grammar rules.

Common mistakes include:

1. Subject-Verb Agreement
Incorrect:
She walk to school.

Correct:
She walks to school.

2. Incorrect Tense
Incorrect:
Yesterday I go home.

Correct:
Yesterday I went home.

3. Incorrect Pronouns
Incorrect:
Me and John played football.

Correct:
John and I played football.

4. Run-on Sentences
Incorrect:
I was tired I continued studying.

Correct:
I was tired, but I continued studying.

5. Misplaced Punctuation
Incorrect:
Lets eat Grandma.

Correct:
Let's eat, Grandma.

Reading your work carefully helps identify and correct grammar mistakes before submission.
''',
  keyPoints: [
    'Check subject-verb agreement.',
    'Use the correct tense.',
    'Choose the correct pronouns.',
    'Avoid run-on sentences.',
    'Proofread before submitting your work.',
  ],
  durationMinutes: 18,
  difficulty: 'Medium',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l49',
  title: 'Complete English Course Review',
  subjectId: 'english',
  topicTag: 'Final Revision',
  explanation:
      'Review all the important English topics covered throughout the course.',
  detailedContent: '''
Congratulations on reaching the final topic of your English course!

This lesson reviews the major concepts you have studied.

Grammar
You learned the parts of speech, sentence structure, tenses, punctuation, capitalization, pronouns, active and passive voice, and direct and indirect speech.

Vocabulary
You expanded your vocabulary through synonyms, antonyms, spelling, idioms, and proverbs.

Reading Skills
You practised comprehension, summary writing, and analyzing different texts.

Writing Skills
You learned how to write essays, speeches, and formal and informal letters.

Literature
You explored poetry, drama, and novels while identifying literary devices and themes.

Communication Skills
You developed listening and speaking skills to communicate effectively in different situations.

Success in English comes through regular reading, writing, listening, and speaking.

Continue practising every day to improve your grammar, vocabulary, confidence, and overall communication skills.
''',
  keyPoints: [
    'Review grammar regularly.',
    'Read books to improve vocabulary.',
    'Practise writing frequently.',
    'Develop strong speaking and listening skills.',
    'Revision improves examination performance.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
  xpReward: 100,
),
    LessonModel(
  id: 'eng_l50',
  title: 'Exam Preparation Tips',
  subjectId: 'english',
  topicTag: 'Final Revision',
  explanation:
      'Learn effective strategies for preparing for English examinations.',
  detailedContent: '''
Preparing well before an examination increases confidence and improves performance.

Useful examination tips include:

• Revise every topic instead of focusing only on difficult ones.

• Read each examination question carefully before answering.

• Manage your time wisely.

• Write neatly and organize your answers clearly.

• Check your spelling and grammar before submitting your paper.

• Read comprehension passages carefully before answering questions.

• Support essay ideas with relevant examples.

• Stay calm and confident throughout the examination.

Consistent practice and revision are the keys to success in English.
''',
  keyPoints: [
    'Revise all topics.',
    'Read questions carefully.',
    'Manage examination time wisely.',
    'Proofread your answers.',
    'Stay calm and confident.',
  ],
  durationMinutes: 17,
  difficulty: 'Easy',
  xpReward: 100,
),
  ];

  static final List<QuizModel> quizzes = [
    QuizModel(
  id: 'eng_q1',
  title: 'Parts of Speech Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which part of speech names a person, place or thing?',
      options: [
        'Verb',
        'Noun',
        'Adjective',
        'Adverb'
      ],
      correctIndex: 1,
      explanation: 'A noun names a person, place, thing or idea.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which word is a verb?',
      options: [
        'Beautiful',
        'Quickly',
        'Run',
        'Table'
      ],
      correctIndex: 2,
      explanation: 'Run is an action verb.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Which word is an adjective?',
      options: [
        'Blue',
        'Jump',
        'Slowly',
        'Because'
      ],
      correctIndex: 0,
      explanation: 'Blue describes a noun.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which part of speech replaces a noun?',
      options: [
        'Pronoun',
        'Adverb',
        'Verb',
        'Conjunction'
      ],
      correctIndex: 0,
      explanation: 'Pronouns replace nouns.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Which sentence contains an interjection?',
      options: [
        'She runs every day.',
        'Wow! That was amazing.',
        'The cat slept.',
        'We walked home.'
      ],
      correctIndex: 1,
      explanation: 'Wow! is an interjection expressing emotion.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q2',
  title: 'Sentence Structure Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which type of sentence asks a question?',
      options: [
        'Declarative',
        'Interrogative',
        'Imperative',
        'Exclamatory'
      ],
      correctIndex: 1,
      explanation: 'Interrogative sentences ask questions.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which sentence is imperative?',
      options: [
        'The sun is shining.',
        'Please sit down.',
        'What a surprise!',
        'Where are you going?'
      ],
      correctIndex: 1,
      explanation: 'Imperative sentences give commands or instructions.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Which part of a sentence tells what the subject does?',
      options: [
        'Object',
        'Predicate',
        'Adjective',
        'Pronoun'
      ],
      correctIndex: 1,
      explanation: 'The predicate tells what the subject does.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which sentence is declarative?',
      options: [
        'Please be quiet.',
        'The children are playing outside.',
        'What a wonderful performance!',
        'Did you finish your homework?'
      ],
      correctIndex: 1,
      explanation: 'A declarative sentence makes a statement.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Every complete sentence must contain...',
      options: [
        'A question mark',
        'A subject and a predicate',
        'Two verbs',
        'An adjective'
      ],
      correctIndex: 1,
      explanation: 'A complete sentence has both a subject and a predicate.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q3',
  title: 'Tenses Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which tense describes an action happening now?',
      options: [
        'Past Tense',
        'Present Continuous',
        'Future Tense',
        'Past Perfect'
      ],
      correctIndex: 1,
      explanation:
          'The present continuous tense describes actions happening at the moment.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Choose the sentence in the simple past tense.',
      options: [
        'She walks to school.',
        'She walked to school.',
        'She will walk to school.',
        'She is walking to school.'
      ],
      correctIndex: 1,
      explanation:
          'Walked is the past tense of walk.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Which word usually indicates future tense?',
      options: [
        'Yesterday',
        'Last week',
        'Tomorrow',
        'Earlier'
      ],
      correctIndex: 2,
      explanation:
          'Tomorrow refers to future time.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Complete the sentence: "They ____ playing football now."',
      options: [
        'is',
        'was',
        'are',
        'were'
      ],
      correctIndex: 2,
      explanation:
          'The correct present continuous form is "are playing."',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Which sentence is in the future tense?',
      options: [
        'He finished his work.',
        'He finishes his work.',
        'He will finish his work.',
        'He was finishing his work.'
      ],
      correctIndex: 2,
      explanation:
          'Will finish indicates future tense.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q4',
  title: 'Pronouns Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'What is the main purpose of a pronoun?',
      options: [
        'To describe a noun',
        'To replace a noun',
        'To join sentences',
        'To show action'
      ],
      correctIndex: 1,
      explanation: 'Pronouns replace nouns to avoid repetition.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which of the following is a personal pronoun?',
      options: [
        'Beautiful',
        'Quickly',
        'She',
        'Because'
      ],
      correctIndex: 2,
      explanation: 'She is a personal pronoun.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Choose the possessive pronoun.',
      options: [
        'Mine',
        'Who',
        'These',
        'They'
      ],
      correctIndex: 0,
      explanation: 'Mine shows ownership and is a possessive pronoun.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which sentence uses a pronoun correctly?',
      options: [
        'The boys forgot his bags.',
        'The boys forgot their bags.',
        'The boys forgot her bags.',
        'The boys forgot its bags.'
      ],
      correctIndex: 1,
      explanation: 'Their correctly agrees with the plural noun boys.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Which word is an interrogative pronoun?',
      options: [
        'Who',
        'Mine',
        'They',
        'This'
      ],
      correctIndex: 0,
      explanation: 'Who is used to ask questions and is an interrogative pronoun.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q5',
  title: 'Punctuation Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which punctuation mark ends a question?',
      options: [
        '.',
        '?',
        ',',
        '!'
      ],
      correctIndex: 1,
      explanation: 'A question mark is used at the end of a direct question.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which punctuation mark separates items in a list?',
      options: [
        'Comma',
        'Colon',
        'Question Mark',
        'Full Stop'
      ],
      correctIndex: 0,
      explanation: 'Commas separate items in a series.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Which sentence is punctuated correctly?',
      options: [
        'Where are you going.',
        'Where are you going?',
        'Where are you going!',
        'Where are you going,'
      ],
      correctIndex: 1,
      explanation: 'Questions always end with a question mark.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which punctuation mark is used to show direct speech?',
      options: [
        'Quotation Marks',
        'Comma',
        'Semicolon',
        'Colon'
      ],
      correctIndex: 0,
      explanation: 'Quotation marks enclose the exact words spoken by someone.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Which sentence is punctuated correctly?',
      options: [
        'Wow what a great game!',
        'Wow! What a great game!',
        'Wow, What a great game.',
        'Wow? What a great game.'
      ],
      correctIndex: 1,
      explanation: 'The exclamation mark expresses excitement, and the second sentence begins with a capital letter.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q6',
  title: 'Capitalization Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which sentence is correctly capitalized?',
      options: [
        'my name is Alice.',
        'My name is Alice.',
        'My Name is alice.',
        'my Name Is Alice.'
      ],
      correctIndex: 1,
      explanation:
          'Every sentence begins with a capital letter, and names are capitalized.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which word should always be capitalized?',
      options: [
        'book',
        'teacher',
        'I',
        'school'
      ],
      correctIndex: 2,
      explanation:
          'The pronoun "I" is always written with a capital letter.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Which sentence is correct?',
      options: [
        'We visited kigali.',
        'We visited Kigali.',
        'We visited kigali City.',
        'we visited Kigali.'
      ],
      correctIndex: 1,
      explanation:
          'Kigali is a proper noun and must begin with a capital letter.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which month is correctly written?',
      options: [
        'march',
        'March',
        'MARCH',
        'mArch'
      ],
      correctIndex: 1,
      explanation:
          'Months always begin with a capital letter.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Which sentence is correctly capitalized?',
      options: [
        'she speaks english.',
        'She speaks english.',
        'She speaks English.',
        'she Speaks English.'
      ],
      correctIndex: 2,
      explanation:
          'The sentence begins with a capital letter, and English is the name of a language.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q7',
  title: 'Vocabulary Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'What is vocabulary?',
      options: [
        'A type of sentence',
        'The collection of words a person knows',
        'A punctuation mark',
        'A writing style'
      ],
      correctIndex: 1,
      explanation:
          'Vocabulary is the collection of words a person understands and uses.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which activity helps improve vocabulary the most?',
      options: [
        'Reading regularly',
        'Sleeping more',
        'Watching silent videos',
        'Skipping practice'
      ],
      correctIndex: 0,
      explanation:
          'Reading introduces you to many new words and their meanings.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'What should you do when you find an unfamiliar word?',
      options: [
        'Ignore it',
        'Guess its meaning and move on',
        'Look it up in a dictionary',
        'Skip the paragraph'
      ],
      correctIndex: 2,
      explanation:
          'A dictionary provides the correct meaning, spelling, and pronunciation.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which word best describes someone willing to share with others?',
      options: [
        'Generous',
        'Careless',
        'Lazy',
        'Silent'
      ],
      correctIndex: 0,
      explanation:
          'A generous person is willing to give or share with others.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'The best way to remember a new word is to...',
      options: [
        'Read it once',
        'Use it in sentences',
        'Forget it after class',
        'Only memorize its spelling'
      ],
      correctIndex: 1,
      explanation:
          'Using new words in speaking and writing helps you remember them.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q8',
  title: 'Synonyms and Antonyms Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which word is a synonym for "happy"?',
      options: [
        'Sad',
        'Joyful',
        'Angry',
        'Quiet'
      ],
      correctIndex: 1,
      explanation:
          'Joyful has nearly the same meaning as happy.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which word is an antonym of "large"?',
      options: [
        'Huge',
        'Big',
        'Small',
        'Wide'
      ],
      correctIndex: 2,
      explanation:
          'Small is the opposite of large.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Choose the synonym for "begin".',
      options: [
        'End',
        'Start',
        'Stop',
        'Finish'
      ],
      correctIndex: 1,
      explanation:
          'Start and begin have similar meanings.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which pair contains antonyms?',
      options: [
        'Large – Big',
        'Quick – Fast',
        'Old – Young',
        'Happy – Joyful'
      ],
      correctIndex: 2,
      explanation:
          'Old and young have opposite meanings.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Why are synonyms useful?',
      options: [
        'They make writing repetitive.',
        'They help avoid repeating the same words.',
        'They only make sentences longer.',
        'They replace punctuation.'
      ],
      correctIndex: 1,
      explanation:
          'Synonyms improve variety and make writing more interesting.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q9',
  title: 'Comprehension Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'What is comprehension?',
      options: [
        'Writing a story',
        'Understanding what you read',
        'Speaking loudly',
        'Learning grammar rules'
      ],
      correctIndex: 1,
      explanation:
          'Comprehension is understanding the meaning of what you read.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'What should you identify first when reading a passage?',
      options: [
        'The main idea',
        'The longest sentence',
        'The title only',
        'Every difficult word'
      ],
      correctIndex: 0,
      explanation:
          'Finding the main idea helps you understand the entire passage.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'If you do not know an answer, what should you do?',
      options: [
        'Guess immediately',
        'Skip the passage',
        'Look back at the passage',
        'Choose the longest option'
      ],
      correctIndex: 2,
      explanation:
          'Most comprehension answers can be found by rereading the passage.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which question asks for a reason?',
      options: [
        'Who?',
        'Where?',
        'Why?',
        'When?'
      ],
      correctIndex: 2,
      explanation:
          '"Why" questions ask for reasons or explanations.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Good readers should...',
      options: [
        'Read quickly without thinking',
        'Read carefully and understand the text',
        'Memorize every sentence',
        'Ignore important details'
      ],
      correctIndex: 1,
      explanation:
          'Reading carefully helps readers understand the passage accurately.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q10',
  title: 'Summary Writing Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'What is a summary?',
      options: [
        'A longer version of a story',
        'A short version containing the main ideas',
        'A list of difficult words',
        'A paragraph copied word for word'
      ],
      correctIndex: 1,
      explanation:
          'A summary presents only the main ideas in a shorter form.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which information should be left out of a summary?',
      options: [
        'Main ideas',
        'Important facts',
        'Unnecessary details and examples',
        'The central message'
      ],
      correctIndex: 2,
      explanation:
          'Examples and extra details are usually omitted in summaries.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'What should you identify first before writing a summary?',
      options: [
        'The title',
        'The longest sentence',
        'The main idea',
        'The author\'s name'
      ],
      correctIndex: 2,
      explanation:
          'Finding the main idea is the first step in writing a summary.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'A good summary should...',
      options: [
        'Be longer than the original passage',
        'Copy every sentence exactly',
        'Be written in your own words',
        'Include every example'
      ],
      correctIndex: 2,
      explanation:
          'Summaries should normally be written using your own words.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'After writing a summary, you should...',
      options: [
        'Submit it immediately',
        'Add more examples',
        'Read it again to check clarity',
        'Rewrite the original passage'
      ],
      correctIndex: 2,
      explanation:
          'Proofreading helps ensure your summary is accurate and clear.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q11',
  title: 'Essay Writing Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which part of an essay introduces the topic?',
      options: [
        'Conclusion',
        'Body',
        'Introduction',
        'Title'
      ],
      correctIndex: 2,
      explanation:
          'The introduction presents the topic to the reader.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'What is the purpose of the body of an essay?',
      options: [
        'To summarize the essay',
        'To develop the main ideas',
        'To give the title',
        'To list references'
      ],
      correctIndex: 1,
      explanation:
          'The body explains and supports the main ideas.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'What should you do before writing an essay?',
      options: [
        'Write immediately without thinking',
        'Brainstorm and organize ideas',
        'Copy another essay',
        'Write the conclusion first'
      ],
      correctIndex: 1,
      explanation:
          'Planning helps organize ideas into a clear essay.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which word can be used to connect ideas in an essay?',
      options: [
        'However',
        'Yesterday',
        'Blue',
        'Table'
      ],
      correctIndex: 0,
      explanation:
          'Words such as "however" help connect ideas smoothly.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'After finishing an essay, you should...',
      options: [
        'Submit it without reading',
        'Check grammar, spelling, and punctuation',
        'Delete the introduction',
        'Rewrite the title only'
      ],
      correctIndex: 1,
      explanation:
          'Proofreading helps remove mistakes and improve clarity.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q12',
  title: 'Letter Writing Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which type of letter is written to a school principal?',
      options: [
        'Informal letter',
        'Friendly letter',
        'Formal letter',
        'Personal note'
      ],
      correctIndex: 2,
      explanation:
          'A principal is addressed using a formal letter.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which greeting is most suitable for a formal letter?',
      options: [
        'Hi John,',
        'Hello Friend,',
        'Dear Sir/Madam,',
        'Hey!'
      ],
      correctIndex: 2,
      explanation:
          'Formal letters usually begin with "Dear Sir/Madam."',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Who is an informal letter usually written to?',
      options: [
        'A bank manager',
        'A government office',
        'A close friend or family member',
        'A company director'
      ],
      correctIndex: 2,
      explanation:
          'Informal letters are written to people you know personally.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which closing is appropriate for a formal letter?',
      options: [
        'Love',
        'Best friend',
        'Yours faithfully',
        'See you later'
      ],
      correctIndex: 2,
      explanation:
          '"Yours faithfully" is a standard formal closing.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Before writing a letter, you should first...',
      options: [
        'Decorate the page',
        'Think about who will receive it',
        'Write the ending first',
        'Use as many difficult words as possible'
      ],
      correctIndex: 1,
      explanation:
          'Knowing your audience helps you choose the correct style and format.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q13',
  title: 'Speech Writing Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'What is the main purpose of a speech?',
      options: [
        'To decorate a page',
        'To communicate ideas to an audience',
        'To write a newspaper article',
        'To summarize a novel'
      ],
      correctIndex: 1,
      explanation:
          'A speech is prepared to communicate ideas to listeners.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which part of a speech comes first?',
      options: [
        'Body',
        'Conclusion',
        'Greeting',
        'Examples'
      ],
      correctIndex: 2,
      explanation:
          'A speech usually begins by greeting the audience.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Why should you maintain eye contact during a speech?',
      options: [
        'To memorize the speech',
        'To keep the audience engaged',
        'To read your notes',
        'To finish quickly'
      ],
      correctIndex: 1,
      explanation:
          'Eye contact helps you connect with your audience.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which is a good speaking habit?',
      options: [
        'Speaking as fast as possible',
        'Looking only at the floor',
        'Speaking clearly and confidently',
        'Reading every word without looking up'
      ],
      correctIndex: 2,
      explanation:
          'Good speakers speak clearly and confidently.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'How should a speech usually end?',
      options: [
        'With a greeting',
        'With a thank-you and conclusion',
        'With another introduction',
        'With unrelated information'
      ],
      correctIndex: 1,
      explanation:
          'A speech should finish by summarizing the message and thanking the audience.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q14',
  title: 'Direct and Indirect Speech Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which type of speech uses quotation marks?',
      options: [
        'Indirect speech',
        'Direct speech',
        'Reported writing',
        'Summary writing'
      ],
      correctIndex: 1,
      explanation:
          'Direct speech uses quotation marks to show the speaker’s exact words.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which sentence is written in indirect speech?',
      options: [
        'John said, "I am happy."',
        'Mary shouted, "Run!"',
        'John said that he was happy.',
        'The teacher said, "Sit down."'
      ],
      correctIndex: 2,
      explanation:
          'Indirect speech reports what was said without quotation marks.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'When changing direct speech to indirect speech, what often changes?',
      options: [
        'Only the punctuation',
        'Pronouns and verb tenses',
        'The speaker’s name',
        'The alphabet'
      ],
      correctIndex: 1,
      explanation:
          'Pronouns and verb tenses often change in reported speech.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'The word "tomorrow" usually changes to...',
      options: [
        'Yesterday',
        'Today',
        'The following day',
        'Now'
      ],
      correctIndex: 2,
      explanation:
          '"Tomorrow" usually becomes "the following day" in indirect speech.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'What is the main purpose of indirect speech?',
      options: [
        'To quote someone exactly',
        'To report what someone said',
        'To write a poem',
        'To create dialogue'
      ],
      correctIndex: 1,
      explanation:
          'Indirect speech reports another person\'s words without quoting them exactly.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q15',
  title: 'Active and Passive Voice Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which sentence is written in active voice?',
      options: [
        'The cake was baked by Mary.',
        'Mary baked the cake.',
        'The cake has been baked.',
        'The cake was delicious.'
      ],
      correctIndex: 1,
      explanation:
          'In active voice, the subject performs the action.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which sentence is written in passive voice?',
      options: [
        'The students solved the problem.',
        'The dog chased the cat.',
        'The problem was solved by the students.',
        'John opened the door.'
      ],
      correctIndex: 2,
      explanation:
          'Passive voice focuses on the receiver of the action.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Which helping verb is commonly used in passive voice?',
      options: [
        'Have',
        'Do',
        'Be',
        'Can'
      ],
      correctIndex: 2,
      explanation:
          'Passive voice uses a form of the verb "be" together with a past participle.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Change this sentence to passive voice: "The chef cooked the meal."',
      options: [
        'The chef was cooked by the meal.',
        'The meal was cooked by the chef.',
        'The meal cooked the chef.',
        'The chef cooked by the meal.'
      ],
      correctIndex: 1,
      explanation:
          'The object becomes the subject in passive voice.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Why is active voice often preferred?',
      options: [
        'It uses longer sentences.',
        'It is clearer and more direct.',
        'It always sounds more formal.',
        'It avoids using verbs.'
      ],
      correctIndex: 1,
      explanation:
          'Active voice is usually easier to read and understand.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q16',
  title: 'Figures of Speech Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which figure of speech uses "like" or "as" to compare two things?',
      options: [
        'Metaphor',
        'Simile',
        'Hyperbole',
        'Irony'
      ],
      correctIndex: 1,
      explanation:
          'A simile compares two things using "like" or "as".',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'The sentence "The stars danced in the sky" is an example of:',
      options: [
        'Hyperbole',
        'Personification',
        'Alliteration',
        'Irony'
      ],
      correctIndex: 1,
      explanation:
          'Personification gives human actions or qualities to non-human things.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Which sentence contains a metaphor?',
      options: [
        'He runs like a cheetah.',
        'She is as busy as a bee.',
        'The classroom was noisy.',
        'Knowledge is power.'
      ],
      correctIndex: 3,
      explanation:
          'A metaphor makes a direct comparison without using "like" or "as".',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which figure of speech uses deliberate exaggeration?',
      options: [
        'Hyperbole',
        'Simile',
        'Irony',
        'Oxymoron'
      ],
      correctIndex: 0,
      explanation:
          'Hyperbole exaggerates for emphasis.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'The phrase "busy buzzing bees" demonstrates:',
      options: [
        'Irony',
        'Alliteration',
        'Metaphor',
        'Onomatopoeia'
      ],
      correctIndex: 1,
      explanation:
          'Alliteration repeats the same beginning sound in nearby words.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q17',
  title: 'Poetry Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A group of lines in a poem is called a:',
      options: [
        'Sentence',
        'Stanza',
        'Paragraph',
        'Chapter',
      ],
      correctIndex: 1,
      explanation:
          'A stanza is a group of lines in a poem.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'What gives poetry its musical flow?',
      options: [
        'Grammar',
        'Rhythm',
        'Paragraphs',
        'Vocabulary',
      ],
      correctIndex: 1,
      explanation:
          'Rhythm is the pattern of beats in a poem.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Which poetic device creates mental pictures?',
      options: [
        'Imagery',
        'Theme',
        'Tone',
        'Rhythm',
      ],
      correctIndex: 0,
      explanation:
          'Imagery uses descriptive language that appeals to the senses.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'The main message of a poem is known as its:',
      options: [
        'Rhyme',
        'Theme',
        'Line',
        'Stanza',
      ],
      correctIndex: 1,
      explanation:
          'The theme is the central idea or message of a poem.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Which question is useful when analysing a poem?',
      options: [
        'Who printed the poem?',
        'How many pages are in the book?',
        'What message is the poet communicating?',
        'What font was used?',
      ],
      correctIndex: 2,
      explanation:
          'Understanding the poet’s message is an important part of poem analysis.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q18',
  title: 'Drama Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Drama is primarily written to be:',
      options: [
        'Memorized',
        'Performed',
        'Translated',
        'Illustrated'
      ],
      correctIndex: 1,
      explanation:
          'Drama is intended to be performed before an audience.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Who writes a play?',
      options: [
        'Poet',
        'Author',
        'Playwright',
        'Narrator'
      ],
      correctIndex: 2,
      explanation:
          'A playwright is the writer of a play.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Dialogue refers to:',
      options: [
        'The setting of the play',
        'The conversations between characters',
        'The title of the play',
        'The ending of the play'
      ],
      correctIndex: 1,
      explanation:
          'Dialogue is the spoken conversation between characters.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Stage directions are mainly used to:',
      options: [
        'Describe the actors’ movements and actions',
        'Summarize the story',
        'Explain grammar rules',
        'List the characters'
      ],
      correctIndex: 0,
      explanation:
          'Stage directions tell actors how to perform the play.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'A major section of a play is called an:',
      options: [
        'Chapter',
        'Paragraph',
        'Act',
        'Verse'
      ],
      correctIndex: 2,
      explanation:
          'A play is divided into acts, which are further divided into scenes.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q19',
  title: 'Novel Study Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A novel is best described as:',
      options: [
        'A long fictional story',
        'A collection of poems',
        'A newspaper article',
        'A speech',
      ],
      correctIndex: 0,
      explanation:
          'A novel is a long fictional story with characters and a plot.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'The sequence of events in a novel is called the:',
      options: [
        'Theme',
        'Conflict',
        'Setting',
        'Plot',
      ],
      correctIndex: 3,
      explanation:
          'The plot is the order in which events happen.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'The central message or lesson of a novel is known as the:',
      options: [
        'Dialogue',
        'Theme',
        'Scene',
        'Chapter',
      ],
      correctIndex: 1,
      explanation:
          'The theme is the main idea or lesson of the story.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'When analysing a novel, your answers should be supported by:',
      options: [
        'Personal opinions only',
        'Evidence from the text',
        'Internet searches',
        'The book cover',
      ],
      correctIndex: 1,
      explanation:
          'Good analysis uses evidence from the novel.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Which literary device gives hints about future events?',
      options: [
        'Flashback',
        'Foreshadowing',
        'Dialogue',
        'Repetition',
      ],
      correctIndex: 1,
      explanation:
          'Foreshadowing provides clues about events that will happen later in the story.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q20',
  title: 'Listening Skills Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Active listening means:',
      options: [
        'Ignoring distractions and paying full attention',
        'Talking while others speak',
        'Reading while someone speaks',
        'Only hearing the words',
      ],
      correctIndex: 0,
      explanation:
          'Active listening means giving the speaker your full attention.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which of the following is good listening behaviour?',
      options: [
        'Interrupting the speaker',
        'Looking away constantly',
        'Maintaining eye contact',
        'Talking to friends',
      ],
      correctIndex: 2,
      explanation:
          'Maintaining eye contact shows attention and respect.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Listening to evaluate an argument is called:',
      options: [
        'Critical listening',
        'Appreciative listening',
        'Creative listening',
        'Silent listening',
      ],
      correctIndex: 0,
      explanation:
          'Critical listening is used to evaluate ideas and arguments.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which strategy helps you remember important information?',
      options: [
        'Ignoring key words',
        'Taking brief notes',
        'Talking during the presentation',
        'Leaving early',
      ],
      correctIndex: 1,
      explanation:
          'Taking notes helps you remember key information.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'If you do not understand something the speaker says, you should:',
      options: [
        'Pretend you understood',
        'Interrupt with unrelated questions',
        'Ask for clarification politely',
        'Ignore it completely',
      ],
      correctIndex: 2,
      explanation:
          'Asking for clarification ensures correct understanding.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q21',
  title: 'Speaking Skills Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which is an important feature of effective speaking?',
      options: [
        'Speaking as quickly as possible',
        'Clear pronunciation',
        'Avoiding eye contact',
        'Reading every word from notes',
      ],
      correctIndex: 1,
      explanation:
          'Clear pronunciation helps listeners understand the speaker.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Why is eye contact important during a presentation?',
      options: [
        'It shows confidence and engages the audience',
        'It helps you memorize your speech',
        'It makes you speak louder',
        'It replaces preparation',
      ],
      correctIndex: 0,
      explanation:
          'Eye contact helps build a connection with the audience.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'What should you do before giving a speech?',
      options: [
        'Avoid practising',
        'Prepare and organize your ideas',
        'Speak without planning',
        'Ignore your audience',
      ],
      correctIndex: 1,
      explanation:
          'Preparation improves confidence and organization.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'During a presentation, you should:',
      options: [
        'Speak clearly and at a steady pace',
        'Rush through the speech',
        'Face away from the audience',
        'Mumble quietly',
      ],
      correctIndex: 0,
      explanation:
          'Speaking clearly at a comfortable pace improves understanding.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'How should you respond to questions after a presentation?',
      options: [
        'Ignore them',
        'Answer politely and confidently',
        'Leave immediately',
        'Argue with the audience',
      ],
      correctIndex: 1,
      explanation:
          'Good speakers answer questions respectfully and confidently.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q22',
  title: 'Idioms and Proverbs Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'An idiom is:',
      options: [
        'A mathematical formula',
        'A group of words with a figurative meaning',
        'A type of poem',
        'A grammar rule',
      ],
      correctIndex: 1,
      explanation:
          'Idioms have meanings different from the literal meanings of the words.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'What does the idiom "Piece of cake" mean?',
      options: [
        'A delicious dessert',
        'Something very expensive',
        'Something very easy',
        'A birthday celebration',
      ],
      correctIndex: 2,
      explanation:
          '"Piece of cake" means something that is easy to do.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'A proverb mainly:',
      options: [
        'Describes a scientific fact',
        'Teaches a lesson or gives advice',
        'Names a person',
        'Explains grammar',
      ],
      correctIndex: 1,
      explanation:
          'Proverbs express wisdom or advice.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which of the following is a proverb?',
      options: [
        'Break the ice',
        'Piece of cake',
        'Actions speak louder than words',
        'Under the weather',
      ],
      correctIndex: 2,
      explanation:
          '"Actions speak louder than words" teaches an important life lesson.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'What does the proverb "Practice makes perfect" mean?',
      options: [
        'Practice is unnecessary',
        'Repeated practice leads to improvement',
        'Only talented people succeed',
        'Practice should be avoided',
      ],
      correctIndex: 1,
      explanation:
          'Regular practice helps people improve their skills.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q23',
  title: 'Spelling Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which word is spelled correctly?',
      options: [
        'Seperate',
        'Separate',
        'Seperete',
        'Separate',
      ],
      correctIndex: 1,
      explanation:
          '"Separate" is the correct spelling.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which word means "belonging to them"?',
      options: [
        'There',
        'They\'re',
        'Their',
        'Thier',
      ],
      correctIndex: 2,
      explanation:
          '"Their" shows possession.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'What is one good way to improve spelling?',
      options: [
        'Avoid reading',
        'Guess every word',
        'Read regularly',
        'Ignore dictionaries',
      ],
      correctIndex: 2,
      explanation:
          'Reading exposes you to correctly spelled words.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which spelling is correct?',
      options: [
        'Becuase',
        'Because',
        'Beacause',
        'Beacuse',
      ],
      correctIndex: 1,
      explanation:
          '"Because" is the correct spelling.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Why should you proofread your work?',
      options: [
        'To make it longer',
        'To check for spelling mistakes',
        'To remove punctuation',
        'To change handwriting',
      ],
      correctIndex: 1,
      explanation:
          'Proofreading helps identify and correct spelling errors.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q24',
  title: 'Grammar Revision Quiz',
  subjectId: 'english',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which sentence is grammatically correct?',
      options: [
        'She walk to school.',
        'She walks to school.',
        'She walking to school.',
        'She walkeds to school.',
      ],
      correctIndex: 1,
      explanation:
          'The singular subject "She" takes the verb "walks".',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which sentence uses the correct past tense?',
      options: [
        'Yesterday I go home.',
        'Yesterday I gone home.',
        'Yesterday I went home.',
        'Yesterday I going home.',
      ],
      correctIndex: 2,
      explanation:
          '"Went" is the correct past tense of "go".',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'Which sentence uses the correct pronoun?',
      options: [
        'Me and Sarah studied.',
        'Sarah and I studied.',
        'Sarah and me studied.',
        'I and Sarah studied.',
      ],
      correctIndex: 1,
      explanation:
          '"Sarah and I" is the grammatically correct subject.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Which punctuation is correct?',
      options: [
        'Lets eat Grandma.',
        'Let\'s eat Grandma.',
        'Let\'s eat, Grandma.',
        'Lets eat, Grandma',
      ],
      correctIndex: 2,
      explanation:
          'The comma changes the meaning completely and the apostrophe is required in "Let\'s".',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Why is grammar revision important?',
      options: [
        'It makes writing more confusing.',
        'It helps improve accuracy and communication.',
        'It replaces reading.',
        'It removes the need for practice.',
      ],
      correctIndex: 1,
      explanation:
          'Regular grammar revision improves communication and reduces mistakes.',
    ),
  ],
),
    QuizModel(
  id: 'eng_q25',
  title: 'Final English Assessment',
  subjectId: 'english',
  xpReward: 150,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which activity best improves your English skills over time?',
      options: [
        'Studying only before exams',
        'Regular reading, writing, speaking and listening',
        'Memorizing one essay',
        'Avoiding difficult topics',
      ],
      correctIndex: 1,
      explanation:
          'Consistent practice in all language skills leads to steady improvement.',
    ),

    QuizQuestion(
      id: 'q2',
      question: 'Which of these is a writing skill studied in this course?',
      options: [
        'Essay writing',
        'Long division',
        'Chemical balancing',
        'Map drawing',
      ],
      correctIndex: 0,
      explanation:
          'Essay writing is one of the major writing skills covered.',
    ),

    QuizQuestion(
      id: 'q3',
      question: 'What should you do before submitting an examination paper?',
      options: [
        'Leave immediately',
        'Check your spelling and grammar',
        'Erase your answers',
        'Skip unanswered questions',
      ],
      correctIndex: 1,
      explanation:
          'Proofreading helps identify mistakes before submission.',
    ),

    QuizQuestion(
      id: 'q4',
      question: 'Why is regular revision important?',
      options: [
        'It increases mistakes',
        'It helps you remember concepts and improve performance',
        'It replaces classroom learning',
        'It shortens examinations',
      ],
      correctIndex: 1,
      explanation:
          'Revision strengthens understanding and improves examination results.',
    ),

    QuizQuestion(
      id: 'q5',
      question: 'Which attitude is most helpful during an English examination?',
      options: [
        'Panic',
        'Confidence and careful reading of questions',
        'Rushing through every answer',
        'Ignoring instructions',
      ],
      correctIndex: 1,
      explanation:
          'Remaining calm and reading questions carefully leads to better performance.',
    ),
  ],
),
  ];
}
