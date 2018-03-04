/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lprior <lprior@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/03 12:39:43 by lprior            #+#    #+#             */
/*   Updated: 2018/03/03 21:20:41 by lprior           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <netdb.h>
#include <unistd.h>
#include <strings.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <sys/types.h>
#include "ft_printf/ft_printf.h"

int main(int ac, char **av)
{
    int                 socket_fd;
    char                str[1024];
    char                str2[1024];
    struct sockaddr_in  serv_adr;
    if (ac != 2)
    {
        printf("EX: ./ [IP ADDRESS]\n");
        return (0);
    }
    if ((socket_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
        return (0);
    serv_adr.sin_family = AF_INET;
    serv_adr.sin_port = htons(4000);
    if (inet_pton(AF_INET, av[1], &serv_adr.sin_addr) <= 0)
        return (0);
    if (connect(socket_fd, (struct sockaddr*)&serv_adr, sizeof(serv_adr)) < 0)
        return (0);
    ft_printf(GREEN);
    ft_printf("Connection Accepted!\n");
    ft_printf(NORMAL);
    while (1)
    {
        bzero(str, 1024);
        bzero(str2, 1024);
        fgets(str, 1024, stdin);
        write(socket_fd, str, strlen(str));
        if (strncmp("exit\n", str, 5) == 0)
            return (0);
        read(socket_fd, str2, 1024);
        write(1, str2, strlen(str2));
    }
    close(socket_fd);
    return (1);
}
