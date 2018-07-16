.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 28
    .param p0, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 42
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 44
    .local v7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v16, 0x0

    .line 45
    .local v16, "serverDate":J
    const-wide/16 v10, 0x0

    .line 46
    .local v10, "lastModified":J
    const-wide/16 v18, 0x0

    .line 47
    .local v18, "serverExpires":J
    const-wide/16 v20, 0x0

    .line 48
    .local v20, "softExpire":J
    const-wide/16 v4, 0x0

    .line 49
    .local v4, "finalExpire":J
    const-wide/16 v12, 0x0

    .line 50
    .local v12, "maxAge":J
    const-wide/16 v22, 0x0

    .line 51
    .local v22, "staleWhileRevalidate":J
    const/4 v3, 0x0

    .line 53
    .local v3, "hasCacheControl":Z
    const/4 v9, 0x0

    .line 56
    .local v9, "serverEtag":Ljava/lang/String;
    const-string v26, "Date"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 57
    .local v6, "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 58
    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v16

    .line 61
    :cond_0
    const-string v26, "Cache-Control"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "headerValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 62
    .restart local v6    # "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 63
    const/4 v3, 0x1

    .line 64
    const-string v26, ","

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 65
    .local v25, "tokens":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v8, v0, :cond_5

    .line 85
    .end local v8    # "i":I
    .end local v25    # "tokens":[Ljava/lang/String;
    :cond_1
    const-string v26, "Expires"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "headerValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 86
    .restart local v6    # "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 87
    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v18

    .line 90
    :cond_2
    const-string v26, "Last-Modified"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "headerValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 91
    .restart local v6    # "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 92
    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v10

    .line 95
    :cond_3
    const-string v26, "ETag"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "serverEtag":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 99
    .restart local v9    # "serverEtag":Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 100
    const-wide/16 v26, 0x3e8

    mul-long v26, v26, v12

    add-long v20, v14, v26

    .line 101
    const-wide/16 v26, 0x3e8

    mul-long v26, v26, v22

    add-long v4, v20, v26

    .line 108
    :cond_4
    :goto_1
    new-instance v2, Lcom/android/volley/Cache$Entry;

    invoke-direct {v2}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 109
    .local v2, "entry":Lcom/android/volley/Cache$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput-object v0, v2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 110
    iput-object v9, v2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 111
    move-wide/from16 v0, v20

    iput-wide v0, v2, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 112
    iput-wide v4, v2, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 113
    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 114
    iput-wide v10, v2, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 115
    iput-object v7, v2, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 117
    .end local v2    # "entry":Lcom/android/volley/Cache$Entry;
    :goto_2
    return-object v2

    .line 66
    .restart local v8    # "i":I
    .restart local v25    # "tokens":[Ljava/lang/String;
    :cond_5
    aget-object v26, v25, v8

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 67
    .local v24, "token":Ljava/lang/String;
    const-string v26, "no-cache"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string v26, "no-store"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 68
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 69
    :cond_7
    const-string v26, "max-age="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 71
    const/16 v26, 0x8

    :try_start_0
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v12

    .line 65
    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 74
    :cond_9
    const-string v26, "stale-while-revalidate="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 76
    const/16 v26, 0x17

    :try_start_1
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v22

    goto :goto_3

    .line 79
    :cond_a
    const-string v26, "must-revalidate"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "proxy-revalidate"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 80
    :cond_b
    const-wide/16 v12, 0x0

    goto :goto_3

    .line 102
    .end local v8    # "i":I
    .end local v24    # "token":Ljava/lang/String;
    .end local v25    # "tokens":[Ljava/lang/String;
    :cond_c
    const-wide/16 v26, 0x0

    cmp-long v26, v16, v26

    if-lez v26, :cond_4

    cmp-long v26, v18, v16

    if-ltz v26, :cond_4

    .line 104
    sub-long v26, v18, v16

    add-long v20, v14, v26

    .line 105
    move-wide/from16 v4, v20

    goto/16 :goto_1

    .line 77
    .restart local v8    # "i":I
    .restart local v24    # "token":Ljava/lang/String;
    .restart local v25    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v26

    goto :goto_3

    .line 72
    :catch_1
    move-exception v26

    goto :goto_3
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Content-Type"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 144
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "params":[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_1

    .line 155
    .end local v1    # "i":I
    .end local v3    # "params":[Ljava/lang/String;
    .end local p1    # "defaultCharset":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p1

    .line 146
    .restart local v1    # "i":I
    .restart local v3    # "params":[Ljava/lang/String;
    .restart local p1    # "defaultCharset":Ljava/lang/String;
    :cond_1
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 148
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    const/4 v4, 0x1

    aget-object p1, v2, v4

    goto :goto_1

    .line 145
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 4
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 129
    :goto_0
    return-wide v2

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Lorg/apache/http/impl/cookie/DateParseException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
