# Nimrod module with more HTTP functions.

# Written by Adam Chesak.
# Code released under the MIT open source license.

# Import modules.
import httpclient
import strtabs


proc head*(url : string, extraHeaders : string = "", maxRedirects : int = 5, sslContext : PSSLContext = defaultSSLContext, timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): TResponse = 
    ## Makes a HEAD request.


proc headHeaders*(url : string, extraHeaders : string = "", maxRedirects : int = 5, sslContext : PSSLContext = defaultSSLContext, timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): PStringTable = 
    ## Makes a HEAD request, only returning the headers.


proc put*(url : string, extraHeaders : string = "", maxRedirects : int = 5, sslContext : PSSLContext = defaultSSLContext, timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): TResponse = 
    ## Makes a PUT request.


proc putContent*(url : string, extraHeaders : string = "", maxRedirects : int = 5, sslContext : PSSLContext = defaultSSLContext, timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): string = 
    ## Makes a PUT request, only returning the body.


proc delete*(url : string, extraHeaders : string = "", maxRedirects : int = 5, sslContext : PSSLContext = defaultSSLContext, timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): TResponse = 
    ## Makes a DELETE request.


proc deleteContent*(url : string, extraHeaders : string = "", maxRedirects : int = 5, sslContext : PSSLContext = defaultSSLContext, timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): string = 
    ## Makes a DELETE request, only returning the body.


proc trace*(url : string, extraHeaders : string = "", maxRedirects : int = 5, sslContext : PSSLContext = defaultSSLContext, timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): TResponse = 
    ## Makes a TRACE request.


proc traceContent*(url : string, extraHeaders : string = "", maxRedirects : int = 5, sslContext : PSSLContext = defaultSSLContext, timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): string = 
    ## Makes a TRACE request, only returning the body.


proc options*(url : string, extraHeaders : string = "", maxRedirects : int = 5, sslContext : PSSLContext = defaultSSLContext, timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): TResponse = 
    ## Makes an OPTIONS request.


proc createParams*(params : TStringTable): string = 
    ## Creates a parameter list.


proc appendParams*(url : string, params : TStringTable): string = 
    ## Creates a parameter list and appends it to the URL for use in a GET request.