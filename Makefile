CC=g++
TARGET:main.exe
LIBS=-lpthread
CFLAGS=-std=c++17
OBJS=tcp_client_db_manager.o \
		tcp_client_service_manager.o \
		tcp_new_connection_acceptor.o \
		tcp_server_controller.o \
		network_utils.o \
		tcp_client.o \
		byte_circular_buffer.o \
		tcp_msg_demarcar.o \
		tcp_msg_fixed_size_demarcar.o \
		tcp_msg_variable_size_demarcar.o \

main.exe:main.o $(OBJS) 
	${CC} ${CFLAGS} ${OBJS} main.o -o main.exe ${LIBS}

main.o:main.cpp
	${CC} ${CFLAGS} -c main.cpp -o main.o

tcp_client_db_manager.o:tcp_client_db_manager.cpp
	${CC} ${CFLAGS} -c tcp_client_db_manager.cpp -o tcp_client_db_manager.o

tcp_client_service_manager.o:tcp_client_service_manager.cpp 
	${CC} ${CFLAGS} -c tcp_client_service_manager.cpp -o tcp_client_service_manager.o

tcp_new_connection_acceptor.o:tcp_new_connection_acceptor.cpp
	${CC} ${CFLAGS} -c tcp_new_connection_acceptor.cpp -o tcp_new_connection_acceptor.o

tcp_server_controller.o:tcp_server_controller.cpp
	${CC} ${CFLAGS} -c tcp_server_controller.cpp -o tcp_server_controller.o

network_utils.o:network_utils.cpp
	${CC} ${CFLAGS} -c network_utils.cpp -o network_utils.o

tcp_client.o:tcp_client.cpp
	${CC} ${CFLAGS} -c tcp_client.cpp -o tcp_client.o

byte_circular_buffer.o:byte_circular_buffer.cpp
	${CC} ${CFLAGS} -c byte_circular_buffer.cpp -o byte_circular_buffer.o

tcp_msg_demarcar.o:tcp_msg_demarcar.cpp
	${CC} ${CFLAGS} -c tcp_msg_demarcar.cpp -o tcp_msg_demarcar.o

tcp_msg_fixed_size_demarcar.o:tcp_msg_fixed_size_demarcar.cpp
	${CC} ${CFLAGS} -c tcp_msg_fixed_size_demarcar.cpp -o tcp_msg_fixed_size_demarcar.o

tcp_msg_variable_size_demarcar.o:tcp_msg_variable_size_demarcar.cpp
	${CC} ${CFLAGS} -c tcp_msg_variable_size_demarcar.cpp -o tcp_msg_variable_size_demarcar.o



clean:
	rm -f *.o
	rm -f *exe
	
