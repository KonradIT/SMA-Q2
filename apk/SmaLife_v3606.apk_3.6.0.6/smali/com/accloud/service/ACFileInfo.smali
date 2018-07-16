.class public Lcom/accloud/service/ACFileInfo;
.super Ljava/lang/Object;
.source "ACFileInfo.java"


# instance fields
.field private acl:Lcom/accloud/service/ACACL;

.field private bucket:Ljava/lang/String;

.field private data:[B

.field private file:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private isPublic:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucket"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/accloud/service/ACFileInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isPublic"    # Z
    .param p2, "bucket"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/accloud/service/ACFileInfo;->isPublic:Z

    .line 38
    iput-object p2, p0, Lcom/accloud/service/ACFileInfo;->bucket:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/accloud/service/ACFileInfo;->filename:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getACL()Lcom/accloud/service/ACACL;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 85
    iget-object v0, p0, Lcom/accloud/service/ACFileInfo;->acl:Lcom/accloud/service/ACACL;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/accloud/service/ACACL;

    invoke-direct {v0}, Lcom/accloud/service/ACACL;-><init>()V

    iput-object v0, p0, Lcom/accloud/service/ACFileInfo;->acl:Lcom/accloud/service/ACACL;

    .line 87
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v1, "ablecloud_private_userId"

    invoke-static {v0, v1, v4, v5}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/accloud/service/ACFileInfo;->acl:Lcom/accloud/service/ACACL;

    sget-object v1, Lcom/accloud/service/ACACL$OpType;->WRITE:Lcom/accloud/service/ACACL$OpType;

    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v3, "ablecloud_private_userId"

    invoke-static {v2, v3, v4, v5}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/accloud/service/ACACL;->setUserAccess(Lcom/accloud/service/ACACL$OpType;J)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/accloud/service/ACFileInfo;->acl:Lcom/accloud/service/ACACL;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/accloud/service/ACFileInfo;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/accloud/service/ACFileInfo;->data:[B

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/accloud/service/ACFileInfo;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/accloud/service/ACFileInfo;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/accloud/service/ACFileInfo;->isPublic:Z

    return v0
.end method

.method public setACL(Lcom/accloud/service/ACACL;)V
    .locals 0
    .param p1, "acl"    # Lcom/accloud/service/ACACL;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/accloud/service/ACFileInfo;->acl:Lcom/accloud/service/ACACL;

    .line 82
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 59
    iput-object p1, p0, Lcom/accloud/service/ACFileInfo;->data:[B

    .line 60
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/accloud/service/ACFileInfo;->file:Ljava/io/File;

    .line 70
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/accloud/service/ACFileInfo;->file:Ljava/io/File;

    .line 65
    return-void
.end method

.method public setIsPublic(Z)V
    .locals 0
    .param p1, "isPublic"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/accloud/service/ACFileInfo;->isPublic:Z

    .line 48
    return-void
.end method
