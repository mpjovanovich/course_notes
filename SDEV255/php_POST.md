---
layout: base
title: PHP - POST
course: SDEV255
---

<!-- Understanding PHP POST
A. Purpose of PHP POST
	1. Sending Data Securely
	2. Handling Form Submissions
B. Comparison with PHP GET
	1. Differences in Data Transmission
	2. Use Cases for GET and POST

VI. Practical Examples and Use Cases
A. Building a Simple Form-Handling PHP Script
	1. Creating a Form
	2. Processing Form Data with PHP
B. Handling File Uploads
	1. HTML File Input Element
	2. Server-Side Handling of Uploaded Files

VII. Best Practices for PHP POST
A. Avoiding Direct Output of POST Data
B. Importance of HTTPS for Secure Data Transmission
C. Handling Form Submission Errors
D. Implementing CSRF Protection

VIII. Real-World Application Considerations
A. Interaction with Databases
1. Inserting POST Data into a Database
2. Prepared Statements for Security
B. User Authentication and Authorization
1. Handling Login Forms with POST
2. Protecting Sensitive Operations -->

# POST

## POST (vs GET)

### Security

|                       | GET | POST |
| --------------------- | --- | ---- |
| Variables in URL      | Yes | No   |
| Caching               | Yes | No   |
| Encryption with HTTPS | No  | Yes  |

### Data Format

|                 | GET             | POST           |
| --------------- | --------------- | -------------- |
| Data Size Limit | 2048 characters | No limit       |
| Data Type       | Text only       | Text or binary |

### Summary: Which to Use?

|                      | GET | POST |
| -------------------- | --- | ---- |
| Data Retrieval       | Yes | No   |
| Persistent URLs      | Yes | No   |
| Presentation Changes | Yes | No   |
| Sensitive Data       | No  | Yes  |
| File Uploads         | No  | Yes  |
| Application Changes  | No  | Yes  |

_GET_

- Data retrieval
  - Searching
  - Navigating
- Persistent URLs
  - Bookmarks
  - Sharing
- Change presentation (Safe operations)
  - Sorting
  - Filtering
  - Pagination

_POST_

- Data creation or modification
  - Form submissions
  - File uploads
- Change application state (Unsafe operations)
  - Database updates
  - File management
  - Email
  - Authentication
  - Session management
  - Logging
