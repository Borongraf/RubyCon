def address(ip)
  parts = ip.split('.')

  return false unless parts.length == 4

  parts.each do |part|
    return false unless part.match?(/^\d+$/) && (0..255).cover?(part.to_i)
  end

  return true
end

ip_address = ARGV[0]
result = address(ip_address)

if result
  puts "#{ip_address} є коректною IPv4-адресою."
else
  puts "#{ip_address} не є коректною IPv4-адресою."
end
