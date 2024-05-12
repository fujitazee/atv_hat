import socket
import json
import argparse
import time

def send_data(host, port, data):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((host, port))
        s.sendall(json.dumps(data).encode('utf-8'))
        response = s.recv(1024)
        print('Received:', response.decode('utf-8'))

all_devices = range(0,48)

def main():
    parser = argparse.ArgumentParser(description="ATV Hat Command Line Interface")
    parser.add_argument("--server", default="192.168.1.58", help="Server address, set your default IP here")
    parser.add_argument("--port", type=int, default=13388, help="Port number, defaults to 13388")
    parser.add_argument("-d", "--device", type=int, nargs='+', help="Device number(s)")
    parser.add_argument("-s", "--state", type=int, choices=[0, 1], help="State to set for the device(s)")
    parser.add_argument("-a", "--all", action="store_true", help="Operate on all devices")
    parser.add_argument("-r", "--reboot", action="store_true", help="Reboot the specified device(s) or all devices if --all is used")

    args = parser.parse_args()

    # Handle the --all argument with --reboot or --state
    if args.all:
        if args.reboot:
            for device in all_devices:
                send_data(args.server, args.port, {"device": device, "state": 0})
            for sleep_time in range(0,3):
                print(f'Delay for reboot {3-sleep_time}...')
                time.sleep(1)
            for device in all_devices:
                send_data(args.server, args.port, {"device": device, "state": 1})
        elif args.state is not None:
            for device in all_devices:
                send_data(args.server, args.port, {"device": device, "state": args.state})
        else:
            for device in all_devices:
                send_data(args.server, args.port, {"device": device})
        return

    # Handling the -r/--reboot argument for individual devices
    if args.reboot:
        if args.device:
            for device in args.device:
                send_data(args.server, args.port, {"device": device, "state": 0})
            for sleep_time in range(0,3):
                print(f'Delay for reboot {3-sleep_time}...')
                time.sleep(1)
            for device in args.device:
                send_data(args.server, args.port, {"device": device, "state": 1})
        else:
            print("Device number(s) required with --reboot")
        return

    # Handling the -d/--device and -s/--state arguments for individual devices
    if args.device is not None:
        if args.state is not None:
            for device in args.device:
                send_data(args.server, args.port, {"device": device, "state": args.state})
        else:
            # Query the state if -s/--state is not provided
            for device in args.device:
                send_data(args.server, args.port, {"device": device})
    else:
        print("No device specified.")

if __name__ == "__main__":
    main()

