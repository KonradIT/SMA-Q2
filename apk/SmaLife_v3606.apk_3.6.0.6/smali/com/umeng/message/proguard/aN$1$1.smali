.class Lcom/umeng/message/proguard/aN$1$1;
.super Ljava/lang/Object;
.source "AbsMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/proguard/aN$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/umeng/message/proguard/aN$1;


# direct methods
.method constructor <init>(Lcom/umeng/message/proguard/aN$1;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/umeng/message/proguard/aN$1$1;->b:Lcom/umeng/message/proguard/aN$1;

    iput-object p2, p0, Lcom/umeng/message/proguard/aN$1$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/umeng/message/proguard/aN$1$1;->b:Lcom/umeng/message/proguard/aN$1;

    iget-object v0, v0, Lcom/umeng/message/proguard/aN$1;->a:Lcom/umeng/message/proguard/aN;

    invoke-static {v0}, Lcom/umeng/message/proguard/aN;->a(Lcom/umeng/message/proguard/aN;)Lcom/umeng/message/proguard/aN$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/umeng/message/proguard/aN$1$1;->b:Lcom/umeng/message/proguard/aN$1;

    iget-object v0, v0, Lcom/umeng/message/proguard/aN$1;->a:Lcom/umeng/message/proguard/aN;

    invoke-static {v0}, Lcom/umeng/message/proguard/aN;->a(Lcom/umeng/message/proguard/aN;)Lcom/umeng/message/proguard/aN$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aN$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/umeng/message/proguard/aN$1$1;->b:Lcom/umeng/message/proguard/aN$1;

    iget-object v1, v1, Lcom/umeng/message/proguard/aN$1;->a:Lcom/umeng/message/proguard/aN;

    invoke-static {v1}, Lcom/umeng/message/proguard/aN;->a(Lcom/umeng/message/proguard/aN;)Lcom/umeng/message/proguard/aN$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/umeng/message/proguard/aN$1$1;->a:Landroid/content/Intent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lcom/umeng/message/proguard/aN$1$1;->b:Lcom/umeng/message/proguard/aN$1;

    iget-object v1, v1, Lcom/umeng/message/proguard/aN$1;->a:Lcom/umeng/message/proguard/aN;

    invoke-static {v1}, Lcom/umeng/message/proguard/aN;->a(Lcom/umeng/message/proguard/aN;)Lcom/umeng/message/proguard/aN$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/aN$a;->sendMessage(Landroid/os/Message;)Z

    .line 241
    :cond_0
    return-void
.end method
