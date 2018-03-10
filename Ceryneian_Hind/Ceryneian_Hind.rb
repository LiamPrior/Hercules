# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Ceryneian_Hind.rb                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: liamprior <liamprior@student.42.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/08 13:20:44 by lprior            #+#    #+#              #
#    Updated: 2018/03/09 21:35:34 by liamprior        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

require 'oauth2'
require 'colorize'
require 'open-uri'

def bold;           "\e[1m#{self}\e[22m" end
def underline;      "\e[4m#{self}\e[24m" end
UID = ENV["SUID"]
SECRET = ENV["SECRET"]
client = OAuth2::Client.new(UID, SECRET, site: "https://api.intra.42.fr")
token = client.client_credentials.get_token
system("clear")
print "     ███████]▄▄▄▄▄▄▄▄▃\n  ▂▄▅█████████▅▄▃▂\nI███████████████████]\n◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "         ███████]▄▄▄▄▄▄▄▄▃\n      ▂▄▅█████████▅▄▃▂\n    I███████████████████]\n    ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "            ███████]▄▄▄▄▄▄▄▄▃\n         ▂▄▅█████████▅▄▃▂\n       I███████████████████]\n       ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "               ███████]▄▄▄▄▄▄▄▄▃\n            ▂▄▅█████████▅▄▃▂\n          I███████████████████]\n          ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "                  ███████]▄▄▄▄▄▄▄▄▃\n               ▂▄▅█████████▅▄▃▂\n             I███████████████████]\n             ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "                     ███████]▄▄▄▄▄▄▄▄▃\n                  ▂▄▅█████████▅▄▃▂\n                I███████████████████]\n                ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "                        ███████]▄▄▄▄▄▄▄▄▃\n                     ▂▄▅█████████▅▄▃▂\n                   I███████████████████]\n                   ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "                           ███████]▄▄▄▄▄▄▄▄▃\n                        ▂▄▅█████████▅▄▃▂\n                      I███████████████████]\n                      ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "                              ███████]▄▄▄▄▄▄▄▄▃\n                           ▂▄▅█████████▅▄▃▂\n                         I███████████████████]\n                         ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "                                 ███████]▄▄▄▄▄▄▄▄▃\n                              ▂▄▅█████████▅▄▃▂\n                            I███████████████████]\n                            ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "                                    ███████]▄▄▄▄▄▄▄▄▃\n                                 ▂▄▅█████████▅▄▃▂\n                               I███████████████████]\n                               ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "                                       ███████]▄▄▄▄▄▄▄▄▃\n                                    ▂▄▅█████████▅▄▃▂\n                                  I███████████████████]\n                                  ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "                                          ███████]▄▄▄▄▄▄▄▄▃\n                                       ▂▄▅█████████▅▄▃▂\n                                     I███████████████████]\n                                     ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "                                             ███████]▄▄▄▄▄▄▄▄▃\n                                          ▂▄▅█████████▅▄▃▂\n                                        I███████████████████]\n                                        ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
sleep(0.7)
system("clear")
print "                                                ███████]▄▄▄▄▄▄▄▄▃\n                                             ▂▄▅█████████▅▄▃▂\n                                           I███████████████████]\n                                           ◥▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤\n"
print "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
print "!!yeah its a tank!!\n".bold.yellow
if ARGV[0]
    if File.extname(ARGV[0]) == ".txt"
        File.open(ARGV[0]).each_line do |line|
            username = line.chomp
            begin
                def internet
                    begin
                      true if open("https://api.intra.42.fr")
                    rescue
                      false
                    end
                  end
                users = token.get("/v2/users/#{username}").parsed
                if users["location"] && internet == true
                    puts "#{username}s".underline.blue + " first name is " + "#{users["first_name"]}".bold.underline.blue + " he/she is" + " available".green + ", logged into" + \
                            " #{users["location"]}".light_blue + ", is" + " LVL #{users["cursus_users"][0]["level"]}".magenta + \
                                ", and has" + " #{users["correction_point"]}".yellow + " correction points!"
                elsif internet == true
                    puts "OH!".red + " It Seems " + "#{username}".underline.blue + " is not logged in ¯\\_(ツ)_/¯"
                elsif internet == false
                    until internet == true do
                        puts "API is down! Trying again!".bold.red
                        sleep(5)
                        internet()
                        end
                end
            rescue
                if ("#{username}" == "")
                    puts "No New Lines please".bold.red
                else
                    puts "#{username}".underline.blue + " does not exist".red
                end
            end
        end
    end
end