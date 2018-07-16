.class Lcom/smalife/MyApplication$1;
.super Lcom/umeng/message/UmengMessageHandler;
.source "MyApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/MyApplication;->umengInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/MyApplication;


# direct methods
.method constructor <init>(Lcom/smalife/MyApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/MyApplication$1;->this$0:Lcom/smalife/MyApplication;

    .line 598
    invoke-direct {p0}, Lcom/umeng/message/UmengMessageHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/smalife/MyApplication$1;)Lcom/smalife/MyApplication;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/smalife/MyApplication$1;->this$0:Lcom/smalife/MyApplication;

    return-object v0
.end method


# virtual methods
.method public dealWithCustomMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Lcom/umeng/message/entity/UMessage;

    .prologue
    .line 602
    const-string v0, "dealWithCustomMessage = "

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 603
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/smalife/MyApplication$1;->this$0:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/smalife/MyApplication$1$1;

    invoke-direct {v1, p0, p2}, Lcom/smalife/MyApplication$1$1;-><init>(Lcom/smalife/MyApplication$1;Lcom/umeng/message/entity/UMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 610
    return-void
.end method

.method public getNotification(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/app/Notification;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Lcom/umeng/message/entity/UMessage;

    .prologue
    .line 614
    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 615
    invoke-super {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getNotification(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
