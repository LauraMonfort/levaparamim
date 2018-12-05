require 'facebook/messenger'
include Facebook::Messenger

Bot.on :message do |message|
  if message.text.include? "Bonjour"
    message.reply(text: "Wesh maggl")
  elsif message.text.include? "Bonne nuit"
    message.reply(text: "Dors bien fdp")
  elsif message.text.include? "zzzzzzz"
    message.reply(text: "Wake up!")
  else
    message.reply(text: 'Reponse par defaut')
  end
end
