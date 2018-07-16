.class final Lcom/igexin/push/core/p;
.super Lcom/igexin/sdk/aidl/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/sdk/aidl/c;-><init>()V

    return-void
.end method


# virtual methods
.method public extFunction([B)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isStarted(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/igexin/push/core/b/e;->a()Lcom/igexin/push/core/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/b/c;->a()Lcom/igexin/push/core/b/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/b/i;->c:Lcom/igexin/push/core/b/i;

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/b/c;->a(Ljava/lang/String;Lcom/igexin/push/core/b/i;)I

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v1, Lcom/igexin/push/core/g;->l:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onASNLConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 1

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->g()Lcom/igexin/push/e/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/igexin/push/e/c;->a(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onASNLNetworkConnected()I
    .locals 1

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/e/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/e/j;->b()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onASNLNetworkDisconnected()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/e/j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/e/j;->b(Z)V

    goto :goto_0
.end method

.method public onPSNLConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 1

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->g()Lcom/igexin/push/e/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/push/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public receiveToPSNL(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/e/j;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->g()Lcom/igexin/push/e/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/igexin/push/e/c;->b(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    goto :goto_0
.end method

.method public sendByASNL(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/e/j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->g()Lcom/igexin/push/e/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/igexin/push/e/c;->a(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    goto :goto_0
.end method

.method public setSilentTime(IILjava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/igexin/push/core/b/e;->a()Lcom/igexin/push/core/b/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/igexin/push/core/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/b/c;->a()Lcom/igexin/push/core/b/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/b/i;->d:Lcom/igexin/push/core/b/i;

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/b/c;->a(Ljava/lang/String;Lcom/igexin/push/core/b/i;)I

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v2, Lcom/igexin/push/a/k;->o:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lcom/igexin/push/core/a/f;->a(IILjava/lang/String;)V

    :cond_0
    return v1
.end method

.method public startService(Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Lcom/igexin/push/core/b/e;->a()Lcom/igexin/push/core/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/b/c;->a()Lcom/igexin/push/core/b/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/b/i;->a:Lcom/igexin/push/core/b/i;

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/b/c;->a(Ljava/lang/String;Lcom/igexin/push/core/b/i;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/igexin/push/core/f;->a(Z)Z

    sput-object v0, Lcom/igexin/push/core/g;->E:Ljava/lang/String;

    :cond_0
    return v1
.end method

.method public stopService(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/igexin/push/core/b/e;->a()Lcom/igexin/push/core/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/b/c;->a()Lcom/igexin/push/core/b/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/b/i;->b:Lcom/igexin/push/core/b/i;

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/b/c;->a(Ljava/lang/String;Lcom/igexin/push/core/b/i;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/igexin/push/core/f;->a(Ljava/lang/String;)Z

    :cond_0
    return v1
.end method
