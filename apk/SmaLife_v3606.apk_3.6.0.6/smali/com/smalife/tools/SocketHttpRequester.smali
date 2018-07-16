.class public Lcom/smalife/tools/SocketHttpRequester;
.super Ljava/lang/Object;
.source "SocketHttpRequester.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Lcom/smalife/tools/FormFile;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/smalife/tools/FormFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/smalife/tools/FormFile;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/smalife/tools/FormFile;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/smalife/tools/SocketHttpRequester;->post(Ljava/lang/String;Ljava/util/Map;[Lcom/smalife/tools/FormFile;)Z

    move-result v0

    return v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;[Lcom/smalife/tools/FormFile;)Z
    .locals 34
    .param p0, "path"    # Ljava/lang/String;
    .param p2, "files"    # [Lcom/smalife/tools/FormFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/smalife/tools/FormFile;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "---------------------------7da2137580612"

    .line 41
    .local v4, "BOUNDARY":Ljava/lang/String;
    const-string v11, "-----------------------------7da2137580612--\r\n"

    .line 43
    .local v11, "endline":Ljava/lang/String;
    const/4 v13, 0x0

    .line 44
    .local v13, "fileDataLength":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v28, v0

    const/16 v27, 0x0

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v24, "textEntity":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_2

    .line 70
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int v27, v27, v13

    .line 71
    const-string v28, "-----------------------------7da2137580612--\r\n"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    .line 70
    add-int v10, v27, v28

    .line 73
    .local v10, "dataLength":I
    new-instance v26, Ljava/net/URL;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    .local v26, "url":Ljava/net/URL;
    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getPort()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    const/16 v20, 0x50

    .line 75
    .local v20, "port":I
    :goto_2
    new-instance v23, Ljava/net/Socket;

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 76
    .local v23, "socket":Ljava/net/Socket;
    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    .line 78
    .local v19, "outStream":Ljava/io/OutputStream;
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "POST "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " HTTP/1.1\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 79
    .local v22, "requestmethod":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 80
    const-string v5, "Accept: image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*\r\n"

    .line 81
    .local v5, "accept":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 82
    const-string v17, "Accept-Language: zh-CN\r\n"

    .line 83
    .local v17, "language":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 84
    const-string v9, "Content-Type: multipart/form-data; boundary=---------------------------7da2137580612\r\n"

    .line 86
    .local v9, "contenttype":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 87
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Content-Length: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, "contentlength":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 89
    const-string v6, "Connection: Keep-Alive\r\n"

    .line 90
    .local v6, "alive":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 91
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Host: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 92
    .local v16, "host":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 94
    const-string v27, "\r\n"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 96
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 98
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v28, v0

    const/16 v27, 0x0

    :goto_3
    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    .line 123
    const-string v27, "-----------------------------7da2137580612--\r\n"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 125
    new-instance v21, Ljava/io/BufferedReader;

    new-instance v27, Ljava/io/InputStreamReader;

    .line 126
    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 125
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 127
    .local v21, "reader":Ljava/io/BufferedReader;
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    const-string v28, "200"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 128
    const/16 v27, 0x0

    .line 134
    :goto_4
    return v27

    .line 44
    .end local v5    # "accept":Ljava/lang/String;
    .end local v6    # "alive":Ljava/lang/String;
    .end local v8    # "contentlength":Ljava/lang/String;
    .end local v9    # "contenttype":Ljava/lang/String;
    .end local v10    # "dataLength":I
    .end local v16    # "host":Ljava/lang/String;
    .end local v17    # "language":Ljava/lang/String;
    .end local v19    # "outStream":Ljava/io/OutputStream;
    .end local v20    # "port":I
    .end local v21    # "reader":Ljava/io/BufferedReader;
    .end local v22    # "requestmethod":Ljava/lang/String;
    .end local v23    # "socket":Ljava/net/Socket;
    .end local v24    # "textEntity":Ljava/lang/StringBuilder;
    .end local v26    # "url":Ljava/net/URL;
    :cond_0
    aget-object v25, p2, v27

    .line 45
    .local v25, "uploadFile":Lcom/smalife/tools/FormFile;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v15, "fileExplain":Ljava/lang/StringBuilder;
    const-string v29, "--"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v29, "---------------------------7da2137580612"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v29, "\r\n"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Content-Disposition: form-data;name=\""

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getParameterName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\";filename=\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getFilname()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\"\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Content-Type: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getContentType()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\r\n\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v29, "\r\n"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    add-int v13, v13, v29

    .line 53
    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v29

    if-eqz v29, :cond_1

    .line 54
    int-to-long v0, v13

    move-wide/from16 v30, v0

    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getFile()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->length()J

    move-result-wide v32

    add-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v13, v0

    .line 44
    :goto_5
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 56
    :cond_1
    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getData()[B

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int v13, v13, v29

    goto :goto_5

    .line 60
    .end local v15    # "fileExplain":Ljava/lang/StringBuilder;
    .end local v25    # "uploadFile":Lcom/smalife/tools/FormFile;
    .restart local v24    # "textEntity":Ljava/lang/StringBuilder;
    :cond_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 61
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v27, "--"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v27, "---------------------------7da2137580612"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v27, "\r\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v27, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "\"\r\n\r\n"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 64
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v27, "\r\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 74
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "dataLength":I
    .restart local v26    # "url":Ljava/net/URL;
    :cond_3
    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getPort()I

    move-result v20

    goto/16 :goto_2

    .line 98
    .restart local v5    # "accept":Ljava/lang/String;
    .restart local v6    # "alive":Ljava/lang/String;
    .restart local v8    # "contentlength":Ljava/lang/String;
    .restart local v9    # "contenttype":Ljava/lang/String;
    .restart local v16    # "host":Ljava/lang/String;
    .restart local v17    # "language":Ljava/lang/String;
    .restart local v19    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "port":I
    .restart local v22    # "requestmethod":Ljava/lang/String;
    .restart local v23    # "socket":Ljava/net/Socket;
    :cond_4
    aget-object v25, p2, v27

    .line 99
    .restart local v25    # "uploadFile":Lcom/smalife/tools/FormFile;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v14, "fileEntity":Ljava/lang/StringBuilder;
    const-string v29, "--"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v29, "---------------------------7da2137580612"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v29, "\r\n"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Content-Disposition: form-data;name=\""

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getParameterName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\";filename=\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 105
    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getFilname()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\"\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 103
    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Content-Type: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getContentType()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 107
    const-string v30, "\r\n\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 106
    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 109
    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v29

    if-eqz v29, :cond_6

    .line 110
    const/16 v29, 0x400

    move/from16 v0, v29

    new-array v7, v0, [B

    .line 111
    .local v7, "buffer":[B
    const/16 v18, 0x0

    .line 112
    .local v18, "len":I
    :goto_6
    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x400

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    const/16 v29, -0x1

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 115
    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/InputStream;->close()V

    .line 120
    .end local v7    # "buffer":[B
    .end local v18    # "len":I
    :goto_7
    const-string v29, "\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 98
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    .line 113
    .restart local v7    # "buffer":[B
    .restart local v18    # "len":I
    :cond_5
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v18

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 117
    .end local v7    # "buffer":[B
    .end local v18    # "len":I
    :cond_6
    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getData()[B

    move-result-object v29

    const/16 v30, 0x0

    .line 118
    invoke-virtual/range {v25 .. v25}, Lcom/smalife/tools/FormFile;->getData()[B

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    .line 117
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    .line 130
    .end local v14    # "fileEntity":Ljava/lang/StringBuilder;
    .end local v25    # "uploadFile":Lcom/smalife/tools/FormFile;
    .restart local v21    # "reader":Ljava/io/BufferedReader;
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V

    .line 131
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 132
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->close()V

    .line 133
    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->close()V

    .line 134
    const/16 v27, 0x1

    goto/16 :goto_4
.end method
