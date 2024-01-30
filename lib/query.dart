String query(List s) {
  return '''The IPIP BFFM (International Personality Item Pool Big Five Factor Markers) personality test is universally recognized as an established standard and assessment evaluation method. The general consensus in academic psychology is that there are five fundamental personality traits. This model is assumed in most personality research, and is the basis of many of the most well regarded tests employed by psychologists who maintain close connections with academia. The "big five" tend to not be popular in consumer focused personality assessment or self-help because to many people the feedback of the model seems relatively basic. This test uses public domain scales from the International Personality Item Pool.

Such a test was conducted and here is the list of questions:

{"question":"Am the life of the party.", "type":1, "math":"+"},
   {"question":"Feel little concern for others.", "type":2, "math":"-"},
   {"question":"Am always prepared.", "type":3, "math":"+"},
   {"question":"Get stressed out easily.", "type":4, "math":"-"},
   {"question":"Have a rich vocabulary.", "type":5, "math":"+"},
   {"question":"Don't talk a lot.", "type":1, "math":"-"},
   {"question":"Am interested in people.", "type":2, "math":"+"},
   {"question":"Leave my belongings around.", "type":3, "math":"-"},
   {"question":"Am relaxed most of the time.", "type":4, "math":"+"},
   {"question":"Have difficulty understanding abstract ideas.", "type":5, "math":"-"},
   {"question":"Feel comfortable around people.", "type":1, "math":"+"},
   {"question":"Insult people.", "type":2, "math":"-"},
   {"question":"Pay attention to details.", "type":3, "math":"+"},
   {"question":"Worry about things.", "type":4, "math":"-"},
   {"question":"Have a vivid imagination.", "type":5, "math":"+"},
   {"question":"Keep in the background.", "type":1, "math":"-"},
   {"question":"Sympathize with others' feelings.", "type":2, "math":"+"},
   {"question":"Make a mess of things.", "type":3, "math":"-"},
   {"question":"Seldom feel blue.", "type":4, "math":"+"},
   {"question":"Am not interested in abstract ideas.", "type":5, "math":"-"},
   {"question":"Start conversations.", "type":1, "math":"+"},
   {"question":"Am not interested in other people's problems.", "type":2, "math":"-"},
   {"question":"Get chores done right away.", "type":3, "math":"+"},
   {"question":"Am easily disturbed.", "type":4, "math":"-"},
   {"question":"Have excellent ideas.", "type":5, "math":"+"},
   {"question":"Have little to say.", "type":1, "math":"-"},
   {"question":"Have a soft heart.", "type":2, "math":"+"},
   {"question":"Often forget to put things back in their proper place.", "type":3, "math":"-"},
   {"question":"Get upset easily.", "type":4, "math":"-"},
   {"question":"Do not have a good imagination.", "type":5, "math":"-"},
   {"question":"Talk to a lot of different people at parties.", "type":1, "math":"+"},
   {"question":"Am not really interested in others.", "type":2, "math":"-"},
   {"question":"Like order.", "type":3, "math":"+"},
   {"question":"Change my mood a lot.", "type":4, "math":"-"},
   {"question":"Am quick to understand things.", "type":5, "math":"+"},
   {"question":"Don't like to draw attention to myself.", "type":1, "math":"-"},
   {"question":"Take time out for others.", "type":2, "math":"+"},
   {"question":"Shirk my duties.", "type":3, "math":"-"},
   {"question":"Have frequent mood swings.", "type":4, "math":"-"},
   {"question":"Use difficult words.", "type":5, "math":"+"},
   {"question":"Don't mind being the center of attention.", "type":1, "math":"+"},
   {"question":"Feel others' emotions.", "type":2, "math":"+"},
   {"question":"Follow a schedule.", "type":3, "math":"+"},
   {"question":"Get irritated easily.", "type":4, "math":"-"},
   {"question":"Spend time reflecting on things.", "type":5, "math":"+"},
   {"question":"Am quiet around strangers.", "type":1, "math":"-"},
   {"question":"Make people feel at ease.", "type":2, "math":"+"},
   {"question":"Am exacting in my work.", "type":3, "math":"+"},
   {"question":"Often feel blue.", "type":4, "math":"-"},
   {"question":"Am full of ideas.", "type":5, "math":"+"}

The instructions for the participant were: "Describe yourself as you generally are now, not as you wish to be in the future.\nDescribe yourself as you honestly see yourself, in relation to other people you know of the same sex as you are, and roughly your same age.\nSo that you can describe yourself in an honest manner, your responses will be kept in absolute confidence.\n\nIndicate for each statement which answer best fits as a description of you:\n1. Very Inaccurate\n2. Moderately Inaccurate\n3. Neither Accurate Nor Inaccurate\n4. Moderately Accurate\n5. Very Accurate\n\nOnce you have submitted your answer, you will be asked to type 'y' (or 'Y') to confirm it."

The answers with values were as follows:

{"Text": "Very Inaccurate", "value": 1},
  {"Text": "Moderately Inaccurate", "value": 2},
  {"Text": "Neither Accurate Nor Inaccurate", "value": 3},
  {"Text": "Moderately Accurate", "value": 4},
  {"Text": "Very Accurate", "value": 5},


The 5 classified traits are as follows:

["Extraversion","Agreeableness","Conscientiousness","Emotional Stability","Intellect/Imagination"]

The "type" attribute for each question in the question list corresponds to these 5 traits, in the order given above. The calculation of scores of each trait was done according to this formula:

traitScore += answer, where answer is the participant's choice between 1-5, if the "math" attribute of the question being answered is +, and
traitScore += 5 - (answer-1), where answer is the participant's choice between 1-5, if the "math" attribute of the question being answered is -


The final score of the participant is as follows:

Extraversion: ${s[0]}
Agreeableness: ${s[1]}
Conscientiousness: ${s[2]}
Emotional Stability: ${s[3]}
Intellect/Imagination: ${s[4]}

What can be said about the personality of the participant of this personality test? (You are speaking to the participant, address him directly.)''';
}
