.class public Lyhq/jad/easysdk/AESLib;
.super Ljava/lang/Object;
.source "AESLib.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static J_encrypt(I[B[B)V
    .locals 11
    .param p0, "len"    # I
    .param p1, "Src_content"    # [B
    .param p2, "Ret_content"    # [B

    .prologue
    const/16 v10, 0x10

    .line 19
    new-array v7, v10, [B

    fill-array-data v7, :array_0

    .line 20
    .local v7, "key_b":[B
    const/4 v4, 0x0

    .line 22
    .local v4, "i":I
    const/16 v8, 0x10

    :try_start_0
    new-array v2, v8, [B

    .line 23
    .local v2, "content_tmp":[B
    const/16 v8, 0x10

    new-array v1, v8, [B

    .line 24
    .local v1, "content_ret":[B
    const-string v8, "AES/ECB/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 26
    .local v0, "aesECB":Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 27
    .local v6, "key":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 30
    if-le p0, v10, :cond_7

    .line 32
    const/4 v5, 0x0

    .line 33
    .local v5, "j":I
    const/4 v5, 0x0

    :goto_0
    div-int/lit8 v8, p0, 0x10

    if-lt v5, v8, :cond_1

    .line 42
    rem-int/lit8 v8, p0, 0x10

    if-eqz v8, :cond_0

    .line 44
    const/4 v4, 0x0

    :goto_1
    rem-int/lit8 v8, p0, 0x10

    if-lt v4, v8, :cond_4

    .line 46
    const/4 v4, 0x0

    :goto_2
    rem-int/lit8 v8, p0, 0x10

    rsub-int/lit8 v8, v8, 0x10

    if-lt v4, v8, :cond_5

    .line 50
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 51
    const/4 v4, 0x0

    :goto_3
    if-lt v4, v10, :cond_6

    .line 104
    .end local v0    # "aesECB":Ljavax/crypto/Cipher;
    .end local v1    # "content_ret":[B
    .end local v2    # "content_tmp":[B
    .end local v5    # "j":I
    .end local v6    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    :goto_4
    return-void

    .line 35
    .restart local v0    # "aesECB":Ljavax/crypto/Cipher;
    .restart local v1    # "content_ret":[B
    .restart local v2    # "content_tmp":[B
    .restart local v5    # "j":I
    .restart local v6    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :cond_1
    const/4 v4, 0x0

    :goto_5
    if-lt v4, v10, :cond_2

    .line 37
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 38
    const/4 v4, 0x0

    :goto_6
    if-lt v4, v10, :cond_3

    .line 33
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 36
    :cond_2
    mul-int/lit8 v8, v5, 0x10

    add-int/2addr v8, v4

    aget-byte v8, p1, v8

    aput-byte v8, v2, v4

    .line 35
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 39
    :cond_3
    mul-int/lit8 v8, v5, 0x10

    add-int/2addr v8, v4

    aget-byte v9, v1, v4

    aput-byte v9, p2, v8

    .line 38
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 45
    :cond_4
    mul-int/lit8 v8, v5, 0x10

    add-int/2addr v8, v4

    aget-byte v8, p1, v8

    aput-byte v8, v2, v4

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 48
    :cond_5
    rem-int/lit8 v8, p0, 0x10

    add-int/2addr v8, v4

    const/4 v9, 0x0

    aput-byte v9, v2, v8

    .line 46
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 52
    :cond_6
    mul-int/lit8 v8, v5, 0x10

    add-int/2addr v8, v4

    aget-byte v9, v1, v4

    aput-byte v9, p2, v8

    .line 51
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 58
    .end local v5    # "j":I
    :cond_7
    const/4 v4, 0x0

    :goto_7
    if-lt v4, v10, :cond_8

    .line 60
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 61
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v10, :cond_0

    .line 62
    aget-byte v8, v1, v4

    aput-byte v8, p2, v4

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 59
    :cond_8
    aget-byte v8, p1, v4

    aput-byte v8, v2, v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 92
    .end local v0    # "aesECB":Ljavax/crypto/Cipher;
    .end local v1    # "content_ret":[B
    .end local v2    # "content_tmp":[B
    .end local v6    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_4

    .line 94
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    .line 95
    .local v3, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v3}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_4

    .line 96
    .end local v3    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v3

    .line 97
    .local v3, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_4

    .line 98
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v3

    .line 99
    .local v3, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v3}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_4

    .line 100
    .end local v3    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v3

    .line 101
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v3}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_4

    .line 19
    :array_0
    .array-data 1
        0x34t
        0x2at
        0x7t
        0x2ct
        0x1ct
        0x39t
        0x3ct
        0x56t
        0x20t
        0x2ct
        0x9t
        0x2ft
        0x1bt
        0x60t
        0x36t
        0x31t
    .end array-data
.end method
