.class public Lcom/accloud/common/ACSigner;
.super Ljava/lang/Object;
.source "ACSigner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genRefreshSignString(JJLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "timestamp"    # J
    .param p2, "timeout"    # J
    .param p4, "nonce"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v3, "ablecloud_private_refresh_token"

    invoke-static {v2, v3}, Lcom/accloud/utils/PreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "stringToSign":Ljava/lang/String;
    return-object v0
.end method

.method public static genSignString(JJLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "timestamp"    # J
    .param p2, "timeout"    # J
    .param p4, "nonce"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v3, "ablecloud_private_token"

    invoke-static {v2, v3}, Lcom/accloud/utils/PreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "stringToSign":Ljava/lang/String;
    return-object v0
.end method

.method public static genSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "stringToSign"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v8, ""

    .line 31
    .local v8, "signature":Ljava/lang/String;
    :try_start_0
    const-string v9, "SHA-1"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 32
    .local v5, "md":Ljava/security/MessageDigest;
    const-string v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 33
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 35
    .local v6, "result":[B
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v7, "sb":Ljava/lang/StringBuffer;
    move-object v0, v6

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v1, v0, v3

    .line 38
    .local v1, "b":B
    and-int/lit16 v2, v1, 0xff

    .line 39
    .local v2, "i":I
    const/16 v9, 0xf

    if-gt v2, v9, :cond_0

    .line 40
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 42
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "b":B
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 47
    .end local v0    # "arr$":[B
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "result":[B
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v8

    .line 45
    :catch_0
    move-exception v9

    goto :goto_1
.end method
