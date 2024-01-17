<!--
## Understanding URL

<figure>
    <span>
        <img src="https://miro.medium.com/v2/resize:fit:1100/format:webp/1*O2QB8zBNMs7SN44AhGdPrg.png" style="">
    </span>
    <figcaption>
        <a href="https://medium.com/@joseph.pyram/9-parts-of-a-url-that-you-should-know-89fea8e11713">9 Parts of a URL You Should Know</a>
    </figcaption>
</figure>

- A URL is a **Uniform Resource Locator**.

### Protocol

- The protocol tells the browser how to communicate with the server.
- HTTP = **HyperText Transfer Protocol**
  - The protocol used to transfer web pages.
- HTTPS = **HyperText Transfer Protocol Secure**
  - Uses SSL/TLS to encrypt the connection.

### Domain Name

- An **IP address** is a unique identifier for a computer on a network.
  - IP addresses are for computers and nerds.
- **DNS (Domain Name System)** is a service that translates hostnames to IP addresses.
  - Domain names are for humans.
  - It's just a lookup table.

### Localhost

- **localhost** is a special hostname that refers to the local machine.
- We can ping the localhost to get the IP address.

```bash
$ ping localhost
```

### Port

- Ports are used to identify which program should receive the data.
- A program is said to be 'listening' on a port.

#### Default ports:

If no port is specified, the browser will use the default port for the protocol.

| Protocol | Port |
| -------- | ---- |
| HTTP     | 80   |
| HTTPS    | 443  |
| MariaDB  | 3306 |

### Path

- The path is the location of the resource on the server.
- The **root** of our web server is the _htdocs_ folder.
- For this class:
  - **http://localhost:80/SDEV255/**

TODO -->
