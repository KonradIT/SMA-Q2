.class public Lorg/android/du/DuSdk;
.super Ljava/lang/Object;
.source "DuSdk.java"


# static fields
.field private static final AGOO_COMMAND_LOADUPDATEJAR:Ljava/lang/String; = "loadUpdateJar"

.field private static final TAG:Ljava/lang/String; = "DuSdk"

.field private static final className:Ljava/lang/String; = "org.android.agoo.impl.UpdateService"

.field private static final classPrefix:Ljava/lang/String; = "update."

.field static maps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/android/du/Update;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/android/du/DuSdk;->maps:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkUpdateJar(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 76
    .line 81
    :try_start_0
    const-string v0, "push"

    invoke-static {p0, v0}, Lcom/umeng/message/proguard/bt;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-static {v2, p0}, Lcom/umeng/message/proguard/bv;->a(Ljava/io/File;Landroid/content/Context;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    move v2, v0

    .line 89
    :goto_0
    :try_start_1
    const-string v0, "update.org.android.agoo.impl.UpdateService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/IUpdateService;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    :goto_1
    if-nez v0, :cond_0

    .line 94
    :try_start_2
    const-string v0, "org.android.agoo.impl.UpdateService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/IUpdateService;

    .line 96
    :cond_0
    const-string v3, "push"

    invoke-static {p0, v3}, Lcom/umeng/message/proguard/bt;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/android/agoo/IUpdateService;->checkUpdateJar(ILjava/lang/String;)Z

    move-result v0

    .line 97
    const-string v2, "DuSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUpdateJar is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_2
    return v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v0, "org.android.agoo.impl.UpdateService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/IUpdateService;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    move v0, v1

    .line 100
    goto :goto_2

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static destroy()V
    .locals 3

    .prologue
    .line 108
    :try_start_0
    sget-object v0, Lorg/android/du/DuSdk;->maps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v1, "DuSdk"

    const-string v2, "destroy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized getUpdate(Landroid/content/Context;Ljava/lang/String;)Lorg/android/du/Update;
    .locals 6

    .prologue
    .line 37
    const-class v2, Lorg/android/du/DuSdk;

    monitor-enter v2

    const/4 v1, 0x0

    .line 39
    :try_start_0
    sget-object v0, Lorg/android/du/DuSdk;->maps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    sget-object v0, Lorg/android/du/DuSdk;->maps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/du/Update;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 41
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    :try_start_1
    invoke-static {p0}, Lorg/android/du/DuSdk;->checkUpdateJar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Lorg/android/du/Update;

    invoke-direct {v0, p0, p1}, Lorg/android/du/Update;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    sget-object v1, Lorg/android/du/DuSdk;->maps:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "loadUpdateJar"

    invoke-static {p0, v1}, Lorg/android/agoo/intent/IntentUtil;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    :goto_1
    :try_start_3
    const-string v3, "DuSdk"

    const-string v4, "getUpdate"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 50
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static setting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public static unInit(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    const-string v0, "DuSdk"

    const-string v1, "unInit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lorg/android/du/DuSdk;->maps:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "DuSdk"

    const-string v1, "unInit success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lorg/android/du/DuSdk;->maps:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "DuSdk"

    const-string v2, "unInit"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
