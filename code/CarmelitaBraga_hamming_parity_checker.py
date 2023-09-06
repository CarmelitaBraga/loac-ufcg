####################### HAMMING PARITY CHECKER #######################

def calculate_parity_bits(data):
    p1 = data[0] ^ data[1] ^ data[3]
    p2 = data[0] ^ data[2] ^ data[3]
    p4 = data[1] ^ data[2] ^ data[3]
    return [p1, p2, data[0], p4, data[1], data[2], data[3]]

def encode_hamming(data):
    parity_bits = calculate_parity_bits(data)
    code_word = parity_bits + data
    return code_word

def decode_hamming(received_data):
    r_p1 = received_data[0] ^ received_data[2] ^ received_data[4] ^ received_data[6]
    r_p2 = received_data[1] ^ received_data[2] ^ received_data[5] ^ received_data[6]
    r_p4 = received_data[3] ^ received_data[4] ^ received_data[5] ^ received_data[6]

    error_position = r_p1 + r_p2 * 2 + r_p4 * 4

    if error_position == 0:
        return received_data[2:7]  # No error, return the original data
    else:
        received_data[error_position - 1] = 1 - received_data[error_position - 1]  # Correct the error
        return received_data[2:7]  # Return the corrected data

'''
Example 1

original_data = [1, 0, 1, 1]
encoded_data = encode_hamming(original_data)
print("Encoded Data (Hamming code):", encoded_data)

# Simulating an error in the received data
received_data_with_errors = list(encoded_data)
error_pos = 3
received_data_with_errors[error_pos] = 1 - received_data_with_errors[error_pos]
print("Received Data with Errors (Hamming code):", received_data_with_errors)

decoded_data = decode_hamming(received_data_with_errors)
print("Decoded Data (4 bits):", decoded_data)


Example 2

original_data = [0, 1, 0, 0]
encoded_data = encode_hamming(original_data)
print("Encoded Data (Hamming code):", encoded_data)

# Simulating an error in the received data
received_data_with_errors = list(encoded_data)
error_pos = 2
received_data_with_errors[error_pos] = 1 - received_data_with_errors[error_pos]
print("Received Data with Errors (Hamming code):", received_data_with_errors)

decoded_data = decode_hamming(received_data_with_errors)
print("Decoded Data (4 bits):", decoded_data)

'''
