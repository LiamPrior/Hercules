# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Ceryneian_Hind.rb                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lprior <lprior@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/08 13:20:44 by lprior            #+#    #+#              #
#    Updated: 2018/03/09 16:30:29 by lprior           ###   ########.fr        #
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
response = token.get("/v2/users")
until response.status == 200 do
    puts "Waiting on connection".bold.red    
    response = token.get("/v2/users")
    sleep(5.seconds)
end
if ARGV[0]
    if File.extname(ARGV[0]) == ".txt"
        File.open(ARGV[0]).each_line do |line|
            username = line.chomp
            begin
                users = token.get("/v2/users/#{username}").parsed
                if users["location"]
                    puts "#{username}s".blue + " first name is" + " #{users["first_name"]}".bold.underline.blue + " he/she is" + " available".green + ", logged into" + \
                            " #{users["location"]}".light_blue + ", is" + " LVL #{users["cursus_users"][0]["level"]}".magenta + \
                                ", and has" + " #{users["correction_point"]}".yellow + " correction points!"
                else
                    puts "OH!".red + " It Seems" + " #{username}".blue + " is not logged in ¯\\_(ツ)_/¯"
                end
            rescue
                if ("#{username}" == "")
                    puts "No New Lines please".red
                else
                    puts "#{username} ".blue + "does not exist".red
                end
            end
        end
    end
end