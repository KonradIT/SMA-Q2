.class public Lcom/umeng/message/proguard/ac;
.super Ljava/lang/Object;
.source "UTSecuritySDKRequestAuthentication.java"

# interfaces
.implements Lcom/umeng/message/proguard/aa;


# static fields
.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/umeng/message/proguard/ac;->b:Ljava/lang/reflect/Method;

    .line 42
    sput-object v0, Lcom/umeng/message/proguard/ac;->c:Ljava/lang/reflect/Method;

    .line 43
    sput-object v0, Lcom/umeng/message/proguard/ac;->d:Ljava/lang/Object;

    .line 44
    sput-object v0, Lcom/umeng/message/proguard/ac;->e:Ljava/lang/Class;

    .line 47
    invoke-static {}, Lcom/umeng/message/proguard/ac;->b()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/ac;->a:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/umeng/message/proguard/ac;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 74
    .line 75
    :try_start_0
    sget-object v0, Lcom/umeng/message/proguard/ac;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/message/proguard/ac;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/umeng/message/proguard/ac;->e:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 77
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/umeng/message/proguard/ac;->c:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/umeng/message/proguard/ac;->d:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 83
    check-cast v0, Ljava/lang/String;

    .line 89
    :goto_1
    return-object v0

    .line 80
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/ac;->b:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/umeng/message/proguard/ac;->d:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    const-string v0, ""

    goto :goto_1
.end method

.method private static b()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 51
    const/4 v1, 0x0

    .line 53
    :try_start_0
    const-string v0, "com.taobao.securityjni.SecurityCheck"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 54
    const-string v0, "getCheckSignature"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/ac;->b:Ljava/lang/reflect/Method;

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/ContextWrapper;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 56
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->k()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/ac;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    if-eqz v1, :cond_0

    .line 63
    :try_start_1
    const-string v0, "com.taobao.securityjni.tools.DataContext"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/ac;->e:Ljava/lang/Class;

    .line 64
    const-string v0, "getCheckSignature"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/umeng/message/proguard/ac;->e:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/ac;->c:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :cond_0
    :goto_1
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v2, "initSecurityCheck"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/umeng/message/proguard/y;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 68
    const-string v1, "initSecurityCheck"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/umeng/message/proguard/y;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/umeng/message/proguard/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
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
    .line 32
    iget-object v0, p0, Lcom/umeng/message/proguard/ac;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/umeng/message/proguard/ac;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
