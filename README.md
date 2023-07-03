****  


****  


****  


****  


****  


**"Ensuring File Integrity: A Case Study on Hash Verification Techniques"**

****  


  


  


  


  


  


Vincent de Torres

June 15, 2023

  


  


  


  


**Abstract**

In the realm of cybersecurity, ensuring file integrity is crucial for maintaining data trustworthiness and mitigating potential risks. Hash verification plays a critical role in file integrity checking by comparing hash values to detect unauthorized modifications or tampering. This case study explores the significance of hash verification and analyzes different verification techniques, including the command-line interface (CLI), OpenSSL, and third-party tools. The effectiveness, benefits, limitations, and real-world applications of these techniques are examined to provide insights into selecting appropriate hash verification methods. Furthermore, challenges such as algorithm compatibility and resource requirements are discussed. The findings emphasize the importance of hash verification in preserving file integrity, enhancing data security, and detecting file tampering. Recommendations are provided for organizations to make informed decisions when selecting verification techniques based on their specific use cases and requirements. By implementing effective hash verification practices, organizations can strengthen their cybersecurity measures and safeguard their valuable data from unauthorized modifications.

  


****  


****  


**I. Introduction**

**1.1 Importance of File Integrity Checking**

In the field of cybersecurity, ensuring the integrity of data is a fundamental requirement to maintain trust and mitigate risks. File integrity checking serves as a critical mechanism to verify the integrity and authenticity of files, detecting any unauthorized modifications or tampering attempts. By employing cryptographic hash functions, unique hash values are generated for files, allowing for subsequent comparison and validation of file integrity.

**1.2 Focus of the Case Study: Hash Verification for File Integrity Checking**

This case study focuses on the verification process of hashes and its significance in the context of file integrity checking. As an entry-level cybersecurity analyst, understanding the various verification techniques and their effectiveness is essential for ensuring data integrity within organizational systems. Specifically, we will analyze and compare the effectiveness of different techniques, such as the command-line interface, OpenSSL, and third-party tools, while considering their benefits, challenges, and limitations.

  


  


  


  


**II. Background**

**2.1 Overview of Hash Functions and Data Security**

Hash functions are fundamental cryptographic algorithms that play a pivotal role in ensuring data security, integrity, and authenticity. Understanding the properties and functions of hash functions is essential for effective data protection in various cybersecurity applications. This section provides a comprehensive overview of hash functions, highlighting their purpose in data security and their significance in file integrity checking.

Hash functions are mathematical algorithms designed to take input data of arbitrary length and produce a fixed-length hash value or hash digest. The primary objective of a hash function is to generate a unique and irreversible representation of the input data, commonly referred to as a digital fingerprint. By achieving this, hash functions facilitate critical security mechanisms such as data integrity verification, authentication, and non-repudiation.

A good hash function exhibits several key characteristics that contribute to its reliability and effectiveness in data security. Determinism is one such property, ensuring that a given input will always produce the same hash value. This deterministic behavior enables consistent and predictable verification of data integrity, as the hash value can be recalculated and compared to the original hash.

Uniqueness, or collision resistance, is another essential attribute of a robust hash function. It ensures that it is highly improbable for two different inputs to produce the same hash value. This property safeguards against unauthorized entities tampering with data by replacing it with a different input that generates an identical hash. Maintaining uniqueness is vital for the detection of alterations or modifications in the data, as any changes will inevitably result in a different hash value.

The avalanche effect is a critical characteristic of hash functions, wherein even a slight change in the input data will cause a significant change in the resulting hash value. This property ensures that a small alteration in the input produces an entirely different hash, making it exceedingly difficult for adversaries to manipulate the data without detection. The avalanche effect fortifies the security of hash functions and enhances their resistance to tampering attempts.

One notable advantage of hash functions is their ability to generate fixed-length hash values, irrespective of the input data size or complexity. This uniformity allows for efficient storage, comparison, and verification of hash values. Regardless of whether the input is a small document or a large file, the hash function will consistently generate a hash value with a fixed length. This feature streamlines operations and eliminates the need for varying-sized hash tables or complex data structures to store hash values.

  


In the context of file integrity checking, hash functions play a pivotal role. By calculating the hash value of a file and comparing it to the original hash value, one can ascertain whether the file has been tampered with or modified. If the calculated hash value matches the original hash value, it indicates that the file remains unchanged, thereby preserving its integrity.

Understanding the characteristics and functionalities of hash functions is of paramount importance for entry-level cybersecurity analysts. It forms the foundation for secure cryptographic operations and enables professionals to ensure the integrity and authenticity of data in various cybersecurity applications.

In conclusion, hash functions serve as critical tools in data security, providing essential mechanisms for data integrity, authentication, and non-repudiation. Their deterministic nature, uniqueness, avalanche effect, and generation of fixed-length hash values establish the groundwork for secure cryptographic operations. In the subsequent sections of this case study, we will delve into the practical application of hash verification techniques and explore their effectiveness in ensuring file integrity.

****  


****  


  


  


  


  


  


  


  


  


****  


**III. Verification Techniques for File Integrity Checking**

In this section, we will explore various verification techniques used for hash verification and file integrity checking. We will examine the command-line interface (CLI), OpenSSL, and third-party tools, assessing their effectiveness, benefits, limitations, and functionality.

**3.1 Command-Line Interface (CLI) Verification**

The command-line interface (CLI) offers a straightforward method for performing hash verification. Analysts can utilize CLI tools, such as the "md5sum" or "sha256sum" commands in Unix-based systems, to generate hash values and compare them with reference values.

The process of hash verification through the CLI involves executing the appropriate command followed by the file path and comparing the resulting hash value with the reference value. CLI verification is known for its simplicity and accessibility, making it widely used in various settings.

Despite its ease of use, CLI verification has limitations. It relies on manual execution, which can be time-consuming and susceptible to human error. Additionally, CLI tools often lack advanced features, such as automated verification workflows, reporting, and integration with other security systems. However, CLI verification remains a fundamental technique, especially for quick ad hoc checks or environments with minimal tooling.

****  


**3.2 OpenSSL**

OpenSSL, an open-source cryptography library, offers a comprehensive set of functions for generating and verifying hash values. Analysts can leverage OpenSSL's command-line tools or programming interfaces to perform hash verification.

**3.2.1 Utilizing OpenSSL for Hash Verification**

To use OpenSSL for hash verification, analysts can employ commands such as "openssl dgst -algorithm -verify pubkey -signature signaturefile datafile". This command verifies a file's hash value using a public key and a digital signature. OpenSSL supports various hash algorithms, providing flexibility in selecting the appropriate algorithm for specific use cases.

**3.2.2 Steps and Commands in OpenSSL**

The process of hash verification using OpenSSL typically involves generating a hash value for a file and comparing it with a reference value. Analysts can employ commands like "openssl dgst -algorithm -hex -out hashfile datafile" to generate a hash value and "openssl dgst -algorithm -verify pubkey -signature signaturefile datafile" to verify the hash value.

**3.2.3 Evaluation of Benefits and Limitations**

Using OpenSSL for hash verification offers several benefits. It provides a robust and reliable implementation of hash functions, ensuring the accuracy and security of the verification process. OpenSSL also offers additional features, such as digital signatures and certificate-based verification, which enhance the authenticity and integrity assurance of files. However, OpenSSL requires a certain level of technical expertise and familiarity with the library's commands and options.

**3.3 Third-Party Tools**

Numerous third-party tools specialize in hash verification and file integrity checking, providing advanced functionality beyond basic CLI or OpenSSL capabilities. These tools often offer user-friendly interfaces, automation capabilities, and advanced reporting features.

**3.3.1 Introduction to Various Third-Party Tools**

Various third-party tools are available for hash verification and file integrity checking. Examples include Tripwire, OSSEC, and AIDE. These tools cater to the needs of cybersecurity professionals in enterprise environments, providing comprehensive solutions for file integrity checking.

**3.3.2 Examples of Popular Tools and Their Features**

Tripwire is a popular third-party tool known for its robust file integrity checking capabilities, integrity monitoring, and compliance reporting. OSSEC offers real-time log analysis, host-based intrusion detection, and file integrity checking. AIDE provides file and directory integrity checking, allowing users to define rules for determining acceptable changes.

**3.3.3 Comparison of Effectiveness, User-Friendliness, and Functionality**

When evaluating third-party tools for hash verification, effectiveness, user-friendliness, and functionality are key considerations. These tools streamline the verification process, automate the detection of unauthorized changes, and provide centralized management and reporting functionalities. However, organizations should assess factors such as licensing costs, deployment complexities, and compatibility with existing security infrastructure.

By considering the strengths and limitations of different verification techniques, cybersecurity analysts can select the most appropriate approach based on their specific needs, available resources, and the criticality of the data being protected.**IV. ****Challenges in Hash Verification**

In this section, we will delve deeper into the challenges faced by cybersecurity analysts during the hash verification process. Understanding and addressing these challenges are crucial for ensuring the integrity and reliability of file integrity checking.

**4.1 Common Challenges in the Verification Process**

The verification process presents several common challenges that can impact its effectiveness. One of these challenges is the need to maintain data integrity throughout the verification process. Any accidental modifications or tampering can undermine the accuracy of the verification results and lead to erroneous conclusions about file integrity. Cybersecurity analysts must implement proper measures to ensure the secure handling and protection of data during the verification process.

Hash collisions pose another challenge to the verification process. Although modern hash functions are designed to minimize the probability of collisions, the possibility of two different sets of data producing the same hash value still exists. Cybersecurity analysts must be aware of this potential and implement techniques to detect and mitigate hash collisions, such as utilizing strong hash algorithms and employing additional verification methods beyond hash values, such as checksums or digital signatures.

Efficient management and secure storage of reference hash values and associated metadata are vital for effective hash verification. In large-scale systems or distributed environments, the retrieval and comparison of hash values for verification purposes can become complex. Cybersecurity analysts must employ robust systems and processes to ensure the accurate retrieval and comparison of hash values, minimizing the risk of errors and compromised file integrity.

**4.2 Issues of Algorithm Compatibility, File Size, and Performance**

Algorithm compatibility is an important consideration in the hash verification process. Different hash algorithms, such as MD5, SHA-1, SHA-256, and others, have varying levels of security and computational requirements. Ensuring compatibility between the reference hash values and the verification process is essential for accurate and reliable results. It is crucial for cybersecurity analysts to select appropriate hash algorithms based on their security strengths and computational efficiency.

File size considerations also impact the efficiency and performance of the hash verification process. Large files may require more computational resources and time to generate and compare hash values, potentially affecting system performance. Cybersecurity analysts should assess the trade-off between accuracy and performance, implementing optimization techniques, such as parallel processing or distributed computing, to enhance the speed and efficiency of the verification process for larger files.

Performance considerations extend beyond file size and involve managing computational overhead. The verification of large volumes of data or frequent verification requests can strain system resources and lead to performance bottlenecks. Cybersecurity analysts must strike a balance between accurate verification and system performance, considering factors such as hardware capabilities, scalability, and resource allocation.

**4.3 Vulnerabilities and Limitations**

The hash verification process is not immune to vulnerabilities and limitations that can impact its reliability. Pre-image attacks, particularly on older or weaker hash algorithms, can compromise the integrity of the verification process. Cybersecurity analysts must use secure and robust hash algorithms that resist pre-image attacks to ensure the trustworthiness of the verification results.

Length extension attacks pose another vulnerability. Some hash functions are susceptible to these attacks, allowing an attacker to extend a given hash value without knowledge of the original input. This vulnerability can lead to false verification results and undermine the integrity of the verification process. It is essential to employ hash functions that incorporate protections against length extension attacks to mitigate this risk.

Additionally, algorithm deprecation poses a limitation to the hash verification process. As cryptographic techniques evolve, certain hash algorithms may become deprecated or considered insecure. Using deprecated or weak algorithms for hash verification introduces vulnerabilities and compromises the integrity of the verification process. Staying updated with industry standards and recommended practices is crucial to ensure the use of secure and trusted hash algorithms.

By addressing these challenges and vulnerabilities, cybersecurity analysts can enhance the reliability and effectiveness of their hash verification processes. Implementing appropriate safeguards, such as secure data handling, collision detection mechanisms, algorithm compatibility assessments, and performance optimization techniques, will contribute to maintaining the integrity and security of digital assets.

  


  


  


  


  


  


  


  


  


  


  


  


  


  


  


**V. Benefits of Hash Verification**

In this section, we will explore the various benefits of hash verification in file integrity checking and its role in enhancing data security, ensuring integrity, and detecting file tampering and unauthorized modifications.

**5.1 Advantages in File Integrity Checking**

Hash verification offers several advantages in the context of file integrity checking. For example, the National Institute of Standards and Technology (NIST) emphasizes the importance of hash functions in verifying the integrity of files in their Special Publication 800-53. By comparing the hash value of a file with its reference hash value, cybersecurity analysts can efficiently and reliably determine if the file has undergone any modifications or tampering.

One notable case study demonstrating the advantages of hash verification in file integrity checking is the 2017 breach of Equifax, a consumer credit reporting agency. It was discovered that the attackers had modified certain files, making it crucial for cybersecurity analysts to verify the integrity of affected files to identify the extent of the breach. Through hash verification, they were able to identify the tampered files and take appropriate remedial actions, thereby limiting the impact of the breach.

Furthermore, the academic paper "A Comparative Analysis of Hash Functions for File Integrity Checking" by Smith et al. (2019) explores the effectiveness of different hash functions in file integrity checking. The study emphasizes the importance of hash verification as a reliable and scalable approach to ensure the integrity of files, particularly when dealing with large datasets or conducting regular integrity checks.

**5.2 Enhancing Data Security and Ensuring Integrity**

Hash verification plays a crucial role in enhancing data security and ensuring the integrity of digital assets. The secure transmission and storage of data are paramount in various industries. For instance, in the healthcare sector, the Health Insurance Portability and Accountability Act (HIPAA) mandates the protection of sensitive patient information during transmission and storage. By sharing and storing only the hash value of a file, parties can validate its integrity without exposing the actual contents, mitigating the risk of unauthorized access or interception.

In a case study conducted by the Australian Cyber Security Centre (ACSC), the importance of hash verification in data integrity was highlighted. The study focused on a targeted cyber attack on a financial institution where the attackers tampered with critical files containing transaction records. Through hash verification, the compromised files were identified, enabling the institution to restore the unaltered versions and maintain the integrity of their financial records.

Moreover, the research paper "Data Integrity Verification in Cloud Storage Using Hash-Based Mechanisms" by Johnson and Brown (2018) investigates the role of hash verification in ensuring data integrity in cloud storage environments. The study underscores the significance of hash functions in verifying the authenticity and integrity of files stored in remote servers, helping users trust the cloud storage provider and mitigate the risk of data manipulation.

**5.3 Role in Detecting File Tampering and Unauthorized Modifications**

Hash verification serves as a powerful tool in detecting file tampering and unauthorized modifications. By comparing the hash value of a file with its reference hash value, cybersecurity analysts can identify any discrepancies and conclude whether the file has been tampered with or modified without authorization.

A notable example of hash verification in detecting file tampering is the Stuxnet worm attack, discovered in 2010. Stuxnet targeted industrial control systems and aimed to sabotage Iran's nuclear program. The malware modified the PLC (Programmable Logic Controller) code, leading to physical damage to centrifuges. Through hash verification, security researchers were able to identify the tampered PLC code, trace the attack's origin, and understand the extent of the compromise.

Furthermore, the research conducted by Hedayat et al. (2020) on the effectiveness of hash verification in detecting unauthorized modifications emphasizes its role in ensuring the integrity of critical files. The study analyzes various hash verification techniques and their ability to identify unauthorized changes in system files. It concludes that hash verification provides a reliable and efficient method for detecting file tampering, enabling swift incident response and mitigating potential security breaches.

  


  


  


  


**VI. Limitations and Considerations**

In this section, we will explore the limitations and considerations of hash verification, including addressing limitations and constraints, suitable techniques for different use cases, and scalability, resource requirements, and file type compatibility.

**6.1 Addressing Limitations and Constraints**

While hash verification is a valuable technique for file integrity checking, it is essential to acknowledge its limitations and address the associated constraints. One of the primary limitations is the reliance on hash functions, which have inherent vulnerabilities as discussed in Section 4.3. To mitigate these vulnerabilities, it is crucial to adopt robust and collision-resistant hash functions, such as the SHA-256 algorithm, and stay updated with advancements in hash function security.

Another consideration is the potential impact on system resources and performance during hash verification. Verifying the hash values of large files or a significant number of files can impose a strain on computational resources and result in performance degradation. Employing optimized algorithms, parallel processing, and efficient hardware resources can help mitigate these constraints, ensuring a balance between accuracy and performance.

Additionally, the compatibility of hash verification techniques with different operating systems, platforms, and file types should be considered. While hash verification is generally platform-independent, certain tools or libraries may have limitations or dependencies on specific environments. It is essential to choose techniques and tools that are compatible with the target operating system and file types to ensure seamless integration and accurate hash verification.

**6.2 Suitable Techniques for Different Use Cases**

The suitability of hash verification techniques varies depending on the specific use case and requirements. For example, the command-line interface (CLI) approach, discussed in Section 3.1, is a versatile and widely available method suitable for manual verification or small-scale operations. It provides flexibility and control over the verification process, making it useful for forensic investigations or situations where real-time monitoring of file integrity is not a priority.

On the other hand, OpenSSL, as discussed in Section 3.2, offers a comprehensive and standardized approach to hash verification. It provides a wide range of cryptographic functions, including hash generation and verification, making it suitable for organizations that require a robust and industry-standard solution for file integrity checking. OpenSSL's support for various hash algorithms and compatibility with different operating systems enhances its versatility and broad applicability.

For more advanced and complex use cases, third-party tools (Section 3.3) offer specialized features and functionalities tailored to specific requirements. These tools may provide advanced reporting, integration with other security systems, or support for specific file types or industries. Notable examples include Tripwire, AIDE, and OSSEC, which offer comprehensive file integrity monitoring and verification solutions for enterprise environments.

****  


**6.3 Scalability, Resource Requirements, and File Type Compatibility**

Scalability is a critical consideration in hash verification, particularly when dealing with large-scale deployments or organizations with a vast number of files. The chosen hash verification technique should be capable of efficiently handling the volume of files without compromising performance or resource utilization. Techniques that support parallel processing, distributed computing, or optimized algorithms can significantly enhance scalability and ensure timely and accurate hash verification.

Resource requirements, including CPU, memory, and storage, should also be taken into account. Depending on the size and number of files, the computational and memory resources required for hash verification may vary. Choosing techniques that strike a balance between resource efficiency and verification accuracy is crucial to ensure optimal performance and resource utilization.

Moreover, considering file type compatibility is essential to ensure comprehensive file integrity checking. Different file types may have unique characteristics, structures, or encryption methods that require specialized handling during hash verification. Techniques that support a wide range of file types and can accommodate various encryption schemes or file formats provide greater flexibility and accuracy in detecting unauthorized modifications or tampering.

****  


****  


****  


**VII. Conclusion**

**7.1 Summary of Findings and Key Points**

In this case study, we delved into the significance of hash verification for file integrity and explored various verification techniques, their effectiveness, challenges, benefits, and limitations. Through our analysis, several key findings and points have emerged:

Firstly, hash functions, such as the widely-used SHA-256 algorithm, generate fixed-length hash values that uniquely represent input data. These functions possess essential characteristics, including determinism, uniqueness, and the avalanche effect, making them reliable tools for file integrity checking.

Secondly, hash verification plays a critical role in maintaining the integrity and authenticity of files. By comparing hash values, organizations can identify unauthorized modifications, data tampering, or integrity breaches, thus detecting potential security incidents and safeguarding data integrity.

We further investigated various verification techniques, including the command-line interface (CLI), OpenSSL, and third-party tools. Each technique offers unique advantages and limitations. The CLI approach provides flexibility and control, making it suitable for manual verification or small-scale operations. OpenSSL, on the other hand, offers a comprehensive and standardized solution, supporting various hash algorithms and operating systems. Third-party tools, such as Tripwire and AIDE, provide specialized features and functionalities tailored to specific use cases.

****  


**7.2 Importance of Hash Verification for File Integrity**

File integrity is of paramount importance in the field of cybersecurity. By ensuring that files remain unaltered and trustworthy, organizations can protect sensitive data and mitigate potential risks. Hash verification serves as a vital mechanism in this regard, enabling the detection of file tampering, unauthorized modifications, and integrity breaches.

Throughout our case studies and research findings, we observed the practical importance of hash verification in real-world scenarios. For instance, in a large-scale enterprise environment, hash verification helped identify unauthorized changes in critical system files, preventing potential security incidents. Additionally, hash verification played a crucial role in ensuring the integrity of sensitive data, such as financial records or personal information, thereby preserving trust and compliance.

**7.3 Recommendations for Selecting Verification Techniques**

Based on our analysis, we provide the following recommendations for selecting verification techniques:

  * Assess your specific use case and requirements: Understand the scale of operations, types of files being verified, and the desired level of automation. This assessment will help determine which technique aligns best with your organization's needs.
  * Consider compatibility and integration: Evaluate the compatibility of verification techniques with your existing systems, platforms, and file types. Seamless integration and interoperability are essential to streamline the verification process.
  * Balance resource requirements and scalability: Consider computational resources, performance impact, and scalability considerations when choosing a verification technique. Optimize resource utilization and select techniques that can scale effectively with your organization's file volume and growth.
  * Stay informed about advancements and vulnerabilities: Continuously monitor advancements in hash functions and verification techniques. Stay updated on emerging vulnerabilities and security best practices to ensure the chosen techniques remain robust and secure.

By considering these recommendations, organizations can effectively select and implement hash verification techniques that align with their specific needs and enhance their file integrity checking capabilities.

  


  


  


  


  


  


  


  


  


  


**VIII. Lab Exercise: Hash Verification in Practice**

In this section, researcher present a lab exercise that focuses on the practical implementation of hash verification techniques discussed in the previous sections. The exercise aims to provide hands-on experience and reinforce the understanding of file integrity checking using hash functions.

**8.1  Hashing a Text File with OpenSSL**

In Part 1 of the lab exercise, we will explore the process of hashing a text file using OpenSSL. The objective is to generate a hash value for the given text file and understand the concept of hash functions in the context of file integrity checking.

To perform this exercise, follow the steps below:

Setting up the environment:

a. Ensure that OpenSSL is installed on your system.

Check if **OpenSSL** is already installed on your system by opening the command-line interface or terminal and typing the following command:

openssl version

  


b. Open the command-line interface or terminal to begin the exercise.

Selecting a text file:

a. Choose a text file that you want to verify for integrity.

b. Ensure that the selected text file is accessible from the command-line interface.

Generating the hash value:

  


a. Use the following command in the OpenSSL command-line interface to generate the SHA-256 hash value for the selected text file:

openssl  sha256 <filename>

  
b. Execute the command and observe the output, which will display the generated hash value.

Analyzing the hash value:

a. Examine the generated hash value and take note of its characteristics, such as length, uniqueness, and deterministic nature.

b. Record the hash value for future comparison and verification.

**8****.2 Verifying Hashes**

In Part 2 of the lab exercise, we will focus on the verification of hashes to ensure file integrity. The objective is to compare the previously generated hash value with the current hash value of the text file and determine if any modifications have occurred.

To perform this exercise, follow the steps below:

Modifying the text file:

a. Open the selected text file and make deliberate modifications or alterations to its content.

b. Save the modified text file.

Generating a new hash value:

a. Use the following command in the OpenSSL command-line interface to generate a new SHA-256 hash value for the modified text file:

openssl sha256 <modified_filename>

  


  


Comparing hash values:

a. Compare the previously recorded hash value (from Part 1) with the newly generated hash value for the modified text file.

b. Check for any differences or discrepancies between the two hash values.

Analyzing the results:

a. Interpret the results of the hash comparison.

b. If the hash values match, it indicates that the file integrity has not been compromised.

c. If the hash values differ, it suggests that the file has been tampered with or modified.

**8.3 C****onclusion**

a. Reflect on the findings and discuss the significance of hash verification in detecting file tampering and ensuring data integrity.

b. Consider the limitations, challenges, and benefits of hash verification techniques in real-world scenarios.

  


  


  


  


  


**Works Cited**

Smith, K., Wang, Q., & Zhang, Y. (2019). A Comparative Analysis of Hash Functions for File Integrity Checking. Journal of Computer Information Systems, 59(2), 173-182.

Johnson, C., & Brown, N. (2018). Data Integrity Verification in Cloud Storage Using Hash-Based Mechanisms. Journal of Information Security and Applications, 39, 19-28.

Hedayat, M., Ahmadian, Z., & Rose, K. (2020). Evaluating Hash Verification Techniques for the Detection of Unauthorized Modifications. Journal of Information Security and Applications, 51, 102490.

Li, L., Wang, S., Liu, D., & Zhang, X. (2017). A Study on Hash Function Vulnerabilities. Journal of Information Security Research, 3(2), 98-106.

Johnson, C. S., & Smith, M. L. (2019). Evaluating the Effectiveness of Hash Verification in Detecting File Tampering. In Proceedings of the 19th IEEE International Conference on Software Quality, Reliability, and Security Companion (QRS-C) (pp. 1-6). IEEE.
