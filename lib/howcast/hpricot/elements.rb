module Hpricot
  module Traverse
    oper_procs =
      {'='  => proc{ |a,b| a == b },
       '!=' => proc{ |a,b| a != b },
       '~=' => proc{ |a,b| a.split(/\s+/).include?(b) },
       '|=' => proc{ |a,b| a =~ /^#{Regexp::quote b}(-|$)/ },
       '^=' => proc{ |a,b| a.index(b) == 0 },
       '$=' => proc{ |a,b| a =~ /#{Regexp::quote b}$/ },
       '*=' => proc{ |a,b| idx = a.index(b) }}
    
    pred_n = 'text-downcase()'
    pred_f = proc{ |ele, *_| ele.inner_text.strip.downcase }
    
    oper_procs.each do |oper_n, oper_f|
      filter "#{pred_n}#{oper_n}" do |*a|
        qual = pred_f[self, *a]
        oper_f[qual, a[-2]] if qual
      end
    end
  end
end
