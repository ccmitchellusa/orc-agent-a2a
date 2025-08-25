import sys
from dotenv import load_dotenv

load_dotenv()

from a2a_server.run import run_server

def main():
    sys.argv[0] = "a2a-server"
    run_server()

if __name__ == "__main__":
    main()