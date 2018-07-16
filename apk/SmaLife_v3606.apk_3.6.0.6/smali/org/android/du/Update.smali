.class public Lorg/android/du/Update;
.super Ljava/lang/Object;
.source "Update.java"


# static fields
.field public static final ACTION_DU_UPDATE_SUCCESS:Ljava/lang/String; = "com.taobao.du.update"


# instance fields
.field private mClassLoaderEngine:Lcom/umeng/message/proguard/bp;

.field private mComponentId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInvokeUtil:Lcom/umeng/message/proguard/bu;

.field private mLoadclassSuccess:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lorg/android/du/Update;->mComponentId:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lorg/android/du/Update;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Lorg/android/du/Update;->loadClass(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/android/du/Update;->mLoadclassSuccess:Z

    .line 41
    return-void
.end method

.method private loadClass(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 148
    :try_start_0
    new-instance v0, Lcom/umeng/message/proguard/bp;

    iget-object v1, p0, Lorg/android/du/Update;->mComponentId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/umeng/message/proguard/bp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/android/du/Update;->mClassLoaderEngine:Lcom/umeng/message/proguard/bp;

    .line 149
    new-instance v0, Lcom/umeng/message/proguard/bu;

    iget-object v1, p0, Lorg/android/du/Update;->mClassLoaderEngine:Lcom/umeng/message/proguard/bp;

    invoke-virtual {v1}, Lcom/umeng/message/proguard/bp;->c()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/message/proguard/bu;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lorg/android/du/Update;->mInvokeUtil:Lcom/umeng/message/proguard/bu;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    iget-object v0, p0, Lorg/android/du/Update;->mClassLoaderEngine:Lcom/umeng/message/proguard/bp;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/bp;->a()Z

    move-result v0

    :goto_0
    return v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    invoke-static {}, Lorg/android/agoo/ut/UTFactroy;->getInstance()Lorg/android/agoo/ut/UTFactroy;

    move-result-object v0

    iget-object v1, p0, Lorg/android/du/Update;->mContext:Landroid/content/Context;

    const-string v2, "getBean"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ERROR_EVENT_GETBEAN_ERROR"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "cls param cla==null"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/android/agoo/ut/UTFactroy;->commitEvent(Landroid/content/Context;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/android/du/Update;->mClassLoaderEngine:Lcom/umeng/message/proguard/bp;

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/bp;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lorg/android/du/Update;->mClassLoaderEngine:Lcom/umeng/message/proguard/bp;

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/bp;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lorg/android/du/Update;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/du/Update;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getBean(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lorg/android/du/Update;->mInvokeUtil:Lcom/umeng/message/proguard/bu;

    iget-object v1, p0, Lorg/android/du/Update;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/umeng/message/proguard/bu;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-boolean v0, p0, Lorg/android/du/Update;->mLoadclassSuccess:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/android/du/Update;->mInvokeUtil:Lcom/umeng/message/proguard/bu;

    iget-object v1, p0, Lorg/android/du/Update;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, v2, v2}, Lcom/umeng/message/proguard/bu;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/android/du/Update;->mInvokeUtil:Lcom/umeng/message/proguard/bu;

    iget-object v1, p0, Lorg/android/du/Update;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/umeng/message/proguard/bu;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/android/du/Update;->mInvokeUtil:Lcom/umeng/message/proguard/bu;

    iget-object v1, p0, Lorg/android/du/Update;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/umeng/message/proguard/bu;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/android/du/Update;->mClassLoaderEngine:Lcom/umeng/message/proguard/bp;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/android/du/Update;->mClassLoaderEngine:Lcom/umeng/message/proguard/bp;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/bp;->c()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public invokeClassMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/android/du/Update;->mInvokeUtil:Lcom/umeng/message/proguard/bu;

    iget-object v1, p0, Lorg/android/du/Update;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/message/proguard/bu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/android/du/Update;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/umeng/message/proguard/bu;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ismLoadclassSuccess()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/android/du/Update;->mLoadclassSuccess:Z

    return v0
.end method

.method public setmLoadclassSuccess(Z)V
    .locals 0

    .prologue
    .line 159
    iput-boolean p1, p0, Lorg/android/du/Update;->mLoadclassSuccess:Z

    .line 160
    return-void
.end method
