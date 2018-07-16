.class public Lcom/umeng/message/proguard/af;
.super Ljava/lang/Object;
.source "UTExceptionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/proguard/af$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Throwable;)Lcom/umeng/message/proguard/af$a;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 12
    if-eqz p0, :cond_7

    .line 14
    new-instance v2, Lcom/umeng/message/proguard/af$a;

    invoke-direct {v2}, Lcom/umeng/message/proguard/af$a;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    move-object v0, p0

    .line 21
    :cond_0
    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 23
    array-length v3, v1

    if-lez v3, :cond_4

    .line 24
    aget-object v1, v1, v6

    .line 25
    if-eqz v1, :cond_4

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    const-string v0, ""

    .line 29
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 30
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 32
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 33
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 37
    :try_start_1
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 38
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 44
    :goto_0
    const-string v3, "}:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5

    .line 45
    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_1
    :goto_1
    invoke-virtual {v2, v1}, Lcom/umeng/message/proguard/af$a;->a(Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    const-string v1, "\n"

    const-string v3, "++"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_2
    invoke-virtual {v2, v0}, Lcom/umeng/message/proguard/af$a;->c(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/proguard/am;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v2, v1}, Lcom/umeng/message/proguard/af$a;->b(Ljava/lang/String;)V

    .line 64
    const-string v1, "com.taobao.statistic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.ut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "org.usertrack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/umeng/message/proguard/af$a;->a(Z)V

    :cond_4
    :goto_2
    move-object v0, v2

    .line 76
    :goto_3
    return-object v0

    .line 34
    :catch_0
    move-exception v5

    .line 37
    :try_start_2
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 38
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 39
    :catch_1
    move-exception v3

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 38
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 41
    :goto_4
    throw v0

    .line 46
    :cond_5
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 47
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 69
    :cond_6
    invoke-virtual {v2, v6}, Lcom/umeng/message/proguard/af$a;->a(Z)V

    goto :goto_2

    .line 76
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 39
    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v3

    goto :goto_0
.end method
