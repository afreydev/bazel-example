from libs.printer.printer import print_this_message
from argparse import ArgumentDefaultsHelpFormatter, ArgumentParser

parser = ArgumentParser(formatter_class=ArgumentDefaultsHelpFormatter)
parser.add_argument("-m", "--message", help="Message to print", default="Hello monadical devs!")
args = vars(parser.parse_args())

print_this_message(args["message"])
