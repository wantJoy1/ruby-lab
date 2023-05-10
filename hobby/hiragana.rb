$hiragana = "あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよわをんぁぃぅぇぉっゃゅょがぎぐげござじずぜぞだぢづでどばびぶべぼぱぴぷぺぽ".chars
$n = $hiragana.length

def rnd
  r = Random.new
  $hiragana[r.rand(0...$n)]
end

puts (0...$*.first.to_i).map{rnd()}.join("")
 
