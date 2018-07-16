.class public Lorg/android/agoo/ut/UTFactroy;
.super Ljava/lang/Object;
.source "UTFactroy.java"


# static fields
.field private static final AGOO_EVENT_ANDROID_MODULE:Ljava/lang/String; = "agoo_android_module"

.field private static final instance:Lorg/android/agoo/ut/UTFactroy;


# instance fields
.field private volatile logger:Lorg/android/agoo/ut/UT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lorg/android/agoo/ut/UTFactroy;

    invoke-direct {v0}, Lorg/android/agoo/ut/UTFactroy;-><init>()V

    sput-object v0, Lorg/android/agoo/ut/UTFactroy;->instance:Lorg/android/agoo/ut/UTFactroy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/ut/UTFactroy;->logger:Lorg/android/agoo/ut/UT;

    .line 9
    return-void
.end method

.method public static getInstance()Lorg/android/agoo/ut/UTFactroy;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lorg/android/agoo/ut/UTFactroy;->instance:Lorg/android/agoo/ut/UTFactroy;

    return-object v0
.end method


# virtual methods
.method public final varargs commitEvent(Landroid/content/Context;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/ut/UTFactroy;->logger:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p1}, Lorg/android/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {p0, p1}, Lorg/android/agoo/ut/UTFactroy;->getLogger(Landroid/content/Context;)Lorg/android/agoo/ut/UT;

    move-result-object v0

    const v1, 0x1051b9cd

    const-string v2, "agoo_android_module"

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getLogger(Landroid/content/Context;)Lorg/android/agoo/ut/UT;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/ut/UTFactroy;->logger:Lorg/android/agoo/ut/UT;

    if-nez v0, :cond_0

    .line 22
    invoke-static {p1}, Lorg/android/Config;->getLoggerClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/ut/UT;

    iput-object v0, p0, Lorg/android/agoo/ut/UTFactroy;->logger:Lorg/android/agoo/ut/UT;

    .line 25
    invoke-static {p1}, Lorg/android/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {p1}, Lorg/android/Config;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    invoke-static {p1}, Lorg/android/Config;->getAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 29
    iget-object v3, p0, Lorg/android/agoo/ut/UTFactroy;->logger:Lorg/android/agoo/ut/UT;

    invoke-interface {v3, p1, v0, v2, v1}, Lorg/android/agoo/ut/UT;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/android/agoo/ut/UTFactroy;->logger:Lorg/android/agoo/ut/UT;

    return-object v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/ut/UTFactroy;->logger:Lorg/android/agoo/ut/UT;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    throw v0
.end method
