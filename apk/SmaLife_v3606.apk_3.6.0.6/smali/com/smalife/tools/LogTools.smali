.class public Lcom/smalife/tools/LogTools;
.super Ljava/lang/Object;
.source "LogTools.java"


# instance fields
.field private fileUtils:Lcom/smalife/tools/FileUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/smalife/tools/FileUtils;

    invoke-direct {v0}, Lcom/smalife/tools/FileUtils;-><init>()V

    iput-object v0, p0, Lcom/smalife/tools/LogTools;->fileUtils:Lcom/smalife/tools/FileUtils;

    .line 12
    return-void
.end method


# virtual methods
.method public log2bytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "logs"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public writeLogs(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "contents"    # [B

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    const-string p1, "welcome"

    .line 22
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "fileName":Ljava/lang/String;
    const-string v2, "path"

    .line 24
    .local v2, "path":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/sma/logs/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .local v3, "tempfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 33
    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    .local v1, "in":Ljava/io/ByteArrayInputStream;
    iget-object v4, p0, Lcom/smalife/tools/LogTools;->fileUtils:Lcom/smalife/tools/FileUtils;

    const-string v5, "sma/logs"

    invoke-virtual {v4, v5, v0, v1}, Lcom/smalife/tools/FileUtils;->writeToSDfromInput(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;

    .line 35
    .end local v1    # "in":Ljava/io/ByteArrayInputStream;
    .end local v3    # "tempfile":Ljava/io/File;
    :cond_2
    return-void
.end method
