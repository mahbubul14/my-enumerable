module MyEnumerable
  def all?
    each { |e| return false unless yield e }
    true
  end

  def any?
    each { |e| return true if yield e }
    false
  end

  def filter
    results = []
    each { |e| results.push(e) if yield e }
    results
  end
end
