/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ping_pong.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lprior <lprior@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/01 16:54:17 by lprior            #+#    #+#             */
/*   Updated: 2018/03/03 21:20:42 by lprior           ###   ########.fr       */
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
#define BUFF 1024

int main(void)
{
    int                 client_fd;
    int                 socket_fd;
    struct sockaddr_in  serv_adr;
    char                message[BUFF];
    socket_fd = socket(AF_INET, SOCK_STREAM, 0);
    serv_adr.sin_family = AF_INET;
    serv_adr.sin_addr.s_addr = htonl(INADDR_ANY);
    serv_adr.sin_port = htons(4000);
    bind(socket_fd, (struct sockaddr *)&serv_adr, sizeof(serv_adr));
    bzero(message, BUFF);
    while (1)
    {
        listen(socket_fd, 10);
        ft_printf(YELLOW);
        ft_printf("Waiting for a connection...\n");
        ft_printf(NORMAL);
        client_fd = accept(socket_fd, (struct sockaddr *)0, 0);
        ft_printf(GREEN);
        ft_printf("CONNECTED\n");
        ft_printf(NORMAL);
        while (1)
        {
            read(client_fd, message, BUFF);
            if (strncmp("ping\n", message, 5) == 0)
                write(client_fd, "pong pong\n", 10);
            if (strncmp("exit\n", message, 5) == 0)
                return (0);
            bzero(message, BUFF);
         }
    }
    close(client_fd);
    close(socket_fd);
    return (0);
}
