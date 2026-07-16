import 'package:flutter/material.dart';
import 'package:foundationx/core/models/models.dart';

class BiologyData {
  static final SubjectModel subject = SubjectModel(
    id: 'biology',
    name: 'Biology',
    emoji: '🧬',
    icon: Icons.eco_rounded,
    color: Colors.green,
    lightColor: Colors.green,
    totalLessons: 25,
    completedLessons: 0,
    description: 'Explore living organisms, their structure and their environment.',
    topics: topics,
  );

  static final List<TopicModel> topics = [
    TopicModel(
      id: 'bio_01',
      order: 1,
      title: 'Introduction to Biology',
      description: 'The study of living organisms.',
    ),

    TopicModel(
      id: 'bio_02',
      order: 2,
      title: 'Characteristics of Living Things',
      description: 'Movement, growth, reproduction and more.',
    ),

    TopicModel(
      id: 'bio_03',
      order: 3,
      title: 'Cell Structure',
      description: 'Plant and animal cells.',
    ),

    TopicModel(
      id: 'bio_04',
      order: 4,
      title: 'Cell Division',
      description: 'Mitosis and meiosis.',
    ),

    TopicModel(
      id: 'bio_05',
      order: 5,
      title: 'Classification of Living Things',
      description: 'Grouping organisms into kingdoms.',
    ),

    TopicModel(
      id: 'bio_06',
      order: 6,
      title: 'Microorganisms',
      description: 'Bacteria, fungi and viruses.',
    ),

    TopicModel(
      id: 'bio_07',
      order: 7,
      title: 'Nutrition in Plants',
      description: 'Photosynthesis and mineral uptake.',
    ),

    TopicModel(
      id: 'bio_08',
      order: 8,
      title: 'Nutrition in Animals',
      description: 'Balanced diet and digestion.',
    ),

    TopicModel(
      id: 'bio_09',
      order: 9,
      title: 'Respiration',
      description: 'Energy production in living organisms.',
    ),

    TopicModel(
      id: 'bio_10',
      order: 10,
      title: 'Transport Systems',
      description: 'Movement of substances in plants and animals.',
    ),

    TopicModel(
      id: 'bio_11',
      order: 11,
      title: 'Excretion',
      description: 'Removal of metabolic waste.',
    ),

    TopicModel(
      id: 'bio_12',
      order: 12,
      title: 'Support and Movement',
      description: 'Skeletons and muscles.',
    ),

    TopicModel(
      id: 'bio_13',
      order: 13,
      title: 'Coordination',
      description: 'The nervous and endocrine systems.',
    ),

    TopicModel(
      id: 'bio_14',
      order: 14,
      title: 'Sense Organs',
      description: 'Eyes, ears, skin, tongue and nose.',
    ),

    TopicModel(
      id: 'bio_15',
      order: 15,
      title: 'Reproduction',
      description: 'Human and plant reproduction.',
    ),

    TopicModel(
      id: 'bio_16',
      order: 16,
      title: 'Growth and Development',
      description: 'Life cycles and stages of growth.',
    ),

    TopicModel(
      id: 'bio_17',
      order: 17,
      title: 'Genetics',
      description: 'Inheritance and variation.',
    ),

    TopicModel(
      id: 'bio_18',
      order: 18,
      title: 'Evolution',
      description: 'How species change over time.',
    ),

    TopicModel(
      id: 'bio_19',
      order: 19,
      title: 'Ecology',
      description: 'Interactions between organisms and the environment.',
    ),

    TopicModel(
      id: 'bio_20',
      order: 20,
      title: 'Food Chains and Webs',
      description: 'Energy transfer in ecosystems.',
    ),

    TopicModel(
      id: 'bio_21',
      order: 21,
      title: 'Pollution',
      description: 'Causes and environmental effects.',
    ),

    TopicModel(
      id: 'bio_22',
      order: 22,
      title: 'Conservation',
      description: 'Protecting biodiversity.',
    ),

    TopicModel(
      id: 'bio_23',
      order: 23,
      title: 'Biotechnology',
      description: 'Applications of biological science.',
    ),

    TopicModel(
      id: 'bio_24',
      order: 24,
      title: 'Human Health',
      description: 'Diseases, immunity and prevention.',
    ),

    TopicModel(
      id: 'bio_25',
      order: 25,
      title: 'Biology Revision',
      description: 'Comprehensive review of Biology topics.',
    ),
  ];

  static final List<LessonModel> lessons = [];

  static final List<QuizModel> quizzes = [];
}
