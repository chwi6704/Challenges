class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

  p1 = "What did we call the lady master of Demise from Skyward Sward? \n(a) Zelda's MMMMbutt \n(b) hotdog face \n(c) 89"
  p2 = "Which OG Kanto region DZ 24 character knows cercuit training best? \n(a) Doc \n(b) Gengar \n(c) 89"
  p3 = "Whom is the master of the pool? The smoe and all knowledge? \n(a) Zapdos \n(b) 89 \n(c) partake"

  questions = [
    Question.new(p1, "b"),
    Question.new(p2, "a"),
    Question.new(p3, "c"),
]


def run_test(questions)
  answer = ""
  score = 0
  for question in questions
    puts question.prompt
    answer = gets.chomp()
    if answer == question.answer
      score += 1
    end
  end
  puts ("you got " + score.to_s + "/" + questions.length.to_s + ", time for some selfcare!")
end

run_test(questions)