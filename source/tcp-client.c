#include "lwip/opt.h"

#if LWIP_SOCKET

#include "lwip/sockets.h"

#include "pin_mux.h"
#include "clock_config.h"
#include "board.h"

#include <string.h>
#include <stdio.h>

#include "dnet.h"

#define BUFLEN 128

static void tcp_client_thread(void *arg)
{
	struct sockaddr_in addr_server;
	socklen_t slen = sizeof addr_server;

	memset(&addr_server, 0, sizeof addr_server);

	addr_server.sin_family = AF_INET;
	addr_server.sin_port = htons(12345);

	inet_aton("192.168.0.132", &addr_server.sin_addr);

	char buf[BUFLEN];

	while (1)
	{
		int sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
		assert(sock != -1);

		int error = connect(sock, (struct sockaddr*)&addr_server, slen);
		assert(error != -1);

		PRINTF("Client - Connected\n\r");
		for (int i = 1; ; ++i)
		{
			sprintf(buf, "hello(%d)", i);

			int bytes_sent = send(sock, buf, strlen(buf), 0);

			if (bytes_sent <= 0) {
				PRINTF("Client - Failed to send data\n\r");
				break;
			}

			PRINTF("Client - Sent %d bytes from: %s\n\r" , bytes_sent, buf);

			int bytes_received = recv(sock, buf, BUFLEN, 0);
			if (bytes_received <= 0) {
				PRINTF("Client - Failed to receive response from server\n\r");
				break;
			}

			PRINTF("Client - Server responded with: %s\n\r", buf);

			vTaskDelay(2000);
		}

		PRINTF("Client - Connection lost...\n\r");
		PRINTF("Client - Reconnecting...\n\r");

		shutdown(sock, SHUT_RDWR);
		close(sock);
	}
}
/*-----------------------------------------------------------------------------------*/

/*!
 * @brief Main function
 */
int main(void)
{
    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitDebugConsole();

    PRINTF("Start\n\r");

    DnetConfig net_config = dnet_init("192.168.0.145", NULL, NULL, dnet_get_uid_location());

    dnet_start_new_thread("tcp_client_thread", tcp_client_thread, NULL);

    vTaskStartScheduler();

    return 0;
}
#endif
