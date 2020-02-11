import argparse
import sys
import time


def main():
    args = parse_args()

    line_number = 1

    try:
        print("Opening file...")
        f = open(args.file, "r")

        for line in f:
                if line.find(args.search_string) != -1:
                    print_line(line, args.timeout, line_number)
                    line_number += 1
                else:
                    line_number += 1

        f.seek(0)
        filedata = f.read()
        filedata = filedata.replace(args.search_string, args.string_replacement)
        print("Replaced")
        f.close()

        try:
         with open(args.file, 'w') as file:
             file.write(filedata)

        except Exception as e:
            print("Exception writing:")
            print(e)
        finally:
            file.close()
            print('Close file')

        print("Ready")

    except Exception as e:
        print("Exception:")
        print(e)
    finally:
        f.close()
        print('Close file')


def print_line(line, timeout, line_number):
    print('Line number: {0}'.format(line_number))
    print("------------------------------------------------------")
    print(line)
    print("------------------------------------------------------")

    if timeout:
        t = float(timeout)
        time.sleep(t)


def parse_args():
    parser = argparse.ArgumentParser(description='Bootstrap this project')
    parser.add_argument('-f', '--file',
                        help='File to read',
                        required=True)
    parser.add_argument('-t', '--timeout',
                        help='String read timeout (in seconds)',
                        required=False)
    parser.add_argument('-s', '--search_string',
                        help='String to search in line',
                        required=True)
    parser.add_argument('-sr', '--string_replacement',
                        help='String to replace with',
                        required=True)
    return parser.parse_args()


if __name__ == '__main__':
    sys.exit(main())