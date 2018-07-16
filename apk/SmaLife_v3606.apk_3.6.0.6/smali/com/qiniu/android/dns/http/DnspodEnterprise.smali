.class public final Lcom/qiniu/android/dns/http/DnspodEnterprise;
.super Ljava/lang/Object;
.source "DnspodEnterprise.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# instance fields
.field private final id:Ljava/lang/String;

.field private final ip:Ljava/lang/String;

.field private final key:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "119.29.29.29"

    invoke-direct {p0, p1, p2, v0}, Lcom/qiniu/android/dns/http/DnspodEnterprise;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ip"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->id:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->ip:Ljava/lang/String;

    .line 35
    const/4 v2, 0x0

    new-array v1, v2, [B

    .line 37
    .local v1, "k":[B
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "DES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->key:Ljavax/crypto/spec/SecretKeySpec;

    .line 42
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 121
    :try_start_0
    const-string v3, "DES/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 122
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Lcom/qiniu/android/dns/util/Hex;->decodeHex([C)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 125
    .local v1, "decrypted":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decrypted":[B
    :goto_0
    return-object v3

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const-string v3, ""

    goto :goto_0
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    const-string v3, "DES/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 108
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 109
    const-string v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 110
    .local v2, "encryptedString":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/qiniu/android/dns/util/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 116
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encryptedString":[B
    :goto_0
    return-object v3

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 28
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .param p2, "info"    # Lcom/qiniu/android/dns/NetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/16 v25, 0x0

    .line 52
    .local v25, "uri":Ljava/net/URI;
    :try_start_0
    new-instance v25, Ljava/net/URI;

    .end local v25    # "uri":Ljava/net/URI;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/d?ttl=1&dn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/qiniu/android/dns/http/DnspodEnterprise;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .restart local v25    # "uri":Ljava/net/URI;
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 59
    .local v9, "client":Lorg/apache/http/client/HttpClient;
    new-instance v21, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 60
    .local v21, "request":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 61
    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 62
    .local v22, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v23

    .line 63
    .local v23, "responseCode":I
    const/16 v2, 0xc8

    move/from16 v0, v23

    if-eq v0, v2, :cond_1

    .line 64
    const/16 v20, 0x0

    .line 102
    :cond_0
    :goto_0
    return-object v20

    .line 54
    .end local v9    # "client":Lorg/apache/http/client/HttpClient;
    .end local v21    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    .end local v23    # "responseCode":I
    .end local v25    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v11

    .line 55
    .local v11, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 66
    .end local v11    # "e":Ljava/net/URISyntaxException;
    .restart local v9    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v21    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    .restart local v23    # "responseCode":I
    .restart local v25    # "uri":Ljava/net/URI;
    :cond_1
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 67
    .local v12, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    .line 68
    .local v16, "length":J
    const-wide/16 v2, 0x400

    cmp-long v2, v16, v2

    if-gtz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_3

    .line 69
    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 72
    .local v15, "is":Ljava/io/InputStream;
    move-wide/from16 v0, v16

    long-to-int v2, v0

    new-array v10, v2, [B

    .line 73
    .local v10, "data":[B
    const/16 v19, 0x0

    .line 75
    .local v19, "read":I
    :try_start_1
    invoke-virtual {v15, v10}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    .line 79
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 81
    new-instance v8, Ljava/lang/String;

    const/4 v2, 0x0

    move/from16 v0, v19

    invoke-direct {v8, v10, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 82
    .local v8, "body":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/qiniu/android/dns/http/DnspodEnterprise;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 83
    .local v24, "result":Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 84
    .local v18, "r1":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 85
    const/16 v20, 0x0

    goto :goto_0

    .line 76
    .end local v8    # "body":Ljava/lang/String;
    .end local v18    # "r1":[Ljava/lang/String;
    .end local v24    # "result":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 77
    .local v11, "e":Ljava/io/IOException;
    :try_start_2
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    throw v2

    .line 89
    .restart local v8    # "body":Ljava/lang/String;
    .restart local v18    # "r1":[Ljava/lang/String;
    .restart local v24    # "result":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    :try_start_3
    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    .line 93
    .local v5, "ttl":I
    const/4 v2, 0x0

    aget-object v2, v18, v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, "ips":[Ljava/lang/String;
    array-length v2, v14

    if-nez v2, :cond_5

    .line 95
    const/16 v20, 0x0

    goto :goto_0

    .line 90
    .end local v5    # "ttl":I
    .end local v14    # "ips":[Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 91
    .local v11, "e":Ljava/lang/Exception;
    const/16 v20, 0x0

    goto :goto_0

    .line 97
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v5    # "ttl":I
    .restart local v14    # "ips":[Ljava/lang/String;
    :cond_5
    array-length v2, v14

    new-array v0, v2, [Lcom/qiniu/android/dns/Record;

    move-object/from16 v20, v0

    .line 98
    .local v20, "records":[Lcom/qiniu/android/dns/Record;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v26, 0x3e8

    div-long v6, v2, v26

    .line 99
    .local v6, "time":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v2, v14

    if-ge v13, v2, :cond_0

    .line 100
    new-instance v2, Lcom/qiniu/android/dns/Record;

    aget-object v3, v14, v13

    const/4 v4, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/qiniu/android/dns/Record;-><init>(Ljava/lang/String;IIJ)V

    aput-object v2, v20, v13

    .line 99
    add-int/lit8 v13, v13, 0x1

    goto :goto_1
.end method
