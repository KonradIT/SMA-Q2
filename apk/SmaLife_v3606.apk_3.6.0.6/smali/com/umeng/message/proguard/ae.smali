.class public Lcom/umeng/message/proguard/ae;
.super Ljava/lang/Object;
.source "UTCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static d:Lcom/umeng/message/proguard/ae;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Lcom/umeng/message/proguard/ad;

.field private c:Landroid/content/Context;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/umeng/message/proguard/ae;

    invoke-direct {v0}, Lcom/umeng/message/proguard/ae;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/ae;->d:Lcom/umeng/message/proguard/ae;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/umeng/message/proguard/ae;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 19
    iput-object v0, p0, Lcom/umeng/message/proguard/ae;->b:Lcom/umeng/message/proguard/ad;

    .line 20
    iput-object v0, p0, Lcom/umeng/message/proguard/ae;->c:Landroid/content/Context;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/ae;->e:Z

    .line 27
    return-void
.end method

.method public static a()Lcom/umeng/message/proguard/ae;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/umeng/message/proguard/ae;->d:Lcom/umeng/message/proguard/ae;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/umeng/message/proguard/ae;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/ae;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 57
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/ae;->e:Z

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/umeng/message/proguard/ae;->c:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/umeng/message/proguard/ae;->d()V

    .line 48
    return-void
.end method

.method public a(Lcom/umeng/message/proguard/ad;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/umeng/message/proguard/ae;->b:Lcom/umeng/message/proguard/ad;

    .line 52
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/umeng/message/proguard/ae;->e:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/umeng/message/proguard/ae;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/umeng/message/proguard/ae;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/ae;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 42
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/ae;->e:Z

    .line 43
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 65
    iget-object v0, p0, Lcom/umeng/message/proguard/ae;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/umeng/message/proguard/ae;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 69
    :cond_0
    if-eqz p2, :cond_1

    .line 70
    const-string v0, "UTCrashHandler"

    const-string v1, "Caught Exception By UTCrashHandler.Please see log as follows!"

    invoke-static {v2, v0, v1}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    :cond_1
    invoke-static {p2}, Lcom/umeng/message/proguard/af;->a(Ljava/lang/Throwable;)Lcom/umeng/message/proguard/af$a;

    move-result-object v4

    .line 78
    if-eqz v4, :cond_3

    iget-object v0, v4, Lcom/umeng/message/proguard/af$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/umeng/message/proguard/af$a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/umeng/message/proguard/af$a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/umeng/message/proguard/ae;->b:Lcom/umeng/message/proguard/ad;

    if-eqz v0, :cond_5

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/ae;->b:Lcom/umeng/message/proguard/ad;

    invoke-interface {v0, p1, p2}, Lcom/umeng/message/proguard/ad;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 92
    :goto_0
    if-nez v6, :cond_2

    .line 93
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 96
    :cond_2
    const-string v0, "StackTrace"

    invoke-virtual {v4}, Lcom/umeng/message/proguard/af$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/umeng/message/proguard/ay;

    const-string v1, "UT"

    invoke-virtual {v4}, Lcom/umeng/message/proguard/af$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/umeng/message/proguard/af$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lcom/umeng/message/proguard/ay;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    const-string v1, "_sls"

    const-string v3, "yes"

    invoke-virtual {v0, v1, v3}, Lcom/umeng/message/proguard/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/o$b;

    .line 106
    invoke-static {}, Lcom/umeng/message/proguard/m;->a()Lcom/umeng/message/proguard/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/m;->b()Lcom/umeng/message/proguard/r;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_6

    .line 108
    invoke-virtual {v0}, Lcom/umeng/message/proguard/ay;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/r;->a(Ljava/util/Map;)V

    .line 116
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/umeng/message/proguard/ae;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/umeng/message/proguard/ae;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 119
    :cond_4
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    move-object v6, v5

    goto :goto_0

    .line 110
    :cond_6
    const-string v0, "Record crash stacktrace error"

    const-string v1, "Fatal Error,must call setRequestAuthentication method first."

    invoke-static {v2, v0, v1}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
