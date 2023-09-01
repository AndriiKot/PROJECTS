
require 'benchmark'
                 
n = 1_000_000_0

Benchmark.bm do |x|

  x.report("не явное склеивание"){ 
  n.times do
	 "Hello" "," " " "Oxy!";
	 "Hi"","" " "Andrii!";
	 'Lubchik'','' ''the best cat''!';
  end
  }

  x.report("+") {
  n.times do
	 "Hello" + "," + " " + "Oxy!";
	 "Hi" + "," + " " + "Andrii!";
	 'Lubchik'+ ',' + ' ' + 'the best cat''!';
  end
  }

  x.report('<<') {
  n.times do
	 "Hello" << "," << " " << "Oxy!";
	 "Hi" << "," << " " << "Andrii!";
	 'Lubchik' << ',' << ' ' << 'the best cat''!';
  end
  }

  x.report('.concat') {
  n.times do
	 "Hello".concat ",".concat " ".concat "Oxy!";
	 "Hi".concat ",".concat " ".concat "Andrii!";
	 'Lubchik'.concat  ','.concat ' '.concat 'the best cat''!';
  end
  }

  x.report('#{}'){ 
  n.times do
	 "#{"Hello"}#{","}#{" "}#{'Oxy!'}";
	 "#{"Hi"}#{","}#{" "}#{"Andrii!"}";
	 "#{'Lubchik'}#{','}#{' '}#{'the best cat'}#{'!'}";
  end
  }

  x.report('empty'){ 
  n.times do
  end
  }

end

print 'Push Enter to exit: '; gets