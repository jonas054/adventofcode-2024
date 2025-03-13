EXAMPLE = <<~TEXT
  89010123
  78121874
  87430965
  96549874
  45678903
  32019012
  01329801
  10456732
TEXT

PUZZLE_INPUT = <<~TEXT
  21056789894321015012980123498787601045687
  32346543765601156703474544567896012138796
  10107632659892349821563678989345643029655
  23218101256781015430412101071234754910544
  14569870345432016321003012560109867801033
  05678963256789127879854303456078105932122
  18723450109898038910765210010563254541001
  69011201298788945125898998323454569679852
  78760345345654876034787677401235378089760
  89456896012503876965014586512765432123601
  32387987003412965872123298703890101984512
  01291876121101234989456107654965278854603
  00180145030980325678327890217874369763254
  14343232145671013454310691307893454610169
  23432165430110302169234582456732108905678
  96547078923231231078105673454321097214523
  87678432214348940987017894765870986341014
  96589541009857654320123765891963475498765
  01434630111766789010432143210452560167876
  32345721210951999016549054789301001456965
  21076890129810878321678945643219812332109
  78789001234723765430321238756106734323458
  09654160345654210389210109987005125010767
  12323271657601345678780125678014056541893
  25414987798542343456690034329123987932012
  56905677810439652987501145016510345801101
  67856298923128721987432156987421256789210
  22347107654098910876543087870330107654301
  11298231012347654305678898981278798987652
  00109545691056763211219767874569678690343
  12065456783345894320105656913450569541289
  43874321092132101899234541002321256632176
  54930010561001234788765432211056746789045
  67821123472390545654123101347849839874330
  78934010589487698763034567456931028765221
  67785697696590101672105698741022210540100
  58696788787781234589789789012013307632101
  49545459810170301075674654323454458989032
  30432365923965432165463210498569567976543
  21021876854876523678354112347678678875301
  30010966763987014589210001456565589765432
TEXT

INPUT = PUZZLE_INPUT.lines.map { _1.chomp.split(//).map(&:to_i) }

class Complex
  alias x real
  alias y imag
end

DIRECTIONS = [0+1i, 0-1i, 1, -1]

def rating(point, path)
  return path if value_at(point) == 9

  DIRECTIONS
    .map { point + _1 }
    .select { within?(_1) && value_at(_1) == value_at(point) + 1 }
    .map { rating(_1, path + [point]) }
end

def within?(point)
  (0...INPUT[0].length).cover?(point.x) && (0...INPUT.length).cover?(point.y)
end

def value_at(point)
  INPUT[point.y][point.x]
end

trailheads = INPUT.each_with_index.map do |row, y|
  row.each_with_index.select { |value, _| value == 0 }.map { |_, x| Complex(x, y) }
end.flatten

p trailheads.map { rating(_1, []) }.flatten(9).size
