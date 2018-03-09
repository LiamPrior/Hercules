# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Ceryneian_Hind.rb                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lprior <lprior@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/08 13:20:44 by lprior            #+#    #+#              #
#    Updated: 2018/03/08 18:59:06 by lprior           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

require 'oauth2'
require 'colorize'

UID = ENV["SUID"]
SECRET = ENV["SECRET"]
client = OAuth2::Client.new(UID, SECRET, site: "https://api.intra.42.fr")
token = client.client_credentials.get_token
# if ARGV[0]
#     if File.extname(ARGV[0]) == ".txt"
#         File.open(ARGV[0]).each_line do |line|
#             username = line.chomp
#             begin
#                 location = token.get("/v2/users/#{username}/locations").parsed
#                 if location[0]
#                     host = location[0]["host"]
#                     puts "#{username} ".blue + "is in #{host}".green
#                 else
#                     puts "#{username} ".blue + "is unavailable".red
#                 end
#             rescue
#                 puts "#{username} ".blue + "does not exist".red
#             end
#         end
#     end
# else
#     puts "Usage: ruby api.rb [test.txt]".red
# end
if ARGV[0]
    if File.extname(ARGV[0]) == ".txt"
        File.open(ARGV[0]).each_line do |line|
            username = line.chomp
            begin
                place = token.get("/v2/users/#{username}/locations").parsed
                # users = token.get("/v2/users/#{username}").parsed 
                # puts "#{users}"
                if place[0]
                    where = place[0]["host"]
                    lvl = place[0][".levels"]
                    puts "#{username}".blue + " is" + " available".green + " and logged into" + " #{where}".green + " and is" + " LVL #{lvl}"
                else
                    puts "OH!".red + " It Seems" + " #{username}".blue + " is not in the lab!"
                end
            rescue
                if "#{username}" == ""
                    puts "No New Lines please".red
                else
                    puts "#{username} ".blue + "does not exist".red
                end
            end
        end
    end
end