################################# PARITY CHECK (EVEN ORIENTATION) #################################

def check_parity_error(info, parity_digit):
    parity_sum = 0
    valid_digits = ['0', '1']
    for _ in info:

        if _ not in valid_digits or parity_digit not in valid_digits:
            raise TypeError("Invalid format!")
        
        parity_sum += int(_)
    parity_sum += int(parity_digit)

    return 'Success!' if parity_sum % 2 == 0 else 'Failure!'

information = input('Data information (binary): ')
parity = input('Parity bit: ')
try:
    print(check_parity_error(information, parity))
except:
    print("Invalid format!")

'''
Example 1

    Input:
        110000001110
        1

    Output:
        Success!

Example 2

    Input:
        1010101
        1

    Output:
        Failure!

Example 3

    Input:
        1010101
        0

    Output:
        Success!

Example 4

    Input:
        00000000000000000000000100000
        0

    Output:
        Failure!

'''
