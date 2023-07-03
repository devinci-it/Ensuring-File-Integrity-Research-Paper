## VIII. Lab Exercise: Hash Verification in Practice

In this section, we present a lab exercise that focuses on the practical 
implementation of hash verification techniques discussed in the previous 
sections. The exercise aims to provide hands-on experience and reinforce 
the understanding of file integrity checking using hash functions.

### 8.1 Hashing a Text File with OpenSSL

In Part 1 of the lab exercise, we will explore the process of hashing a 
text file using OpenSSL. The objective is to generate a hash value for the 
given text file and understand the concept of hash functions in the 
context of file integrity checking.

To perform this exercise, follow the steps below:

**Setting up the environment:**

1. Ensure that OpenSSL is installed on your system.

   Check if OpenSSL is already installed on your system by opening the 
command-line interface or terminal and typing the following command:
   ```
   openssl version
   ```

2. Open the command-line interface or terminal to begin the exercise.

**Selecting a text file:**

1. Choose a text file that you want to verify for integrity.

2. Ensure that the selected text file is accessible from the command-line 
interface.

**Generating the hash value:**

1. Use the following command in the OpenSSL command-line interface to 
generate the SHA-256 hash value for the selected text file:
   ```
   openssl sha256 <filename>
   ```

2. Execute the command and observe the output, which will display the 
generated hash value.

**Analyzing the hash value:**

1. Examine the generated hash value and take note of its characteristics, 
such as length, uniqueness, and deterministic nature.

2. Record the hash value for future comparison and verification.

### 8.2 Verifying Hashes

In Part 2 of the lab exercise, we will focus on the verification of hashes 
to ensure file integrity. The objective is to compare the previously 
generated hash value with the current hash value of the text file and 
determine if any modifications have occurred.

To perform this exercise, follow the steps below:

**Modifying the text file:**

1. Open the selected text file and make deliberate modifications or 
alterations to its content.

2. Save the modified text file.

**Generating a new hash value:**

1. Use the following command in the OpenSSL command-line interface to 
generate a new SHA-256 hash value for the modified text file:
   ```
   openssl sha256 <modified_filename>
   ```

**Comparing hash values:**

1. Compare the previously recorded hash value (from Part 1) with the newly 
generated hash value for the modified text file.

2. Check for any differences or discrepancies between the two hash values.

**Analyzing the results:**

1. Interpret the results of the hash comparison.

2. If the hash values match, it indicates that the file integrity has not 
been compromised.

3. If the hash values differ, it suggests that the file has been tampered 
with or modified.

### 8.3 Conclusion

1. Reflect on the findings and discuss the significance of hash 
verification in detecting file tampering and ensuring data integrity.

2. Consider the limitations, challenges, and benefits of hash verification 
techniques in real-world scenarios.
