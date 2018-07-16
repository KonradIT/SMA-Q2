.class public final Lcom/qiniu/android/http/UserAgent;
.super Ljava/lang/Object;
.source "UserAgent.java"


# static fields
.field private static _instance:Lcom/qiniu/android/http/UserAgent;


# instance fields
.field public final id:Ljava/lang/String;

.field public final ua:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/qiniu/android/http/UserAgent;

    invoke-direct {v0}, Lcom/qiniu/android/http/UserAgent;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/UserAgent;->_instance:Lcom/qiniu/android/http/UserAgent;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->genId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/http/UserAgent;->id:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/qiniu/android/http/UserAgent;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/http/UserAgent;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/http/UserAgent;->ua:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private static genId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 28
    .local v0, "r":Ljava/util/Random;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, "QiniuAndroid/%s (%s; %s; %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "7.0.7"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static instance()Lcom/qiniu/android/http/UserAgent;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/qiniu/android/http/UserAgent;->_instance:Lcom/qiniu/android/http/UserAgent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qiniu/android/http/UserAgent;->ua:Ljava/lang/String;

    return-object v0
.end method
