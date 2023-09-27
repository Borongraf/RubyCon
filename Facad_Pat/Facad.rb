# frozen_string_literal: true

class Email     #на почту
  def send_email(email, message)
    puts "Надсилання електронного листа на #{email}: #{message}"
  end
end

class SMS     #на номер телефона
  def send_sms(num, message)
    puts "Надсилання SMS на номер #{num}: #{message}"
  end
end


class Social_Net    #на діскорд (умовно)
  def send_message(nick, message)
    puts "Надсилання повідомлення користувачу #{nick}: #{message}"
  end
end


class NotificationFacade
  def initialize
    @email_service = Email.new
    @sms_service = SMS.new
    @platform_service=Social_Net.new
  end

  def send_notification
    print "Введіть електронну адресу одержувача: "
    email = gets.chomp
    print "Введіть номер одержувача: "
    num = gets.chomp
    print "Введіть нікнейм одержувача: "
    nick= gets.chomp
    print "Введіть повідомлення: "
    message = gets.chomp

    @email_service.send_email(email, message)
    @sms_service.send_sms(num, message)
    @platform_service.send_message(nick,message)
  end
end

notification_facade = NotificationFacade.new
notification_facade.send_notification
