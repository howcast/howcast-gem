module StringMatchersHelper
  def to_s_like like
    simple_matcher("converts to a string like #{like.inspect}") do |candidate|
      like === candidate.to_s
    end
  end

  def equivalent_uri string
    simple_matcher("is an equivalent uri to #{string.inspect}") do |candidate|
      verifier = URI.parse string
      tests = [
        lambda{|x|x.scheme},
        lambda{|x|x.userinfo},
        lambda{|x|x.port},
        lambda{|x|x.path},
        lambda{|x|x.query.split('&').sort},
        lambda{|x|x.fragment}
      ]
      tests.all?{|t|t.call(candidate) == t.call(verifier)}
    end
  end
end
