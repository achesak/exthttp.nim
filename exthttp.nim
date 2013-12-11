# Nimrod module with more HTTP functions.

# Written by Adam Chesak.
# Code released under the MIT open source license.

# Import modules.
import httpclient
import strtabs


proc head*(url : string, extraHeaders : string = "", body : string = "", timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): TResponse = 
    ## Makes a HEAD request.
    
    return request(url, httpHEAD, extraHeaders = extraHeaders, body = body, timeout = timeout, userAgent = userAgent, proxy = proxy)


proc headHeaders*(url : string, extraHeaders : string = "", body : string = "", timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): PStringTable = 
    ## Makes a HEAD request, only returning the headers.
    
    return request(url, httpHEAD, extraHeaders = extraHeaders, body = body, timeout = timeout, userAgent = userAgent, proxy = proxy).headers


proc put*(url : string, extraHeaders : string = "", body : string = "", timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): TResponse = 
    ## Makes a PUT request.
    
    return request(url, httpPUT, extraHeaders = extraHeaders, body = body, timeout = timeout, userAgent = userAgent, proxy = proxy)


proc putContent*(url : string, extraHeaders : string = "", body : string = "", timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): string = 
    ## Makes a PUT request, only returning the body.
    
    return request(url, httpPUT, extraHeaders = extraHeaders, body = body, timeout = timeout, userAgent = userAgent, proxy = proxy).body


proc delete*(url : string, extraHeaders : string = "", body : string = "", timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): TResponse = 
    ## Makes a DELETE request.
    
    return request(url, httpDELETE, extraHeaders = extraHeaders, body = body, timeout = timeout, userAgent = userAgent, proxy = proxy)


proc deleteContent*(url : string, extraHeaders : string = "", body : string = "", timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): string = 
    ## Makes a DELETE request, only returning the body.
    
    return request(url, httpDELETE, extraHeaders = extraHeaders, body = body, timeout = timeout, userAgent = userAgent, proxy = proxy).body


proc trace*(url : string, extraHeaders : string = "", body : string = "", timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): TResponse = 
    ## Makes a TRACE request.
    
    return request(url, httpTRACE, extraHeaders = extraHeaders, body = body, timeout = timeout, userAgent = userAgent, proxy = proxy)


proc traceContent*(url : string, extraHeaders : string = "", body : string = "", timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): string = 
    ## Makes a TRACE request, only returning the body.
    
    return request(url, httpTRACE, extraHeaders = extraHeaders, body = body, timeout = timeout, userAgent = userAgent, proxy = proxy).body


proc options*(url : string, extraHeaders : string = "", body : string = "", timeout : int = -1, userAgent = defUserAgent, proxy : PProxy = nil): TResponse = 
    ## Makes an OPTIONS request.
    
    return request(url, httpOPTIONS, extraHeaders = extraHeaders, body = body, timeout = timeout, userAgent = userAgent, proxy = proxy)


proc createParams*(params : TStringTable): string = 
    ## Creates a parameter list.


proc appendParams*(url : string, params : TStringTable): string = 
    ## Creates a parameter list and appends it to the URL for use in a GET request.

