.class public final Lcom/umeng/message/proguard/aK;
.super Ljava/lang/Object;
.source "AgooLog.java"


# static fields
.field private static volatile a:Lcom/umeng/message/proguard/aL; = null

.field private static final b:Ljava/lang/String; = "app_debug"

.field private static final c:Ljava/lang/String; = "app_log_to_file"

.field private static final d:Ljava/lang/String; = "AppStore"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 17
    sget-object v2, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    if-nez v2, :cond_2

    .line 19
    :try_start_0
    const-string v2, "AppStore"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 22
    const-string v3, "app_debug"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/umeng/message/proguard/aK;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 24
    :cond_1
    const-string v1, "app_log_to_file"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 26
    new-instance v2, Lcom/umeng/message/proguard/aM;

    invoke-direct {v2, v0, v1}, Lcom/umeng/message/proguard/aM;-><init>(ZZ)V

    sput-object v2, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_2
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v1, "AgooLog"

    const-string v2, "startlog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    invoke-interface {v0, p0, p1}, Lcom/umeng/message/proguard/aL;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    invoke-interface {v0, p0, p1, p2}, Lcom/umeng/message/proguard/aL;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    invoke-interface {v0, p0, p1}, Lcom/umeng/message/proguard/aL;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    invoke-interface {v0, p0, p1}, Lcom/umeng/message/proguard/aL;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    invoke-interface {v0, p0, p1, p2}, Lcom/umeng/message/proguard/aL;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".BuildConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    const-string v2, "DEBUG"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 40
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 43
    :goto_0
    return v0

    .line 41
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    invoke-interface {v0, p0, p1}, Lcom/umeng/message/proguard/aL;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    invoke-interface {v0, p0, p1, p2}, Lcom/umeng/message/proguard/aL;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    invoke-interface {v0, p0, p1}, Lcom/umeng/message/proguard/aL;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    invoke-interface {v0, p0, p1, p2}, Lcom/umeng/message/proguard/aL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    invoke-interface {v0, p0, p1}, Lcom/umeng/message/proguard/aL;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/umeng/message/proguard/aK;->a:Lcom/umeng/message/proguard/aL;

    invoke-interface {v0, p0, p1, p2}, Lcom/umeng/message/proguard/aL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
