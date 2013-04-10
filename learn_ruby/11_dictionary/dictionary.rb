class Dictionary
  
  def initialize
    @entries = {}
  end

  def entries
    return @entries
  end
  
  def add(entry)
    if entry.is_a?(Hash)
      @entries.merge!(entry)
    elsif entry.is_a?(String)
      @entries[entry] = nil
    end
  end
  
  def keywords
    @entries.keys.sort
  end
  
  def include?(term)
    entries.keys.include?(term)
  end
  
  def find(partial)
    result = Hash.new
    @entries.each_pair{|key, value| result[key] = value if key =~ /^#{partial}/}
    result
  end
  
  def printable
    entries.map do |key_val|
      %Q{[#{key_val.first}] "#{key_val.last}"} 
    end.sort.join("\n")
  end
  
  
end