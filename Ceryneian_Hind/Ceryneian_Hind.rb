# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Ceryneian_Hind.rb                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lprior <lprior@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/08 13:20:44 by lprior            #+#    #+#              #
#    Updated: 2018/03/09 14:06:48 by lprior           ###   ########.fr        #
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
        File.open(ARGV[0]).each_line do |line|# Actually fetch the contents of the remote URL as a String.
            username = line.chomp
            begin
                # buffer = token.get("/v2/users/#{username}")
                # JSON.parse(buffer)
                # user = JSON.parse(buffer)
                # users = token.get("/v2/users/#{username}/locations").parsed
                users = token.get("/v2/users/#{username}").parsed#
                puts users["location"]
                # if (defined?(users["location"])).nil? 
                #     print "Not logged in"
                # else
                #     print "#{users.location}"
                if users != '\0'
                    where = users["locations"]
                    # lvl = buffer.cursur_users.level
                    puts "#{username}".blue + " is" + " available".green + " and logged into" + " #{users["location"]}".green + " and is" + " LVL #{users["cursus_users"][0]["level"]}"
                else
                    puts "OH!".red + " It Seems" + " #{username}".blue + " is not logged in ¯\\_(ツ)_/¯"
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