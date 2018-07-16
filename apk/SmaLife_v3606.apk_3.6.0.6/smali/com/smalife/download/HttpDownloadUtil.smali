.class public Lcom/smalife/download/HttpDownloadUtil;
.super Ljava/lang/Object;
.source "HttpDownloadUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "urlstr"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v0, Lcom/smalife/tools/FileUtils;

    invoke-direct {v0}, Lcom/smalife/tools/FileUtils;-><init>()V

    .line 59
    .local v0, "fileUtils":Lcom/smalife/tools/FileUtils;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smalife/tools/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    const/4 v3, 0x1

    .line 68
    :goto_0
    return v3

    .line 62
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smalife/download/HttpDownloadUtil;->getInputStreamFormUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 63
    invoke-virtual {v0, p2, p3, v1}, Lcom/smalife/tools/FileUtils;->writeToSDfromInput(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v2

    .line 64
    .local v2, "resultFile":Ljava/io/File;
    if-nez v2, :cond_1

    .line 65
    const/4 v3, -0x1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public downFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "urlstr"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 23
    .local v0, "buffer":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 24
    .local v5, "url":Ljava/net/URL;
    const/4 v3, 0x0

    .line 27
    .local v3, "line":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .end local v5    # "url":Ljava/net/URL;
    .local v6, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 31
    .local v7, "urlConn":Ljava/net/HttpURLConnection;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .local v1, "buffer":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    if-nez v3, :cond_0

    .line 41
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    move-object v0, v1

    .line 46
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .end local v7    # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 33
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v5    # "url":Ljava/net/URL;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "url":Ljava/net/URL;
    .restart local v7    # "urlConn":Ljava/net/HttpURLConnection;
    :cond_0
    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    move-object v0, v1

    .line 36
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .end local v7    # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/net/MalformedURLException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 41
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 42
    :catch_1
    move-exception v2

    .line 43
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 37
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 38
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 41
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 42
    :catch_3
    move-exception v2

    .line 43
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 39
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 41
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 45
    :goto_5
    throw v8

    .line 42
    :catch_4
    move-exception v2

    .line 43
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 42
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "url":Ljava/net/URL;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "url":Ljava/net/URL;
    .restart local v7    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_5
    move-exception v2

    .line 43
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    move-object v0, v1

    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    goto :goto_1

    .line 39
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "url":Ljava/net/URL;
    .end local v7    # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v6    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    goto :goto_4

    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v5    # "url":Ljava/net/URL;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "url":Ljava/net/URL;
    .restart local v7    # "urlConn":Ljava/net/HttpURLConnection;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    move-object v0, v1

    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    goto :goto_4

    .line 37
    .end local v5    # "url":Ljava/net/URL;
    .end local v7    # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v6    # "url":Ljava/net/URL;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    goto :goto_3

    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v5    # "url":Ljava/net/URL;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "url":Ljava/net/URL;
    .restart local v7    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    move-object v0, v1

    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    goto :goto_3

    .line 35
    .end local v7    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_8
    move-exception v2

    goto :goto_2

    .end local v5    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :catch_9
    move-exception v2

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    goto :goto_2
.end method

.method public getInputStreamFormUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "urlstr"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 81
    .local v3, "urlConn":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 87
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConn":Ljava/net/HttpURLConnection;
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
