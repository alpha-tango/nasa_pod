
plist = "~/Library/LaunchAgents/com.apple.nasa_photo.plist"
label = "com.apple.nasa_photo"
script = File.join(Dir.pwd, "apod_fetch.rb")

plist_text = "<?xml version='1.0' encoding='UTF-8'?>\n<!DOCTYPE plist PUBLIC '-//Apple//DTD PLIST 1.0//EN' 'http://www.apple.com/DTDs/PropertyList-1.0.dtd'>\n<plist version='1.0'>\n<dict>
\n\t<key>Label</key>\n\t<string>#{label}</string>\n\t<key>ProgramArguments</key>\n\t<array>\n\t\t<string>#{script}</string>\n\t</array>\n\t<key>StartInterval</key>\n\t<integer>86400</integer>\n</dict>\n</plist>"

new_plist = "printf '%s\n' \"$#{plist_text}\" >> #{plist}"

exec new_plist
