.class public final Lcom/qiniu/android/storage/persistent/FileRecorder;
.super Ljava/lang/Object;
.source "FileRecorder.java"

# interfaces
.implements Lcom/qiniu/android/storage/Recorder;


# instance fields
.field public directory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/qiniu/android/storage/persistent/FileRecorder;->directory:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 23
    .local v1, "r":Z
    if-nez v1, :cond_1

    .line 24
    new-instance v2, Ljava/io/IOException;

    const-string v3, "mkdir failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 28
    .end local v1    # "r":Z
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 29
    new-instance v2, Ljava/io/IOException;

    const-string v3, "does not mkdir"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_1
    return-void
.end method


# virtual methods
.method public del(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qiniu/android/storage/persistent/FileRecorder;->directory:Ljava/lang/String;

    invoke-static {p1}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 97
    return-void
.end method

.method public get(Ljava/lang/String;)[B
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/qiniu/android/storage/persistent/FileRecorder;->directory:Ljava/lang/String;

    invoke-static {p1}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v2, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 67
    .local v3, "fi":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    .line 68
    .local v0, "data":[B
    const/4 v5, 0x0

    .line 70
    .local v5, "read":I
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v3    # "fi":Ljava/io/FileInputStream;
    .local v4, "fi":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    move-object v3, v4

    .line 75
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 77
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    :cond_0
    :goto_1
    if-nez v5, :cond_1

    .line 83
    const/4 v0, 0x0

    .line 85
    .end local v0    # "data":[B
    :cond_1
    return-object v0

    .line 72
    .restart local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 79
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "fi":Ljava/io/FileInputStream;
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public set(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 41
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/qiniu/android/storage/persistent/FileRecorder;->directory:Ljava/lang/String;

    invoke-static {p1}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x0

    .line 44
    .local v2, "fo":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v2    # "fo":Ljava/io/FileOutputStream;
    .local v3, "fo":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 49
    .end local v3    # "fo":Ljava/io/FileOutputStream;
    .restart local v2    # "fo":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v2, :cond_0

    .line 51
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    :cond_0
    :goto_1
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 53
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 46
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fo":Ljava/io/FileOutputStream;
    .restart local v3    # "fo":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "fo":Ljava/io/FileOutputStream;
    .restart local v2    # "fo":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
