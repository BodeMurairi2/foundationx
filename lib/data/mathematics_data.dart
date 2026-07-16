import 'package:flutter/material.dart';
import 'package:foundationx/core/models/models.dart';

class MathematicsData {
  static final SubjectModel subject = SubjectModel(
    id: 'math',
    name: 'Mathematics',
    emoji: '📐',
    icon: Icons.calculate_rounded,
    color: Colors.blue,
    lightColor: Colors.blue,
    totalLessons: 25,
    completedLessons: 0,
    description: 'Master numbers, algebra, geometry and statistics.',
    topics: topics,
  );

  static final List<TopicModel> topics = [
    TopicModel(
      id: 'math_01',
      order: 1,
      title: 'Algebraic Expressions',
      description: 'Understanding counting numbers and place value.',
    ),

    TopicModel(
      id: 'math_02',
      order: 2,
      title: 'Linear Equations',
      description: 'Prime numbers, HCF and LCM.',
    ),

    TopicModel(
      id: 'math_03',
      order: 3,
      title: 'Quadratic Equations',
      description: 'Equivalent fractions and operations.',
    ),

    TopicModel(
      id: 'math_04',
      order: 4,
      title: 'Simultaneous Equations',
      description: 'Working with decimal numbers.',
    ),

    TopicModel(
      id: 'math_05',
      order: 5,
      title: 'Inequalities',
      description: 'Finding percentages and percentage change.',
    ),

    TopicModel(
      id: 'math_06',
      order: 6,
      title: 'Indices',
      description: 'Comparing quantities.',
    ),

    TopicModel(
      id: 'math_07',
      order: 7,
      title: 'Surds and Rationalization',
      description: 'Positive and negative numbers.',
    ),

    TopicModel(
      id: 'math_08',
      order: 8,
      title: 'Logarithms',
      description: 'Variables and simplifying expressions.',
    ),

    TopicModel(
      id: 'math_09',
      order: 9,
      title: 'Functions',
      description: 'Solving one-variable equations.',
    ),

    TopicModel(
      id: 'math_10',
      order: 10,
      title: 'Graphs',
      description: 'Solving two equations together.',
    ),

    TopicModel(
      id: 'math_11',
      order: 11,
      title: 'Coordinate Geometry',
      description: 'Introduction to quadratic functions.',
    ),

    TopicModel(
      id: 'math_12',
      order: 12,
      title: 'Trigonometry',
      description: 'Powers and exponents.',
    ),

    TopicModel(
      id: 'math_13',
      order: 13,
      title: 'Mensuration',
      description: 'Simplifying square roots.',
    ),

    TopicModel(
      id: 'math_14',
      order: 14,
      title: 'Statistics',
      description: 'Patterns and arithmetic sequences.',
    ),

    TopicModel(
      id: 'math_15',
      order: 15,
      title: 'Probability',
      description: 'Lines, angles and polygons.',
    ),

    TopicModel(
      id: 'math_16',
      order: 16,
      title: 'Sets',
      description: 'Properties and angle rules.',
    ),

    TopicModel(
      id: 'math_17',
      order: 17,
      title: 'Matrices',
      description: 'Radius, diameter and circumference.',
    ),

    TopicModel(
      id: 'math_18',
      order: 18,
      title: 'Vectors',
      description: 'Area, perimeter and volume.',
    ),

    TopicModel(
      id: 'math_19',
      order: 19,
      title: 'Transformers',
      description: 'Plotting points on graphs.',
    ),

    TopicModel(
      id: 'math_20',
      order: 20,
      title: 'Financial Mathematics',
      description: 'Reflection, rotation and translation.',
    ),

    TopicModel(
      id: 'math_21',
      order: 21,
      title: 'Sequences and Series',
      description: 'Chance and likelihood.',
    ),

    TopicModel(
      id: 'math_22',
      order: 22,
      title: 'Introduction to Calculus',
      description: 'Collecting and analysing data.',
    ),

    TopicModel(
      id: 'math_23',
      order: 23,
      title: 'Mathematical Logic',
      description: 'Drawing and interpreting graphs.',
    ),

    TopicModel(
      id: 'math_24',
      order: 24,
      title: 'Mathematical Modelling',
      description: 'Simple interest, discounts and profit.',
    ),

    TopicModel(
      id: 'math_25',
      order: 25,
      title: 'Revision and Problem Solving',
      description: 'Comprehensive Mathematics review.',
    ),
  ];

  static final List<LessonModel> lessons = [
    LessonModel(
      id: 'math_l1',
      title: 'What is Algebra?',
      subjectId: 'math',
      topicTag: 'Algebraic Expressions',
      explanation:
      'Learn what algebra is and why it is used in mathematics.',
      detailedContent:
      'Algebra is a branch of mathematics that uses letters and symbols to represent numbers. These symbols are called variables. Algebra helps us solve problems and describe patterns.',
  keyPoints: [
    'Variables represent unknown numbers.',
    'Letters are commonly used in algebra.',
    'Algebra helps solve real-life problems.',
  ],
  durationMinutes: 12,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l2',
  title: 'Variables and Constants',
  subjectId: 'math',
  topicTag: 'Algebraic Expressions',
  explanation:
      'Understand the difference between variables and constants.',
  detailedContent:
      'A variable is a symbol whose value can change. A constant has a fixed value that never changes.',
  keyPoints: [
    'Variables change.',
    'Constants remain the same.',
    'Examples include x, y and 5.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l3',
  title: 'Algebraic Expressions',
  subjectId: 'math',
  topicTag: 'Algebraic Expressions',
  explanation:
      'Learn how expressions combine variables and numbers.',
  detailedContent:
      'An algebraic expression contains numbers, variables and operations such as addition, subtraction, multiplication and division.',
  keyPoints: [
    'Expressions do not contain equals signs.',
    'Terms are separated by + or -.',
    'Expressions can be simplified.',
  ],
  durationMinutes: 18,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l4',
  title: 'Simplifying Expressions',
  subjectId: 'math',
  topicTag: 'Algebraic Expressions',
  explanation:
      'Combine like terms to simplify algebraic expressions.',
  detailedContent:
      'Like terms have the same variables raised to the same powers. They can be combined by adding or subtracting their coefficients.',
  keyPoints: [
    'Identify like terms.',
    'Combine coefficients.',
    'Write the simplified expression.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l5',
  title: 'Understanding Linear Equations',
  subjectId: 'math',
  topicTag: 'Linear Equations',
  explanation:
      'Learn what a linear equation is and how it is written.',
  detailedContent:
      'A linear equation is an equation in which the highest power of the variable is one. Linear equations form straight lines when graphed.',
  keyPoints: [
    'Contains an equals sign.',
    'Highest exponent is 1.',
    'Can be solved for an unknown value.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l6',
  title: 'Solving One-Step Equations',
  subjectId: 'math',
  topicTag: 'Linear Equations',
  explanation:
      'Use inverse operations to solve equations.',
  detailedContent:
      'One-step equations require only one operation to isolate the variable. Use the opposite operation to solve the equation.',
  keyPoints: [
    'Addition and subtraction are opposites.',
    'Multiplication and division are opposites.',
    'Keep both sides balanced.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l7',
  title: 'Solving Two-Step Equations',
  subjectId: 'math',
  topicTag: 'Linear Equations',
  explanation:
      'Solve equations requiring two operations.',
  detailedContent:
      'Undo operations in reverse order. First remove addition or subtraction, then multiplication or division.',
  keyPoints: [
    'Reverse the order of operations.',
    'Check your solution.',
    'Balance both sides.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l8',
  title: 'Word Problems with Linear Equations',
  subjectId: 'math',
  topicTag: 'Linear Equations',
  explanation:
      'Translate everyday situations into equations.',
  detailedContent:
      'Many real-life situations can be represented using linear equations. Identify the unknown, write the equation and solve it.',
  keyPoints: [
    'Identify the unknown.',
    'Write an equation.',
    'Solve and interpret the answer.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l9',
  title: 'Introduction to Quadratic Equations',
  subjectId: 'math',
  topicTag: 'Quadratic Equations',
  explanation:
      'Learn what makes a quadratic equation different from a linear equation.',
  detailedContent:
      'A quadratic equation is an equation in which the highest power of the variable is two. The standard form is ax² + bx + c = 0 where a cannot be zero.',
  keyPoints: [
    'Highest exponent is 2.',
    'Standard form is ax² + bx + c = 0.',
    'Graphs of quadratic equations are parabolas.',
  ],
  durationMinutes: 18,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l10',
  title: 'Factoring Quadratic Equations',
  subjectId: 'math',
  topicTag: 'Quadratic Equations',
  explanation:
      'Solve quadratic equations by factoring.',
  detailedContent:
      'Factoring involves expressing a quadratic expression as the product of two binomials. Once factored, the Zero Product Property can be used to find the solutions.',
  keyPoints: [
    'Find two numbers whose product equals c.',
    'Their sum should equal b.',
    'Apply the Zero Product Property.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l11',
  title: 'Using the Quadratic Formula',
  subjectId: 'math',
  topicTag: 'Quadratic Equations',
  explanation:
      'Solve any quadratic equation using the quadratic formula.',
  detailedContent:
      'The quadratic formula solves any quadratic equation. Substitute the values of a, b and c carefully before simplifying.',
  keyPoints: [
    'Formula: x = (-b ± √(b² − 4ac)) / 2a',
    'Calculate the discriminant first.',
    'Simplify carefully.',
  ],
  durationMinutes: 25,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l12',
  title: 'Graphing Quadratic Equations',
  subjectId: 'math',
  topicTag: 'Quadratic Equations',
  explanation:
      'Understand the shape of quadratic graphs.',
  detailedContent:
      'The graph of a quadratic equation is called a parabola. It may open upward or downward depending on the coefficient of x².',
  keyPoints: [
    'Quadratic graphs are parabolas.',
    'Every parabola has a vertex.',
    'The axis of symmetry passes through the vertex.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l13',
  title: 'Introduction to Simultaneous Equations',
  subjectId: 'math',
  topicTag: 'Simultaneous Equations',
  explanation:
      'Learn what simultaneous equations are and why they are useful.',
  detailedContent:
      'Simultaneous equations are two or more equations that share the same variables. The solution is the value that satisfies all equations at the same time.',
  keyPoints: [
    'They contain the same variables.',
    'Both equations must be true.',
    'The solution satisfies every equation.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l14',
  title: 'Solving by Substitution',
  subjectId: 'math',
  topicTag: 'Simultaneous Equations',
  explanation:
      'Solve simultaneous equations using substitution.',
  detailedContent:
      'The substitution method involves expressing one variable in terms of another and replacing it in the second equation.',
  keyPoints: [
    'Make one variable the subject.',
    'Substitute into the second equation.',
    'Solve for both variables.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l15',
  title: 'Solving by Elimination',
  subjectId: 'math',
  topicTag: 'Simultaneous Equations',
  explanation:
      'Use elimination to remove one variable.',
  detailedContent:
      'Multiply one or both equations if necessary so that one variable can be eliminated by addition or subtraction.',
  keyPoints: [
    'Align like terms.',
    'Eliminate one variable.',
    'Substitute back to find the other.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l16',
  title: 'Word Problems with Simultaneous Equations',
  subjectId: 'math',
  topicTag: 'Simultaneous Equations',
  explanation:
      'Solve everyday problems using simultaneous equations.',
  detailedContent:
      'Many real-life situations involving prices, ages and distances can be represented using simultaneous equations.',
  keyPoints: [
    'Identify the unknowns.',
    'Form two equations.',
    'Interpret the solution.',
  ],
  durationMinutes: 24,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l17',
  title: 'Introduction to Inequalities',
  subjectId: 'math',
  topicTag: 'Inequalities',
  explanation:
      'Learn how inequalities compare values instead of showing equality.',
  detailedContent:
      'An inequality compares two values using symbols such as >, <, ≥ and ≤. Unlike equations, inequalities describe a range of possible values.',
  keyPoints: [
    'Inequalities compare values.',
    'Use >, <, ≥ and ≤.',
    'Solutions can include many values.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l18',
  title: 'Solving Linear Inequalities',
  subjectId: 'math',
  topicTag: 'Inequalities',
  explanation:
      'Apply algebraic operations to solve inequalities.',
  detailedContent:
      'Linear inequalities are solved similarly to equations. However, when multiplying or dividing by a negative number, the inequality sign must be reversed.',
  keyPoints: [
    'Solve like equations.',
    'Reverse the sign when multiplying or dividing by a negative.',
    'Always check your answer.',
  ],
  durationMinutes: 18,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l19',
  title: 'Graphing Inequalities',
  subjectId: 'math',
  topicTag: 'Inequalities',
  explanation:
      'Represent inequality solutions on a number line.',
  detailedContent:
      'Solutions to inequalities are shown using open or closed circles and arrows on a number line to represent all possible values.',
  keyPoints: [
    'Open circles exclude values.',
    'Closed circles include values.',
    'Arrows show the solution continues.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l20',
  title: 'Real-Life Applications of Inequalities',
  subjectId: 'math',
  topicTag: 'Inequalities',
  explanation:
      'Use inequalities to solve practical problems.',
  detailedContent:
      'Inequalities are used in budgeting, age restrictions, speed limits and many real-world situations where values have limits instead of exact answers.',
  keyPoints: [
    'Identify the limiting condition.',
    'Write the inequality.',
    'Interpret the solution correctly.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l21',
  title: 'Introduction to Indices',
  subjectId: 'math',
  topicTag: 'Indices',
  explanation:
      'Learn how repeated multiplication is written using exponents.',
  detailedContent:
      'Indices, also called exponents or powers, are a shorthand way of writing repeated multiplication. For example, 2³ means 2 × 2 × 2.',
  keyPoints: [
    'Indices represent repeated multiplication.',
    'The small number is called the exponent.',
    'The larger number is the base.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l22',
  title: 'Laws of Indices',
  subjectId: 'math',
  topicTag: 'Indices',
  explanation:
      'Apply the basic rules for working with exponents.',
  detailedContent:
      'When multiplying powers with the same base, add the exponents. When dividing, subtract the exponents. Raising a power to another power means multiplying the exponents.',
  keyPoints: [
    'Multiply → add exponents.',
    'Divide → subtract exponents.',
    'Power of a power → multiply exponents.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l23',
  title: 'Negative and Zero Indices',
  subjectId: 'math',
  topicTag: 'Indices',
  explanation:
      'Understand zero and negative exponents.',
  detailedContent:
      'Any non-zero number raised to the power of zero equals one. Negative exponents represent reciprocals of positive powers.',
  keyPoints: [
    'a⁰ = 1',
    'a⁻¹ = 1/a',
    'Negative powers create fractions.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l24',
  title: 'Scientific Notation',
  subjectId: 'math',
  topicTag: 'Indices',
  explanation:
      'Use powers of ten to write very large and very small numbers.',
  detailedContent:
      'Scientific notation expresses numbers as a value between 1 and 10 multiplied by a power of ten. It simplifies calculations involving extremely large or small quantities.',
  keyPoints: [
    'Coefficient is between 1 and 10.',
    'Use powers of ten.',
    'Common in science and engineering.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l25',
  title: 'Introduction to Surds',
  subjectId: 'math',
  topicTag: 'Surds',
  explanation:
      'Learn what surds are and why they are used.',
  detailedContent:
      'A surd is the square root, cube root, or higher root of a number that cannot be simplified into a whole number or a rational number. Surds allow us to write exact values instead of decimal approximations.',
  keyPoints: [
    'Surds are irrational numbers.',
    '√2 and √5 are examples of surds.',
    'Surds give exact values.',
  ],
  durationMinutes: 15,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l26',
  title: 'Simplifying Surds',
  subjectId: 'math',
  topicTag: 'Surds',
  explanation:
      'Rewrite surds in their simplest form.',
  detailedContent:
      'To simplify a surd, find perfect square factors inside the root and move them outside the radical sign.',
  keyPoints: [
    'Look for perfect square factors.',
    'Take square roots of perfect squares.',
    'Leave non-perfect squares inside.',
  ],
  durationMinutes: 18,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l27',
  title: 'Adding and Subtracting Surds',
  subjectId: 'math',
  topicTag: 'Surds',
  explanation:
      'Combine like surds correctly.',
  detailedContent:
      'Only surds with the same root can be added or subtracted. They behave similarly to like terms in algebra.',
  keyPoints: [
    'Simplify first.',
    'Combine only like surds.',
    'Different surds cannot be combined.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l28',
  title: 'Rationalizing the Denominator',
  subjectId: 'math',
  topicTag: 'Surds',
  explanation:
      'Remove surds from the denominator of fractions.',
  detailedContent:
      'Rationalizing a denominator involves multiplying the numerator and denominator by an appropriate surd or conjugate so the denominator becomes rational.',
  keyPoints: [
    'Multiply top and bottom equally.',
    'Use conjugates when necessary.',
    'The denominator should contain no surds.',
  ],
  durationMinutes: 22,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l29',
  title: 'Introduction to Logarithms',
  subjectId: 'math',
  topicTag: 'Logarithms',
  explanation:
      'Understand what logarithms are and how they relate to exponents.',
  detailedContent:
      'A logarithm answers the question: "To what power must a base be raised to produce a given number?" Logarithms are the inverse of exponents and are widely used in science, engineering and finance.',
  keyPoints: [
    'Logarithms are the inverse of exponents.',
    'The base must be positive.',
    'Logarithms simplify exponential calculations.',
  ],
  durationMinutes: 18,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l30',
  title: 'Laws of Logarithms',
  subjectId: 'math',
  topicTag: 'Logarithms',
  explanation:
      'Learn the three basic laws of logarithms.',
  detailedContent:
      'Logarithms have special rules that simplify multiplication, division and powers. These laws make solving complex expressions much easier.',
  keyPoints: [
    'log(ab) = log(a) + log(b)',
    'log(a/b) = log(a) − log(b)',
    'log(aⁿ) = n log(a)',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l31',
  title: 'Changing the Base of a Logarithm',
  subjectId: 'math',
  topicTag: 'Logarithms',
  explanation:
      'Convert logarithms from one base to another.',
  detailedContent:
      'The change of base formula allows logarithms of any base to be calculated using common or natural logarithms on a calculator.',
  keyPoints: [
    'Use the change of base formula.',
    'Most calculators use base 10 or base e.',
    'Useful for solving advanced problems.',
  ],
  durationMinutes: 20,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l32',
  title: 'Solving Logarithmic Equations',
  subjectId: 'math',
  topicTag: 'Logarithms',
  explanation:
      'Solve equations involving logarithms.',
  detailedContent:
      'Logarithmic equations can often be solved by rewriting them in exponential form or by applying logarithm laws before solving.',
  keyPoints: [
    'Rewrite in exponential form.',
    'Apply logarithm laws.',
    'Check that answers are valid.',
  ],
  durationMinutes: 25,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l33',
  title: 'Introduction to Functions',
  subjectId: 'math',
  topicTag: 'Functions',
  explanation:
      'Learn what a mathematical function is.',
  detailedContent:
      'A function is a relationship where every input has exactly one output. Functions are used to describe relationships between quantities and are fundamental in algebra and calculus.',
  keyPoints: [
    'Every input has one output.',
    'Functions describe relationships.',
    'Functions can be represented in different ways.',
  ],
  durationMinutes: 16,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l34',
  title: 'Function Notation',
  subjectId: 'math',
  topicTag: 'Functions',
  explanation:
      'Understand how functions are written.',
  detailedContent:
      'Functions are commonly written using notation such as f(x). The notation shows that the output depends on the value of x.',
  keyPoints: [
    'Read f(x) as "f of x".',
    'Replace x with a given value.',
    'Evaluate functions correctly.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l35',
  title: 'Domain and Range',
  subjectId: 'math',
  topicTag: 'Functions',
  explanation:
      'Identify valid inputs and outputs.',
  detailedContent:
      'The domain is the set of all possible input values, while the range is the set of all resulting output values of a function.',
  keyPoints: [
    'Domain = inputs.',
    'Range = outputs.',
    'Some values may be restricted.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l36',
  title: 'Composite and Inverse Functions',
  subjectId: 'math',
  topicTag: 'Functions',
  explanation:
      'Explore advanced relationships between functions.',
  detailedContent:
      'Composite functions combine two or more functions. Inverse functions reverse the effect of another function and return the original input.',
  keyPoints: [
    'Composite functions combine functions.',
    'Inverse functions undo functions.',
    'Not every function has an inverse.',
  ],
  durationMinutes: 25,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l37',
  title: 'Introduction to Graphs',
  subjectId: 'math',
  topicTag: 'Graphs',
  explanation:
      'Learn how graphs represent relationships between variables.',
  detailedContent:
      'Graphs provide a visual representation of mathematical relationships. They help us understand trends, compare values and predict outcomes. The Cartesian plane consists of two perpendicular axes known as the x-axis and y-axis.',
  keyPoints: [
    'Graphs visualize relationships.',
    'The x-axis is horizontal.',
    'The y-axis is vertical.',
  ],
  durationMinutes: 16,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l38',
  title: 'Plotting Coordinates',
  subjectId: 'math',
  topicTag: 'Graphs',
  explanation:
      'Learn how to locate points on the Cartesian plane.',
  detailedContent:
      'Coordinates are written as ordered pairs (x, y). The x-coordinate tells how far to move horizontally, while the y-coordinate tells how far to move vertically.',
  keyPoints: [
    'Coordinates are written as (x, y).',
    'Move horizontally before vertically.',
    'Points identify exact locations.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l39',
  title: 'Gradient and Intercepts',
  subjectId: 'math',
  topicTag: 'Graphs',
  explanation:
      'Understand the steepness of lines and where they cross the axes.',
  detailedContent:
      'The gradient measures how steep a line is. The y-intercept is where a line crosses the vertical axis, while the x-intercept is where it crosses the horizontal axis.',
  keyPoints: [
    'Gradient measures steepness.',
    'The y-intercept crosses the y-axis.',
    'The x-intercept crosses the x-axis.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l40',
  title: 'Drawing Straight-Line Graphs',
  subjectId: 'math',
  topicTag: 'Graphs',
  explanation:
      'Draw graphs from linear equations.',
  detailedContent:
      'Linear equations such as y = mx + c produce straight-line graphs. By calculating several coordinate pairs, the graph can be drawn accurately.',
  keyPoints: [
    'Find several coordinate pairs.',
    'Plot each point carefully.',
    'Join points using a straight line.',
  ],
  durationMinutes: 24,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l41',
  title: 'The Cartesian Plane',
  subjectId: 'math',
  topicTag: 'Coordinate Geometry',
  explanation:
      'Understand the coordinate plane and its four quadrants.',
  detailedContent:
      'The Cartesian plane is formed by the x-axis and y-axis, which divide the plane into four quadrants. Every point on the plane is represented by an ordered pair (x, y).',
  keyPoints: [
    'The x-axis is horizontal.',
    'The y-axis is vertical.',
    'The plane has four quadrants.',
  ],
  durationMinutes: 16,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l42',
  title: 'Finding the Midpoint',
  subjectId: 'math',
  topicTag: 'Coordinate Geometry',
  explanation:
      'Calculate the midpoint between two coordinates.',
  detailedContent:
      'The midpoint divides a line segment into two equal parts. It is found by averaging the x-coordinates and averaging the y-coordinates.',
  keyPoints: [
    'Average the x-values.',
    'Average the y-values.',
    'The midpoint is halfway between two points.',
  ],
  durationMinutes: 18,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l43',
  title: 'Distance Between Two Points',
  subjectId: 'math',
  topicTag: 'Coordinate Geometry',
  explanation:
      'Measure the distance between coordinates.',
  detailedContent:
      'The distance formula is derived from Pythagoras’ theorem and is used to calculate the length of a line segment joining two points.',
  keyPoints: [
    'Uses Pythagoras’ theorem.',
    'Distance is always positive.',
    'Useful for measuring line segments.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l44',
  title: 'Equation of a Straight Line',
  subjectId: 'math',
  topicTag: 'Coordinate Geometry',
  explanation:
      'Write equations for straight lines.',
  detailedContent:
      'A straight line can be represented by the equation y = mx + c, where m is the gradient and c is the y-intercept.',
  keyPoints: [
    'm represents the gradient.',
    'c represents the y-intercept.',
    'Straight lines have constant gradients.',
  ],
  durationMinutes: 24,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l45',
  title: 'Introduction to Trigonometry',
  subjectId: 'math',
  topicTag: 'Trigonometry',
  explanation:
      'Learn the basics of trigonometry and right-angled triangles.',
  detailedContent:
      'Trigonometry is the branch of mathematics that studies the relationship between the sides and angles of triangles. It is widely used in engineering, navigation, architecture and physics.',
  keyPoints: [
    'Trigonometry deals with triangles.',
    'It is mainly used with right-angled triangles.',
    'It relates angles to side lengths.',
  ],
  durationMinutes: 16,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l46',
  title: 'Pythagoras’ Theorem',
  subjectId: 'math',
  topicTag: 'Trigonometry',
  explanation:
      'Find the length of a side in a right-angled triangle.',
  detailedContent:
      'Pythagoras’ theorem states that in a right-angled triangle, the square of the hypotenuse equals the sum of the squares of the other two sides.',
  keyPoints: [
    'Applies only to right triangles.',
    'a² + b² = c²',
    'The hypotenuse is the longest side.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l47',
  title: 'Sine, Cosine and Tangent',
  subjectId: 'math',
  topicTag: 'Trigonometry',
  explanation:
      'Use trigonometric ratios to solve problems.',
  detailedContent:
      'The three primary trigonometric ratios are sine, cosine and tangent. They relate an angle to the lengths of the sides of a right triangle.',
  keyPoints: [
    'SOH',
    'CAH',
    'TOA',
  ],
  durationMinutes: 24,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l48',
  title: 'Angles of Elevation and Depression',
  subjectId: 'math',
  topicTag: 'Trigonometry',
  explanation:
      'Solve practical trigonometry problems.',
  detailedContent:
      'Angles of elevation and depression are used to determine heights and distances. These concepts have many real-world applications in surveying and engineering.',
  keyPoints: [
    'Angle of elevation looks upward.',
    'Angle of depression looks downward.',
    'Apply trigonometric ratios.',
  ],
  durationMinutes: 26,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l49',
  title: 'Perimeter of Shapes',
  subjectId: 'math',
  topicTag: 'Mensuration',
  explanation:
      'Learn how to calculate the distance around two-dimensional shapes.',
  detailedContent:
      'The perimeter of a shape is the total length of all its sides. Different shapes have different formulas, but the basic idea is to add together the lengths of every side.',
  keyPoints: [
    'Perimeter is the total distance around a shape.',
    'Measure all sides in the same unit.',
    'Different shapes have different formulas.',
  ],
  durationMinutes: 16,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l50',
  title: 'Area of Plane Shapes',
  subjectId: 'math',
  topicTag: 'Mensuration',
  explanation:
      'Calculate the space inside common two-dimensional shapes.',
  detailedContent:
      'Area measures the amount of surface inside a shape. Rectangles, triangles, circles and parallelograms each have specific formulas for calculating area.',
  keyPoints: [
    'Area is measured in square units.',
    'Different shapes use different formulas.',
    'Always include the correct unit.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l51',
  title: 'Surface Area of Solids',
  subjectId: 'math',
  topicTag: 'Mensuration',
  explanation:
      'Find the total area covering three-dimensional objects.',
  detailedContent:
      'Surface area is the total area of every face of a three-dimensional object. Cubes, cuboids, cylinders and spheres all have unique surface area formulas.',
  keyPoints: [
    'Surface area covers every face.',
    'Measured in square units.',
    'Useful in packaging and construction.',
  ],
  durationMinutes: 24,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l52',
  title: 'Volume of Solids',
  subjectId: 'math',
  topicTag: 'Mensuration',
  explanation:
      'Calculate the amount of space occupied by solid objects.',
  detailedContent:
      'Volume measures the amount of three-dimensional space inside an object. Different solids have different formulas, depending on their shape.',
  keyPoints: [
    'Volume is measured in cubic units.',
    'Length × Width × Height for cuboids.',
    'Volume measures capacity.',
  ],
  durationMinutes: 25,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l53',
  title: 'Introduction to Statistics',
  subjectId: 'math',
  topicTag: 'Statistics',
  explanation:
      'Learn what statistics is and why it is important.',
  detailedContent:
      'Statistics is the branch of mathematics that involves collecting, organizing, analyzing and interpreting data. It helps us make informed decisions based on evidence.',
  keyPoints: [
    'Statistics deals with data.',
    'Data can be collected in many ways.',
    'Statistics helps us make decisions.',
  ],
  durationMinutes: 16,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l54',
  title: 'Mean, Median and Mode',
  subjectId: 'math',
  topicTag: 'Statistics',
  explanation:
      'Learn the three main measures of central tendency.',
  detailedContent:
      'The mean is the average value, the median is the middle value after arranging the data, and the mode is the value that appears most often.',
  keyPoints: [
    'Mean = average.',
    'Median = middle value.',
    'Mode = most frequent value.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l55',
  title: 'Displaying Data',
  subjectId: 'math',
  topicTag: 'Statistics',
  explanation:
      'Represent data using charts and graphs.',
  detailedContent:
      'Data can be displayed using bar charts, pie charts, histograms, line graphs and frequency tables. Choosing the correct graph makes data easier to understand.',
  keyPoints: [
    'Bar charts compare categories.',
    'Pie charts show proportions.',
    'Line graphs show changes over time.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l56',
  title: 'Range and Data Interpretation',
  subjectId: 'math',
  topicTag: 'Statistics',
  explanation:
      'Measure the spread of data and interpret statistical results.',
  detailedContent:
      'The range is found by subtracting the smallest value from the largest value. Interpreting statistics involves understanding what the data tells us about a situation.',
  keyPoints: [
    'Range = largest − smallest.',
    'Compare data sets.',
    'Draw conclusions from evidence.',
  ],
  durationMinutes: 24,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l57',
  title: 'Introduction to Probability',
  subjectId: 'math',
  topicTag: 'Probability',
  explanation:
      'Learn how probability measures the chance of events occurring.',
  detailedContent:
      'Probability is the likelihood that an event will happen. It is measured on a scale from 0 to 1, where 0 means impossible and 1 means certain. Probability helps us make predictions and informed decisions.',
  keyPoints: [
    'Probability ranges from 0 to 1.',
    '0 means impossible.',
    '1 means certain.',
  ],
  durationMinutes: 16,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l58',
  title: 'Experimental and Theoretical Probability',
  subjectId: 'math',
  topicTag: 'Probability',
  explanation:
      'Compare probability based on experiments and calculations.',
  detailedContent:
      'Experimental probability is based on actual observations or experiments, while theoretical probability is calculated using mathematical reasoning before an experiment takes place.',
  keyPoints: [
    'Experimental probability uses results.',
    'Theoretical probability uses calculations.',
    'More trials improve accuracy.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l59',
  title: 'Independent and Dependent Events',
  subjectId: 'math',
  topicTag: 'Probability',
  explanation:
      'Understand how events affect one another.',
  detailedContent:
      'Independent events do not influence each other, while dependent events change the probability of future events. Understanding this difference is important when solving probability problems.',
  keyPoints: [
    'Independent events do not affect each other.',
    'Dependent events change future probabilities.',
    'Consider previous outcomes carefully.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l60',
  title: 'Tree Diagrams and Combined Probability',
  subjectId: 'math',
  topicTag: 'Probability',
  explanation:
      'Use tree diagrams to solve multi-step probability problems.',
  detailedContent:
      'Tree diagrams organize possible outcomes in sequence, making it easier to calculate combined probabilities for several events occurring one after another.',
  keyPoints: [
    'Tree diagrams organize outcomes.',
    'Multiply probabilities along branches.',
    'Add probabilities for different successful paths.',
  ],
  durationMinutes: 26,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l61',
  title: 'Introduction to Sets',
  subjectId: 'math',
  topicTag: 'Sets',
  explanation:
      'Learn what sets are and how they are represented.',
  detailedContent:
      'A set is a well-defined collection of distinct objects called elements. Sets are commonly represented using curly brackets, for example {1, 2, 3}. They are widely used throughout mathematics, especially in probability, algebra and computer science.',
  keyPoints: [
    'A set is a collection of distinct elements.',
    'Sets are written using curly brackets.',
    'Elements cannot be repeated.',
  ],
  durationMinutes: 16,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l62',
  title: 'Subsets and Universal Sets',
  subjectId: 'math',
  topicTag: 'Sets',
  explanation:
      'Understand subsets and universal sets.',
  detailedContent:
      'A subset is a set whose elements all belong to another larger set. The universal set contains every element being considered in a particular problem.',
  keyPoints: [
    'A subset belongs entirely to another set.',
    'The universal set contains every element.',
    'The empty set is a subset of every set.',
  ],
  durationMinutes: 20,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l63',
  title: 'Union, Intersection and Difference',
  subjectId: 'math',
  topicTag: 'Sets',
  explanation:
      'Perform operations on sets.',
  detailedContent:
      'The union combines all elements from two sets, the intersection contains only common elements, and the difference contains elements found in one set but not the other.',
  keyPoints: [
    'Union combines sets.',
    'Intersection finds common elements.',
    'Difference removes shared elements.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l64',
  title: 'Venn Diagrams',
  subjectId: 'math',
  topicTag: 'Sets',
  explanation:
      'Represent sets visually using diagrams.',
  detailedContent:
      'Venn diagrams use overlapping circles to show relationships between sets. They help visualize unions, intersections, complements and set differences, making problems easier to understand.',
  keyPoints: [
    'Circles represent sets.',
    'Overlapping regions show intersections.',
    'Useful for solving probability questions.',
  ],
  durationMinutes: 24,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l65',
  title: 'Introduction to Matrices',
  subjectId: 'math',
  topicTag: 'Matrices',
  explanation:
      'Learn what matrices are and how they are organized.',
  detailedContent:
      'A matrix is a rectangular arrangement of numbers organized into rows and columns. Matrices are used in mathematics, computer graphics, engineering, economics and data science to organize and manipulate information efficiently.',
  keyPoints: [
    'Matrices consist of rows and columns.',
    'Each number is called an element.',
    'Matrices represent organized data.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l66',
  title: 'Matrix Addition and Subtraction',
  subjectId: 'math',
  topicTag: 'Matrices',
  explanation:
      'Perform basic operations on matrices.',
  detailedContent:
      'Matrices of the same dimensions can be added or subtracted by combining corresponding elements. The matrices must have the same number of rows and columns.',
  keyPoints: [
    'Matrices must have equal dimensions.',
    'Add corresponding elements.',
    'Subtract corresponding elements.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l67',
  title: 'Matrix Multiplication',
  subjectId: 'math',
  topicTag: 'Matrices',
  explanation:
      'Multiply matrices using row and column operations.',
  detailedContent:
      'Matrix multiplication differs from ordinary multiplication. The number of columns in the first matrix must equal the number of rows in the second matrix. Each element is calculated using row-column multiplication.',
  keyPoints: [
    'Check matrix dimensions first.',
    'Multiply rows by columns.',
    'Matrix multiplication is not always commutative.',
  ],
  durationMinutes: 26,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l68',
  title: 'Determinants and Applications',
  subjectId: 'math',
  topicTag: 'Matrices',
  explanation:
      'Understand determinants and simple applications of matrices.',
  detailedContent:
      'The determinant is a special value calculated from a square matrix. It helps determine whether a matrix has an inverse and is useful when solving systems of linear equations.',
  keyPoints: [
    'Only square matrices have determinants.',
    'Determinants help solve equations.',
    'Some matrices have no inverse.',
  ],
  durationMinutes: 28,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l69',
  title: 'Introduction to Vectors',
  subjectId: 'math',
  topicTag: 'Vectors',
  explanation:
      'Learn what vectors are and how they differ from scalars.',
  detailedContent:
      'A vector is a quantity that has both magnitude and direction, while a scalar has only magnitude. Examples of vectors include displacement, velocity and force, whereas distance, mass and time are scalars.',
  keyPoints: [
    'Vectors have magnitude and direction.',
    'Scalars have magnitude only.',
    'Vectors are represented with arrows.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l70',
  title: 'Vector Addition and Subtraction',
  subjectId: 'math',
  topicTag: 'Vectors',
  explanation:
      'Perform basic operations using vectors.',
  detailedContent:
      'Vectors can be added or subtracted graphically or algebraically. When adding vectors, their corresponding components are combined. Subtraction is performed by adding the negative of a vector.',
  keyPoints: [
    'Add corresponding components.',
    'Subtract by adding the negative vector.',
    'Resultant vectors describe combined motion.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l71',
  title: 'Magnitude and Direction',
  subjectId: 'math',
  topicTag: 'Vectors',
  explanation:
      'Calculate the size and direction of vectors.',
  detailedContent:
      'The magnitude of a vector represents its length. Direction indicates where the vector points. Both are important when describing movement and forces.',
  keyPoints: [
    'Magnitude is the vector length.',
    'Direction shows orientation.',
    'Both define a vector completely.',
  ],
  durationMinutes: 24,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l72',
  title: 'Applications of Vectors',
  subjectId: 'math',
  topicTag: 'Vectors',
  explanation:
      'Explore how vectors are used in real life.',
  detailedContent:
      'Vectors are used in physics, engineering, aviation, navigation and computer graphics. They help describe movement, forces and directions accurately.',
  keyPoints: [
    'Vectors model real-world movement.',
    'Used in engineering and physics.',
    'Essential for navigation and graphics.',
  ],
  durationMinutes: 26,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l73',
  title: 'Translations',
  subjectId: 'math',
  topicTag: 'Transformations',
  explanation:
      'Move shapes without changing their size or orientation.',
  detailedContent:
      'A translation slides a shape from one position to another without rotating, reflecting or resizing it. Every point on the shape moves the same distance in the same direction.',
  keyPoints: [
    'A translation is a slide.',
    'Size and shape remain unchanged.',
    'Every point moves equally.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l74',
  title: 'Reflections',
  subjectId: 'math',
  topicTag: 'Transformations',
  explanation:
      'Reflect shapes across a mirror line.',
  detailedContent:
      'A reflection flips a shape over a line called the line of reflection. Every point on the image is the same perpendicular distance from the mirror line as the original point.',
  keyPoints: [
    'Reflection produces a mirror image.',
    'Distances from the mirror line remain equal.',
    'Orientation changes.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l75',
  title: 'Rotations',
  subjectId: 'math',
  topicTag: 'Transformations',
  explanation:
      'Rotate shapes around a fixed point.',
  detailedContent:
      'A rotation turns a shape about a fixed centre through a specified angle. Rotations may be clockwise or anticlockwise while preserving the size and shape of the figure.',
  keyPoints: [
    'Rotations require a centre.',
    'The angle determines the amount of turning.',
    'Shape and size remain unchanged.',
  ],
  durationMinutes: 24,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l76',
  title: 'Enlargements and Combined Transformations',
  subjectId: 'math',
  topicTag: 'Transformations',
  explanation:
      'Resize shapes using scale factors and combine transformations.',
  detailedContent:
      'An enlargement changes the size of a shape using a scale factor while keeping its shape. Transformations may also be combined, such as translating and then reflecting the same figure.',
  keyPoints: [
    'Scale factor determines enlargement.',
    'Shape remains similar.',
    'Multiple transformations can be combined.',
  ],
  durationMinutes: 28,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l77',
  title: 'Percentages',
  subjectId: 'math',
  topicTag: 'Financial Mathematics',
  explanation:
      'Learn how percentages are used to compare values and solve everyday problems.',
  detailedContent:
      'A percentage is a fraction out of one hundred. Percentages are commonly used to describe discounts, examination scores, taxes, profits, interest rates and population growth. Understanding percentages makes financial calculations much easier.',
  keyPoints: [
    'Percent means "out of 100".',
    'Convert between fractions, decimals and percentages.',
    'Percentages are widely used in everyday life.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l78',
  title: 'Profit, Loss and Discounts',
  subjectId: 'math',
  topicTag: 'Financial Mathematics',
  explanation:
      'Calculate profit, loss and discounts in buying and selling.',
  detailedContent:
      'Profit occurs when the selling price is greater than the cost price. Loss occurs when the selling price is lower than the cost price. Discounts reduce the original selling price and are commonly expressed as percentages.',
  keyPoints: [
    'Profit = Selling Price − Cost Price.',
    'Loss = Cost Price − Selling Price.',
    'Discounts reduce prices.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l79',
  title: 'Simple and Compound Interest',
  subjectId: 'math',
  topicTag: 'Financial Mathematics',
  explanation:
      'Understand how money grows over time through interest.',
  detailedContent:
      'Simple interest is calculated only on the original principal, while compound interest is calculated on both the principal and previously earned interest. Compound interest grows money faster over long periods.',
  keyPoints: [
    'Simple interest uses the principal only.',
    'Compound interest earns interest on interest.',
    'Interest is usually expressed annually.',
  ],
  durationMinutes: 26,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l80',
  title: 'Budgeting and Exchange Rates',
  subjectId: 'math',
  topicTag: 'Financial Mathematics',
  explanation:
      'Apply mathematics to personal finance and international currencies.',
  detailedContent:
      'Budgeting helps people manage income and expenses effectively. Exchange rates determine the value of one currency compared with another and are essential for international trade and travel.',
  keyPoints: [
    'Budgets help control spending.',
    'Exchange rates convert currencies.',
    'Financial planning improves decision-making.',
  ],
  durationMinutes: 28,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l81',
  title: 'Introduction to Sequences',
  subjectId: 'math',
  topicTag: 'Sequences and Series',
  explanation:
      'Learn what mathematical sequences are and how patterns are formed.',
  detailedContent:
      'A sequence is an ordered list of numbers that follows a specific rule or pattern. Each number in a sequence is called a term. Sequences can increase, decrease or repeat according to a defined relationship.',
  keyPoints: [
    'A sequence follows a rule.',
    'Each value is called a term.',
    'Patterns help predict future terms.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l82',
  title: 'Arithmetic Sequences',
  subjectId: 'math',
  topicTag: 'Sequences and Series',
  explanation:
      'Understand sequences with a constant difference.',
  detailedContent:
      'An arithmetic sequence has the same difference between consecutive terms. The common difference can be positive or negative. These sequences are widely used in mathematics and finance.',
  keyPoints: [
    'Common difference remains constant.',
    'Find the next term by adding the difference.',
    'Arithmetic sequences form straight-line patterns.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l83',
  title: 'Geometric Sequences',
  subjectId: 'math',
  topicTag: 'Sequences and Series',
  explanation:
      'Study sequences formed by multiplying by a constant ratio.',
  detailedContent:
      'A geometric sequence is formed by multiplying each term by the same constant value called the common ratio. Population growth and compound interest often follow geometric patterns.',
  keyPoints: [
    'Uses a common ratio.',
    'Multiply to obtain the next term.',
    'Growth can be very rapid.',
  ],
  durationMinutes: 24,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l84',
  title: 'Series and the Sum of Terms',
  subjectId: 'math',
  topicTag: 'Sequences and Series',
  explanation:
      'Calculate the sum of arithmetic and geometric series.',
  detailedContent:
      'A series is formed by adding the terms of a sequence together. Formulas allow us to calculate the total without adding every individual term one by one.',
  keyPoints: [
    'A series is the sum of sequence terms.',
    'Arithmetic series have a standard formula.',
    'Geometric series appear in finance and science.',
  ],
  durationMinutes: 28,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l85',
  title: 'Introduction to Calculus',
  subjectId: 'math',
  topicTag: 'Introduction to Calculus',
  explanation:
      'Understand what calculus is and why it is important.',
  detailedContent:
      'Calculus is the branch of mathematics that studies change and motion. It helps scientists and engineers understand how quantities change over time. Calculus is divided into differentiation, which studies rates of change, and integration, which studies accumulation.',
  keyPoints: [
    'Calculus studies change.',
    'Differentiation measures rates of change.',
    'Integration measures accumulation.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l86',
  title: 'Limits and Continuity',
  subjectId: 'math',
  topicTag: 'Introduction to Calculus',
  explanation:
      'Learn how functions behave as values approach a point.',
  detailedContent:
      'A limit describes the value a function approaches as the input approaches a particular number. Continuous functions have no breaks, jumps or holes in their graphs.',
  keyPoints: [
    'Limits describe approaching values.',
    'Continuous graphs have no breaks.',
    'Limits are the foundation of calculus.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l87',
  title: 'Differentiation',
  subjectId: 'math',
  topicTag: 'Introduction to Calculus',
  explanation:
      'Find the rate at which quantities change.',
  detailedContent:
      'Differentiation calculates the gradient or slope of a curve at any point. It is used to study speed, acceleration, growth, optimization and many scientific applications.',
  keyPoints: [
    'Differentiation finds gradients.',
    'The derivative measures change.',
    'Used in physics and engineering.',
  ],
  durationMinutes: 26,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l88',
  title: 'Introduction to Integration',
  subjectId: 'math',
  topicTag: 'Introduction to Calculus',
  explanation:
      'Learn the basics of finding areas under curves.',
  detailedContent:
      'Integration is the reverse of differentiation. It is commonly used to calculate the area under curves, total distance travelled and accumulated quantities.',
  keyPoints: [
    'Integration is the opposite of differentiation.',
    'It calculates accumulated quantities.',
    'Area under curves is a common application.',
  ],
  durationMinutes: 28,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l89',
  title: 'Statements and Truth Values',
  subjectId: 'math',
  topicTag: 'Mathematical Logic',
  explanation:
      'Learn what mathematical statements are and determine whether they are true or false.',
  detailedContent:
      'A mathematical statement is a sentence that is either true or false, but not both. Statements form the foundation of logical reasoning and mathematical proofs. Questions and commands are not considered statements because they cannot be assigned a truth value.',
  keyPoints: [
    'Statements are either true or false.',
    'Questions are not statements.',
    'Truth values are fundamental in logic.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l90',
  title: 'Logical Operators',
  subjectId: 'math',
  topicTag: 'Mathematical Logic',
  explanation:
      'Use logical operators to combine mathematical statements.',
  detailedContent:
      'Logical operators combine statements to create compound statements. Common operators include AND (∧), OR (∨), NOT (¬) and IF...THEN (→). They are widely used in mathematics and computer programming.',
  keyPoints: [
    'AND requires both statements to be true.',
    'OR requires at least one statement to be true.',
    'NOT reverses a truth value.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l91',
  title: 'Truth Tables',
  subjectId: 'math',
  topicTag: 'Mathematical Logic',
  explanation:
      'Construct truth tables for compound statements.',
  detailedContent:
      'Truth tables list every possible combination of truth values for logical statements. They are used to determine whether compound statements are always true, always false or sometimes true.',
  keyPoints: [
    'Truth tables test logical expressions.',
    'Each row represents one possibility.',
    'Useful for proving logical equivalence.',
  ],
  durationMinutes: 24,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l92',
  title: 'Deductive Reasoning and Proof',
  subjectId: 'math',
  topicTag: 'Mathematical Logic',
  explanation:
      'Use logical reasoning to prove mathematical results.',
  detailedContent:
      'Deductive reasoning starts from accepted facts, definitions and rules to reach valid conclusions. Mathematical proofs use deduction to demonstrate that a statement is always true.',
  keyPoints: [
    'Deduction moves from general rules to specific conclusions.',
    'Proofs rely on logical reasoning.',
    'Every proof must follow valid logical steps.',
  ],
  durationMinutes: 28,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l93',
  title: 'Introduction to Mathematical Modelling',
  subjectId: 'math',
  topicTag: 'Mathematical Modelling',
  explanation:
      'Learn how mathematics is used to represent real-world situations.',
  detailedContent:
      'Mathematical modelling is the process of using mathematics to describe, analyze and solve real-life problems. Models simplify complex situations by making assumptions, allowing predictions and informed decisions to be made.',
  keyPoints: [
    'Models represent real-world situations.',
    'Models simplify complex problems.',
    'Mathematics helps make predictions.',
  ],
  durationMinutes: 18,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l94',
  title: 'Variables and Assumptions',
  subjectId: 'math',
  topicTag: 'Mathematical Modelling',
  explanation:
      'Identify variables and assumptions when building models.',
  detailedContent:
      'Variables represent quantities that may change, while assumptions simplify situations to make calculations manageable. Good assumptions make mathematical models useful without making them unrealistic.',
  keyPoints: [
    'Variables can change.',
    'Assumptions simplify calculations.',
    'Reasonable assumptions improve models.',
  ],
  durationMinutes: 22,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l95',
  title: 'Building Mathematical Models',
  subjectId: 'math',
  topicTag: 'Mathematical Modelling',
  explanation:
      'Create equations and formulas that describe real-life situations.',
  detailedContent:
      'A mathematical model may use equations, graphs, tables or functions to represent relationships between variables. Models are commonly used in business, science, engineering and environmental studies.',
  keyPoints: [
    'Use equations to describe relationships.',
    'Graphs help visualize models.',
    'Models solve practical problems.',
  ],
  durationMinutes: 26,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l96',
  title: 'Interpreting and Evaluating Models',
  subjectId: 'math',
  topicTag: 'Mathematical Modelling',
  explanation:
      'Evaluate whether a mathematical model accurately represents reality.',
  detailedContent:
      'After solving a mathematical model, the results must be interpreted in the real-world context. Every model has limitations because assumptions may not perfectly represent reality. Good models are accurate, practical and easy to understand.',
  keyPoints: [
    'Interpret answers in context.',
    'Every model has limitations.',
    'Review assumptions carefully.',
  ],
  durationMinutes: 30,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l97',
  title: 'Reviewing Core Mathematical Concepts',
  subjectId: 'math',
  topicTag: 'Revision and Problem Solving',
  explanation:
      'Review the major concepts learned throughout the Mathematics course.',
  detailedContent:
      'This lesson revisits the key topics studied throughout the curriculum, including algebra, geometry, trigonometry, statistics, probability, financial mathematics and calculus. Reviewing previous concepts strengthens understanding and prepares learners for examinations.',
  keyPoints: [
    'Review important formulas.',
    'Recall key mathematical concepts.',
    'Identify areas needing improvement.',
  ],
  durationMinutes: 20,
  difficulty: 'Easy',
),
LessonModel(
  id: 'math_l98',
  title: 'Strategies for Solving Word Problems',
  subjectId: 'math',
  topicTag: 'Revision and Problem Solving',
  explanation:
      'Learn a structured approach to solving mathematical word problems.',
  detailedContent:
      'Word problems require careful reading and interpretation. Successful problem solving involves identifying known information, choosing appropriate formulas, performing calculations and checking that the answer makes sense.',
  keyPoints: [
    'Understand the question first.',
    'Identify known and unknown values.',
    'Check your final answer.',
  ],
  durationMinutes: 24,
  difficulty: 'Medium',
),
LessonModel(
  id: 'math_l99',
  title: 'Mixed Examination Practice',
  subjectId: 'math',
  topicTag: 'Revision and Problem Solving',
  explanation:
      'Practice solving questions from different areas of Mathematics.',
  detailedContent:
      'This lesson combines algebra, geometry, statistics, probability, trigonometry and financial mathematics into a single practice session. Mixed practice improves confidence and helps students connect concepts learned throughout the course.',
  keyPoints: [
    'Practice multiple topics together.',
    'Improve speed and accuracy.',
    'Identify weak areas.',
  ],
  durationMinutes: 28,
  difficulty: 'Hard',
),
LessonModel(
  id: 'math_l100',
  title: 'Real-World Mathematical Problem Solving',
  subjectId: 'math',
  topicTag: 'Revision and Problem Solving',
  explanation:
      'Apply mathematical knowledge to practical situations.',
  detailedContent:
      'Mathematics is used daily in budgeting, engineering, business, science, architecture, technology and medicine. This lesson demonstrates how combining multiple mathematical concepts helps solve authentic real-world problems and prepares learners for higher education and future careers.',
  keyPoints: [
    'Apply mathematics in everyday life.',
    'Combine different mathematical skills.',
    'Develop critical thinking.',
  ],
  durationMinutes: 30,
  difficulty: 'Hard',
),
  ];

  static final List<QuizModel> quizzes = [
    QuizModel(
  id: 'math_q1',
  title: 'Algebraic Expressions Quiz',
  subjectId: 'math',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'What does a variable represent?',
      options: [
        'A fixed number',
        'An unknown value',
        'A fraction',
        'An equation'
      ],
      correctIndex: 1,
      explanation: 'Variables represent unknown or changing values.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Which is a variable?',
      options: ['5', '8', 'x', '20'],
      correctIndex: 2,
      explanation: 'x is a variable.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'Which is an algebraic expression?',
      options: ['5 + 3', 'x + 5', '10', '7'],
      correctIndex: 1,
      explanation: 'An expression contains variables.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'Which symbol usually represents an unknown number?',
      options: ['%', 'x', '#', '@'],
      correctIndex: 1,
      explanation: 'Letters such as x are commonly used.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'What is a constant?',
      options: [
        'A changing value',
        'A fixed value',
        'A variable',
        'An equation'
      ],
      correctIndex: 1,
      explanation: 'Constants never change.',
    ),
  ],
),
QuizModel(
  id: 'math_q2',
  title: 'Linear Equations Quiz',
  subjectId: 'math',
  xpReward: 100,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Solve x + 4 = 10',
      options: ['4', '5', '6', '14'],
      correctIndex: 2,
      explanation: 'Subtract 4 from both sides.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Solve 3x = 15',
      options: ['3', '4', '5', '6'],
      correctIndex: 2,
      explanation: 'Divide both sides by 3.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'Which operation undoes multiplication?',
      options: [
        'Addition',
        'Subtraction',
        'Division',
        'Powers'
      ],
      correctIndex: 2,
      explanation: 'Division is the inverse of multiplication.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'Solve x − 8 = 12',
      options: ['4', '20', '18', '16'],
      correctIndex: 1,
      explanation: 'Add 8 to both sides.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'A linear equation has the highest exponent of...',
      options: ['0', '1', '2', '3'],
      correctIndex: 1,
      explanation: 'Linear equations have variables raised only to the first power.',
    ),
  ],
),
QuizModel(
  id: 'math_q3',
  title: 'Quadratic Equations Quiz',
  subjectId: 'math',
  xpReward: 120,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'The highest power in a quadratic equation is...',
      options: ['1', '2', '3', '4'],
      correctIndex: 1,
      explanation: 'Quadratic equations have variables raised to the power of 2.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'What is the graph of a quadratic equation called?',
      options: ['Circle', 'Parabola', 'Line', 'Ellipse'],
      correctIndex: 1,
      explanation: 'Quadratic equations produce parabolas.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'In ax² + bx + c = 0, a cannot equal...',
      options: ['1', '2', '0', '-1'],
      correctIndex: 2,
      explanation: 'If a = 0, the equation becomes linear.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'Which method can solve every quadratic equation?',
      options: [
        'Factoring',
        'Guessing',
        'Quadratic Formula',
        'Division'
      ],
      correctIndex: 2,
      explanation: 'The quadratic formula works for all quadratic equations.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'The vertex is a point on a...',
      options: ['Circle', 'Triangle', 'Parabola', 'Rectangle'],
      correctIndex: 2,
      explanation: 'Every parabola has a vertex.',
    ),
  ],
),
QuizModel(
  id: 'math_q4',
  title: 'Simultaneous Equations Quiz',
  subjectId: 'math',
  xpReward: 120,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A simultaneous equation contains...',
      options: [
        'One equation',
        'Two or more related equations',
        'Only fractions',
        'Only graphs'
      ],
      correctIndex: 1,
      explanation:
          'Simultaneous equations involve two or more equations with the same variables.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Which method replaces one variable with another expression?',
      options: [
        'Division',
        'Substitution',
        'Graphing',
        'Factoring'
      ],
      correctIndex: 1,
      explanation:
          'The substitution method replaces one variable with an equivalent expression.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'The elimination method removes...',
      options: [
        'A number',
        'A variable',
        'A fraction',
        'An equation'
      ],
      correctIndex: 1,
      explanation:
          'One variable is eliminated so the other can be solved.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'The solution must satisfy...',
      options: [
        'Only the first equation',
        'Only the second equation',
        'Both equations',
        'Neither equation'
      ],
      correctIndex: 2,
      explanation:
          'The answer must make every equation true.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Which method often requires adding or subtracting equations?',
      options: [
        'Substitution',
        'Elimination',
        'Factorization',
        'Estimation'
      ],
      correctIndex: 1,
      explanation:
          'Elimination works by removing one variable through addition or subtraction.',
    ),
  ],
),
QuizModel(
  id: 'math_q5',
  title: 'Inequalities Quiz',
  subjectId: 'math',
  xpReward: 120,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which symbol means "greater than"?',
      options: ['<', '>', '=', '≤'],
      correctIndex: 1,
      explanation: '> means greater than.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'When multiplying an inequality by a negative number, you must...',
      options: [
        'Keep the sign the same',
        'Reverse the inequality sign',
        'Add one',
        'Square both sides'
      ],
      correctIndex: 1,
      explanation: 'The inequality sign must be reversed.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'A closed circle on a number line means...',
      options: [
        'The value is excluded',
        'The value is included',
        'The graph ends',
        'The solution is incorrect'
      ],
      correctIndex: 1,
      explanation: 'A closed circle means the endpoint is included.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'Which symbol means "less than or equal to"?',
      options: ['≥', '≤', '<', '>'],
      correctIndex: 1,
      explanation: '≤ means less than or equal to.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'An inequality usually has...',
      options: [
        'One exact answer',
        'Many possible solutions',
        'No solution',
        'Only negative answers'
      ],
      correctIndex: 1,
      explanation: 'Most inequalities have a range of solutions.',
    ),
  ],
),
QuizModel(
  id: 'math_q6',
  title: 'Indices Quiz',
  subjectId: 'math',
  xpReward: 120,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'What is 2³?',
      options: ['6', '8', '9', '12'],
      correctIndex: 1,
      explanation: '2 × 2 × 2 = 8.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Simplify x² × x³.',
      options: ['x⁵', 'x⁶', 'x¹', 'x⁹'],
      correctIndex: 0,
      explanation: 'Add the exponents.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'What is 5⁰?',
      options: ['0', '1', '5', '10'],
      correctIndex: 1,
      explanation: 'Any non-zero number to the power of zero equals one.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'What does 10⁶ represent?',
      options: [
        'One thousand',
        'One million',
        'One hundred',
        'Ten million'
      ],
      correctIndex: 1,
      explanation: '10⁶ equals 1,000,000.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'What is x⁵ ÷ x²?',
      options: ['x²', 'x³', 'x⁷', 'x¹⁰'],
      correctIndex: 1,
      explanation: 'Subtract the exponents: 5 − 2 = 3.',
    ),
  ],
),
QuizModel(
  id: 'math_q7',
  title: 'Surds Quiz',
  subjectId: 'math',
  xpReward: 130,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which of the following is a surd?',
      options: ['√2', '√16', '25', '100'],
      correctIndex: 0,
      explanation: '√2 cannot be simplified into a whole number.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Simplify √36.',
      options: ['3', '6', '9', '12'],
      correctIndex: 1,
      explanation: '√36 = 6.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'Simplify √18.',
      options: ['2√2', '3√2', '4√2', '6√2'],
      correctIndex: 1,
      explanation: '√18 = √(9×2) = 3√2.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'Like surds have...',
      options: [
        'The same coefficient',
        'The same radical part',
        'The same denominator',
        'The same exponent'
      ],
      correctIndex: 1,
      explanation: 'Like surds have identical radical parts.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Why do we rationalize a denominator?',
      options: [
        'To make calculations easier',
        'To increase the numerator',
        'To change the fraction',
        'To remove brackets'
      ],
      correctIndex: 0,
      explanation: 'A rational denominator makes expressions easier to work with.',
    ),
  ],
),
QuizModel(
  id: 'math_q8',
  title: 'Logarithms Quiz',
  subjectId: 'math',
  xpReward: 140,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A logarithm is the inverse of...',
      options: [
        'Addition',
        'Multiplication',
        'Exponents',
        'Fractions'
      ],
      correctIndex: 2,
      explanation: 'Logarithms undo exponents.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'log₁₀(100) equals...',
      options: ['1', '2', '10', '100'],
      correctIndex: 1,
      explanation: '10² = 100.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'According to the product law, log(ab) =',
      options: [
        'log(a) − log(b)',
        'log(a) + log(b)',
        'log(a) × log(b)',
        '2log(a)'
      ],
      correctIndex: 1,
      explanation: 'The product law adds logarithms.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'The change of base formula is mainly used...',
      options: [
        'To simplify fractions',
        'To use calculators',
        'To find square roots',
        'To solve inequalities'
      ],
      correctIndex: 1,
      explanation: 'It allows any logarithm to be evaluated using a calculator.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'log₂(8) equals...',
      options: ['2', '3', '4', '8'],
      correctIndex: 1,
      explanation: '2³ = 8.',
    ),
  ],
),
QuizModel(
  id: 'math_q9',
  title: 'Functions Quiz',
  subjectId: 'math',
  xpReward: 140,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A function assigns...',
      options: [
        'Many outputs to one input',
        'Exactly one output to each input',
        'No outputs',
        'Random outputs'
      ],
      correctIndex: 1,
      explanation: 'Every input has exactly one output.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'In f(x), x represents the...',
      options: [
        'Output',
        'Input',
        'Graph',
        'Equation'
      ],
      correctIndex: 1,
      explanation: 'x is the input of the function.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'The set of all possible inputs is called the...',
      options: [
        'Range',
        'Graph',
        'Domain',
        'Relation'
      ],
      correctIndex: 2,
      explanation: 'The domain contains every valid input.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'The set of all outputs is called the...',
      options: [
        'Range',
        'Domain',
        'Equation',
        'Variable'
      ],
      correctIndex: 0,
      explanation: 'The range contains all outputs.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'An inverse function...',
      options: [
        'Squares numbers',
        'Adds variables',
        'Reverses another function',
        'Creates graphs'
      ],
      correctIndex: 2,
      explanation: 'Inverse functions undo the original function.',
    ),
  ],
),
QuizModel(
  id: 'math_q10',
  title: 'Graphs Quiz',
  subjectId: 'math',
  xpReward: 150,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which axis is horizontal?',
      options: [
        'y-axis',
        'x-axis',
        'z-axis',
        'Number line'
      ],
      correctIndex: 1,
      explanation: 'The x-axis is horizontal.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Coordinates are written as...',
      options: [
        '(y, x)',
        '(x, y)',
        '[x, y]',
        '{x, y}'
      ],
      correctIndex: 1,
      explanation: 'Coordinates are written in the order (x, y).',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'The gradient tells us...',
      options: [
        'The colour of the graph',
        'The steepness of the line',
        'The intercept',
        'The scale'
      ],
      correctIndex: 1,
      explanation: 'The gradient measures how steep a line is.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'The equation y = mx + c represents...',
      options: [
        'A circle',
        'A parabola',
        'A straight line',
        'A triangle'
      ],
      correctIndex: 2,
      explanation: 'y = mx + c is the equation of a straight line.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'The y-intercept is where the graph crosses...',
      options: [
        'The x-axis',
        'The y-axis',
        'Both axes',
        'Neither axis'
      ],
      correctIndex: 1,
      explanation: 'The y-intercept is where the graph crosses the y-axis.',
    ),
  ],
),
QuizModel(
  id: 'math_q11',
  title: 'Coordinate Geometry Quiz',
  subjectId: 'math',
  xpReward: 150,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'How many quadrants are on the Cartesian plane?',
      options: ['2', '3', '4', '5'],
      correctIndex: 2,
      explanation: 'The Cartesian plane has four quadrants.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'The midpoint lies...',
      options: [
        'Outside the line',
        'Halfway between two points',
        'At the origin',
        'On the x-axis only'
      ],
      correctIndex: 1,
      explanation: 'A midpoint divides a line into two equal parts.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'Which theorem is used in the distance formula?',
      options: [
        'Newton’s Law',
        'Pythagoras’ Theorem',
        'Binomial Theorem',
        'Probability Rule'
      ],
      correctIndex: 1,
      explanation: 'The distance formula comes from Pythagoras’ theorem.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'In y = mx + c, m represents...',
      options: [
        'The midpoint',
        'The gradient',
        'The intercept',
        'The origin'
      ],
      correctIndex: 1,
      explanation: 'm is the gradient (slope).',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'An ordered pair is written as...',
      options: [
        '(x, y)',
        '(y, x)',
        '[x, y]',
        '{x, y}'
      ],
      correctIndex: 0,
      explanation: 'Coordinates are written in the form (x, y).',
    ),
  ],
),
QuizModel(
  id: 'math_q12',
  title: 'Trigonometry Quiz',
  subjectId: 'math',
  xpReward: 160,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Trigonometry mainly studies...',
      options: [
        'Circles',
        'Triangles',
        'Squares',
        'Fractions'
      ],
      correctIndex: 1,
      explanation: 'Trigonometry focuses on triangles.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Pythagoras’ theorem applies to...',
      options: [
        'All triangles',
        'Right-angled triangles',
        'Equilateral triangles',
        'Circles'
      ],
      correctIndex: 1,
      explanation: 'Only right-angled triangles satisfy Pythagoras’ theorem.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'Which mnemonic helps remember trigonometric ratios?',
      options: [
        'BODMAS',
        'SOH CAH TOA',
        'PEMDAS',
        'FOIL'
      ],
      correctIndex: 1,
      explanation: 'SOH CAH TOA represents sine, cosine and tangent.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'The longest side of a right triangle is called...',
      options: [
        'Base',
        'Height',
        'Hypotenuse',
        'Radius'
      ],
      correctIndex: 2,
      explanation: 'The hypotenuse is opposite the right angle.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'An angle of elevation is measured...',
      options: [
        'Downward from the horizontal',
        'Upward from the horizontal',
        'Vertically',
        'Inside a circle'
      ],
      correctIndex: 1,
      explanation: 'Angles of elevation are measured upward from a horizontal line.',
    ),
  ],
),
QuizModel(
  id: 'math_q13',
  title: 'Mensuration Quiz',
  subjectId: 'math',
  xpReward: 160,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Perimeter measures...',
      options: [
        'Space inside a shape',
        'Distance around a shape',
        'Height of a shape',
        'Weight of a shape'
      ],
      correctIndex: 1,
      explanation: 'Perimeter is the total distance around a shape.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Area is measured in...',
      options: [
        'Metres',
        'Square units',
        'Cubic units',
        'Litres'
      ],
      correctIndex: 1,
      explanation: 'Area is measured in square units.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'Volume is measured in...',
      options: [
        'Square units',
        'Cubic units',
        'Degrees',
        'Centimetres only'
      ],
      correctIndex: 1,
      explanation: 'Volume uses cubic units.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'Which formula finds the volume of a cuboid?',
      options: [
        'Length × Width',
        'Length × Width × Height',
        'πr²',
        '2πr'
      ],
      correctIndex: 1,
      explanation: 'Multiply the three dimensions together.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Surface area measures...',
      options: [
        'The inside of an object',
        'The total outside area of an object',
        'The perimeter',
        'The height only'
      ],
      correctIndex: 1,
      explanation: 'Surface area is the total area covering the outside of a solid.',
    ),
  ],
),
QuizModel(
  id: 'math_q14',
  title: 'Statistics Quiz',
  subjectId: 'math',
  xpReward: 170,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Statistics is mainly concerned with...',
      options: [
        'Shapes',
        'Data',
        'Equations',
        'Fractions'
      ],
      correctIndex: 1,
      explanation: 'Statistics is the study of data.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'The average of a set of numbers is called the...',
      options: [
        'Median',
        'Mode',
        'Mean',
        'Range'
      ],
      correctIndex: 2,
      explanation: 'The mean is the average.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'The mode is...',
      options: [
        'The smallest value',
        'The middle value',
        'The value that appears most often',
        'The average'
      ],
      correctIndex: 2,
      explanation: 'The mode is the most frequent value.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'The range is calculated by...',
      options: [
        'Adding all values',
        'Largest − Smallest',
        'Finding the middle value',
        'Counting the values'
      ],
      correctIndex: 1,
      explanation: 'Subtract the smallest value from the largest.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Which graph is best for showing parts of a whole?',
      options: [
        'Line graph',
        'Pie chart',
        'Histogram',
        'Scatter plot'
      ],
      correctIndex: 1,
      explanation: 'Pie charts show proportions of a whole.',
    ),
  ],
),
QuizModel(
  id: 'math_q15',
  title: 'Probability Quiz',
  subjectId: 'math',
  xpReward: 170,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A probability of 0 means an event is...',
      options: [
        'Likely',
        'Certain',
        'Impossible',
        'Unlikely'
      ],
      correctIndex: 2,
      explanation: 'A probability of 0 means the event cannot happen.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'The probability of a certain event is...',
      options: [
        '0',
        '0.5',
        '1',
        '10'
      ],
      correctIndex: 2,
      explanation: 'A certain event always has probability 1.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'Experimental probability is based on...',
      options: [
        'Guesswork',
        'Observed results',
        'Algebra',
        'Geometry'
      ],
      correctIndex: 1,
      explanation: 'Experimental probability uses actual observations.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'Independent events...',
      options: [
        'Always happen together',
        'Never happen',
        'Do not affect each other',
        'Must be equally likely'
      ],
      correctIndex: 2,
      explanation: 'The outcome of one event does not influence the other.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Tree diagrams are mainly used to...',
      options: [
        'Draw graphs',
        'Organize possible outcomes',
        'Find gradients',
        'Measure angles'
      ],
      correctIndex: 1,
      explanation: 'Tree diagrams help organize multiple possible outcomes.',
    ),
  ],
),
QuizModel(
  id: 'math_q16',
  title: 'Sets Quiz',
  subjectId: 'math',
  xpReward: 180,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A set is...',
      options: [
        'A mathematical equation',
        'A collection of distinct elements',
        'A graph',
        'A fraction'
      ],
      correctIndex: 1,
      explanation: 'A set is a collection of distinct elements.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'The symbol ∪ represents...',
      options: [
        'Intersection',
        'Subset',
        'Union',
        'Difference'
      ],
      correctIndex: 2,
      explanation: '∪ means union.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'The symbol ∩ represents...',
      options: [
        'Union',
        'Intersection',
        'Complement',
        'Subset'
      ],
      correctIndex: 1,
      explanation: '∩ means intersection.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'A Venn diagram is mainly used to...',
      options: [
        'Solve equations',
        'Draw triangles',
        'Show relationships between sets',
        'Measure angles'
      ],
      correctIndex: 2,
      explanation: 'Venn diagrams visually represent relationships between sets.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'The universal set contains...',
      options: [
        'Only one element',
        'Every element under consideration',
        'Only common elements',
        'No elements'
      ],
      correctIndex: 1,
      explanation: 'The universal set contains every element relevant to the problem.',
    ),
  ],
),
QuizModel(
  id: 'math_q17',
  title: 'Matrices Quiz',
  subjectId: 'math',
  xpReward: 180,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A matrix is arranged in...',
      options: [
        'Angles and lines',
        'Rows and columns',
        'Circles',
        'Graphs'
      ],
      correctIndex: 1,
      explanation: 'Matrices are rectangular arrays of rows and columns.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Two matrices can only be added if they...',
      options: [
        'Contain the same numbers',
        'Have the same dimensions',
        'Are square matrices',
        'Have equal determinants'
      ],
      correctIndex: 1,
      explanation: 'Matrix addition requires identical dimensions.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'For matrix multiplication, the number of...',
      options: [
        'Rows must always be equal',
        'Columns of the first matrix must equal rows of the second',
        'Columns must always be equal',
        'Rows of both matrices must be equal'
      ],
      correctIndex: 1,
      explanation: 'This is the condition for matrix multiplication.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'A determinant can only be calculated for...',
      options: [
        'Rectangular matrices',
        'Square matrices',
        'Column matrices',
        'Row matrices'
      ],
      correctIndex: 1,
      explanation: 'Only square matrices have determinants.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Matrices are commonly used in...',
      options: [
        'Computer graphics',
        'Engineering',
        'Data science',
        'All of the above'
      ],
      correctIndex: 3,
      explanation: 'Matrices are widely used across many scientific fields.',
    ),
  ],
),
QuizModel(
  id: 'math_q18',
  title: 'Vectors Quiz',
  subjectId: 'math',
  xpReward: 190,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A vector has...',
      options: [
        'Magnitude only',
        'Direction only',
        'Magnitude and direction',
        'Neither'
      ],
      correctIndex: 2,
      explanation: 'Vectors have both magnitude and direction.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Which of these is a scalar quantity?',
      options: [
        'Velocity',
        'Force',
        'Displacement',
        'Mass'
      ],
      correctIndex: 3,
      explanation: 'Mass has magnitude only.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'Vectors are commonly represented using...',
      options: [
        'Circles',
        'Arrows',
        'Squares',
        'Triangles'
      ],
      correctIndex: 1,
      explanation: 'Vectors are drawn as arrows.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'The magnitude of a vector describes...',
      options: [
        'Its colour',
        'Its direction',
        'Its length',
        'Its angle only'
      ],
      correctIndex: 2,
      explanation: 'Magnitude refers to the vector\'s size or length.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Vectors are widely used in...',
      options: [
        'Physics',
        'Navigation',
        'Engineering',
        'All of the above'
      ],
      correctIndex: 3,
      explanation: 'Vectors are fundamental in many scientific fields.',
    ),
  ],
),
QuizModel(
  id: 'math_q19',
  title: 'Transformations Quiz',
  subjectId: 'math',
  xpReward: 190,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A translation is also called...',
      options: [
        'A flip',
        'A slide',
        'A turn',
        'An enlargement'
      ],
      correctIndex: 1,
      explanation: 'A translation slides a shape from one location to another.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'A reflection produces...',
      options: [
        'A larger shape',
        'A mirror image',
        'A rotated image',
        'A smaller shape'
      ],
      correctIndex: 1,
      explanation: 'Reflections create mirror images.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'A rotation requires...',
      options: [
        'A centre of rotation',
        'A scale factor',
        'A mirror line',
        'A graph'
      ],
      correctIndex: 0,
      explanation: 'Every rotation has a centre.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'An enlargement changes...',
      options: [
        'Only the colour',
        'Only the direction',
        'The size using a scale factor',
        'The number of sides'
      ],
      correctIndex: 2,
      explanation: 'Enlargement changes size while preserving shape.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Which transformation flips a shape?',
      options: [
        'Translation',
        'Reflection',
        'Rotation',
        'Enlargement'
      ],
      correctIndex: 1,
      explanation: 'A reflection flips a shape over a mirror line.',
    ),
  ],
),
QuizModel(
  id: 'math_q20',
  title: 'Financial Mathematics Quiz',
  subjectId: 'math',
  xpReward: 200,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A percentage represents...',
      options: [
        'Out of 10',
        'Out of 50',
        'Out of 100',
        'Out of 1000'
      ],
      correctIndex: 2,
      explanation: 'Percent means "per hundred".',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Profit occurs when...',
      options: [
        'Cost price is greater than selling price',
        'Selling price is greater than cost price',
        'Selling price equals cost price',
        'There is no discount'
      ],
      correctIndex: 1,
      explanation: 'Profit is made when the selling price exceeds the cost price.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'Compound interest differs from simple interest because...',
      options: [
        'It is always smaller',
        'It earns interest on previous interest',
        'It ignores the principal',
        'It only lasts one year'
      ],
      correctIndex: 1,
      explanation: 'Compound interest is calculated on both the principal and accumulated interest.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'A budget helps people...',
      options: [
        'Spend without limits',
        'Manage income and expenses',
        'Increase taxes',
        'Measure distance'
      ],
      correctIndex: 1,
      explanation: 'Budgets help people plan and control their finances.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Exchange rates are used to...',
      options: [
        'Measure temperature',
        'Convert currencies',
        'Find percentages',
        'Calculate area'
      ],
      correctIndex: 1,
      explanation: 'Exchange rates determine the value of one currency relative to another.',
    ),
  ],
),
QuizModel(
  id: 'math_q21',
  title: 'Sequences and Series Quiz',
  subjectId: 'math',
  xpReward: 200,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A sequence is...',
      options: [
        'A random list of numbers',
        'An ordered pattern of numbers',
        'A graph',
        'An equation'
      ],
      correctIndex: 1,
      explanation: 'Sequences follow a definite rule or pattern.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'An arithmetic sequence has...',
      options: [
        'A common ratio',
        'A common difference',
        'No pattern',
        'Equal terms'
      ],
      correctIndex: 1,
      explanation: 'Arithmetic sequences have a constant difference.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'A geometric sequence uses...',
      options: [
        'Addition',
        'Subtraction',
        'Multiplication by a constant ratio',
        'Division by zero'
      ],
      correctIndex: 2,
      explanation: 'Geometric sequences multiply by the same ratio.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'A series is...',
      options: [
        'A graph',
        'The sum of sequence terms',
        'A matrix',
        'A probability'
      ],
      correctIndex: 1,
      explanation: 'A series is obtained by adding sequence terms.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Compound interest commonly follows...',
      options: [
        'Arithmetic sequences',
        'Geometric sequences',
        'Quadratic equations',
        'Linear equations'
      ],
      correctIndex: 1,
      explanation: 'Compound interest grows geometrically.',
    ),
  ],
),
QuizModel(
  id: 'math_q22',
  title: 'Introduction to Calculus Quiz',
  subjectId: 'math',
  xpReward: 210,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Calculus mainly studies...',
      options: [
        'Shapes',
        'Change',
        'Fractions',
        'Statistics'
      ],
      correctIndex: 1,
      explanation: 'Calculus is the mathematics of change.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Differentiation is used to find...',
      options: [
        'Area',
        'Volume',
        'Rate of change',
        'Probability'
      ],
      correctIndex: 2,
      explanation: 'Differentiation measures rates of change.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'Integration is commonly used to calculate...',
      options: [
        'Angles',
        'Areas under curves',
        'Percentages',
        'Matrices'
      ],
      correctIndex: 1,
      explanation: 'Integration finds accumulated quantities such as area.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'A continuous graph has...',
      options: [
        'Many breaks',
        'No breaks',
        'Only straight lines',
        'Only circles'
      ],
      correctIndex: 1,
      explanation: 'Continuous graphs have no breaks or jumps.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Calculus is widely used in...',
      options: [
        'Engineering',
        'Physics',
        'Economics',
        'All of the above'
      ],
      correctIndex: 3,
      explanation: 'Calculus has applications across many fields.',
    ),
  ],
),
QuizModel(
  id: 'math_q23',
  title: 'Mathematical Logic Quiz',
  subjectId: 'math',
  xpReward: 210,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'A mathematical statement must...',
      options: [
        'Ask a question',
        'Have a truth value',
        'Contain numbers',
        'Be an equation'
      ],
      correctIndex: 1,
      explanation: 'Every mathematical statement is either true or false.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'The logical operator AND is true when...',
      options: [
        'Both statements are true',
        'One statement is true',
        'Both statements are false',
        'Either statement is false'
      ],
      correctIndex: 0,
      explanation: 'AND requires both statements to be true.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'Truth tables are used to...',
      options: [
        'Solve equations',
        'Evaluate logical statements',
        'Draw graphs',
        'Calculate percentages'
      ],
      correctIndex: 1,
      explanation: 'Truth tables determine the truth values of logical expressions.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'The NOT operator...',
      options: [
        'Combines statements',
        'Reverses a truth value',
        'Adds statements',
        'Multiplies statements'
      ],
      correctIndex: 1,
      explanation: 'NOT changes true to false and false to true.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Mathematical proofs mainly use...',
      options: [
        'Guessing',
        'Deductive reasoning',
        'Estimation',
        'Measurement'
      ],
      correctIndex: 1,
      explanation: 'Proofs rely on deductive reasoning.',
    ),
  ],
),
QuizModel(
  id: 'math_q24',
  title: 'Mathematical Modelling Quiz',
  subjectId: 'math',
  xpReward: 220,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Mathematical modelling is mainly used to...',
      options: [
        'Decorate graphs',
        'Represent real-world situations',
        'Draw circles',
        'Memorize formulas'
      ],
      correctIndex: 1,
      explanation: 'Models represent real-world problems mathematically.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Variables are quantities that...',
      options: [
        'Never change',
        'Can change',
        'Are always equal',
        'Must be negative'
      ],
      correctIndex: 1,
      explanation: 'Variables represent changing quantities.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'Assumptions are made to...',
      options: [
        'Complicate calculations',
        'Simplify problems',
        'Remove variables',
        'Avoid mathematics'
      ],
      correctIndex: 1,
      explanation: 'Assumptions make problems easier to model.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'Which can be used as a mathematical model?',
      options: [
        'Equations',
        'Graphs',
        'Tables',
        'All of the above'
      ],
      correctIndex: 3,
      explanation: 'Mathematical models can take many forms.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'Every mathematical model...',
      options: [
        'Is always perfect',
        'Has limitations',
        'Never uses assumptions',
        'Works for every situation'
      ],
      correctIndex: 1,
      explanation: 'Every model has limitations because reality is complex.',
    ),
  ],
),
QuizModel(
  id: 'math_q25',
  title: 'Final Mathematics Assessment',
  subjectId: 'math',
  xpReward: 250,
  questions: [
    QuizQuestion(
      id: 'q1',
      question: 'Which branch of mathematics studies chance?',
      options: [
        'Geometry',
        'Probability',
        'Calculus',
        'Algebra'
      ],
      correctIndex: 1,
      explanation: 'Probability studies the likelihood of events.',
    ),
    QuizQuestion(
      id: 'q2',
      question: 'Which transformation flips a shape across a line?',
      options: [
        'Translation',
        'Rotation',
        'Reflection',
        'Enlargement'
      ],
      correctIndex: 2,
      explanation: 'A reflection creates a mirror image.',
    ),
    QuizQuestion(
      id: 'q3',
      question: 'The average of a data set is called the...',
      options: [
        'Median',
        'Mode',
        'Mean',
        'Range'
      ],
      correctIndex: 2,
      explanation: 'The mean is the arithmetic average.',
    ),
    QuizQuestion(
      id: 'q4',
      question: 'Which topic helps calculate money earned on savings?',
      options: [
        'Statistics',
        'Financial Mathematics',
        'Geometry',
        'Vectors'
      ],
      correctIndex: 1,
      explanation: 'Interest calculations belong to Financial Mathematics.',
    ),
    QuizQuestion(
      id: 'q5',
      question: 'The best way to improve mathematical problem-solving is to...',
      options: [
        'Memorize answers only',
        'Practice regularly using different question types',
        'Avoid difficult questions',
        'Skip calculations'
      ],
      correctIndex: 1,
      explanation: 'Consistent practice develops mathematical reasoning and confidence.',
    ),
  ],
),
  ];
}
