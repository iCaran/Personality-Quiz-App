// source -- https://github.com/NerdiOrg/Python-IPIP-BFFM/blob/master/ipip-bffm.py

const q = [
  {"question": "Am the life of the party.", "type": 1, "math": "+"},
  {"question": "Feel little concern for others.", "type": 2, "math": "-"},
  {"question": "Am always prepared.", "type": 3, "math": "+"},
  {"question": "Get stressed out easily.", "type": 4, "math": "-"},
  {"question": "Have a rich vocabulary.", "type": 5, "math": "+"},
  {"question": "Don't talk a lot.", "type": 1, "math": "-"},
  {"question": "Am interested in people.", "type": 2, "math": "+"},
  {"question": "Leave my belongings around.", "type": 3, "math": "-"},
  {"question": "Am relaxed most of the time.", "type": 4, "math": "+"},
  {
    "question": "Have difficulty understanding abstract ideas.",
    "type": 5,
    "math": "-"
  },
  {"question": "Feel comfortable around people.", "type": 1, "math": "+"},
  {"question": "Insult people.", "type": 2, "math": "-"},
  {"question": "Pay attention to details.", "type": 3, "math": "+"},
  {"question": "Worry about things.", "type": 4, "math": "-"},
  {"question": "Have a vivid imagination.", "type": 5, "math": "+"},
  {"question": "Keep in the background.", "type": 1, "math": "-"},
  {"question": "Sympathize with others' feelings.", "type": 2, "math": "+"},
  {"question": "Make a mess of things.", "type": 3, "math": "-"},
  {"question": "Seldom feel blue.", "type": 4, "math": "+"},
  {"question": "Am not interested in abstract ideas.", "type": 5, "math": "-"},
  {"question": "Start conversations.", "type": 1, "math": "+"},
  {
    "question": "Am not interested in other people's problems.",
    "type": 2,
    "math": "-"
  },
  {"question": "Get chores done right away.", "type": 3, "math": "+"},
  {"question": "Am easily disturbed.", "type": 4, "math": "-"},
  {"question": "Have excellent ideas.", "type": 5, "math": "+"},
  {"question": "Have little to say.", "type": 1, "math": "-"},
  {"question": "Have a soft heart.", "type": 2, "math": "+"},
  {
    "question": "Often forget to put things back in their proper place.",
    "type": 3,
    "math": "-"
  },
  {"question": "Get upset easily.", "type": 4, "math": "-"},
  {"question": "Do not have a good imagination.", "type": 5, "math": "-"},
  {
    "question": "Talk to a lot of different people at parties.",
    "type": 1,
    "math": "+"
  },
  {"question": "Am not really interested in others.", "type": 2, "math": "-"},
  {"question": "Like order.", "type": 3, "math": "+"},
  {"question": "Change my mood a lot.", "type": 4, "math": "-"},
  {"question": "Am quick to understand things.", "type": 5, "math": "+"},
  {
    "question": "Don't like to draw attention to myself.",
    "type": 1,
    "math": "-"
  },
  {"question": "Take time out for others.", "type": 2, "math": "+"},
  {"question": "Shirk my duties.", "type": 3, "math": "-"},
  {"question": "Have frequent mood swings.", "type": 4, "math": "-"},
  {"question": "Use difficult words.", "type": 5, "math": "+"},
  {
    "question": "Don't mind being the center of attention.",
    "type": 1,
    "math": "+"
  },
  {"question": "Feel others' emotions.", "type": 2, "math": "+"},
  {"question": "Follow a schedule.", "type": 3, "math": "+"},
  {"question": "Get irritated easily.", "type": 4, "math": "-"},
  {"question": "Spend time reflecting on things.", "type": 5, "math": "+"},
  {"question": "Am quiet around strangers.", "type": 1, "math": "-"},
  {"question": "Make people feel at ease.", "type": 2, "math": "+"},
  {"question": "Am exacting in my work.", "type": 3, "math": "+"},
  {"question": "Often feel blue.", "type": 4, "math": "-"},
  {"question": "Am full of ideas.", "type": 5, "math": "+"}
];
