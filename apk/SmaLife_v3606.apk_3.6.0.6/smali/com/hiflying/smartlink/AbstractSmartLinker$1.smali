.class Lcom/hiflying/smartlink/AbstractSmartLinker$1;
.super Landroid/os/Handler;
.source "AbstractSmartLinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiflying/smartlink/AbstractSmartLinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;


# direct methods
.method constructor <init>(Lcom/hiflying/smartlink/AbstractSmartLinker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$1;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$1;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iget-object v0, v0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mOnSmartLinkListener:Lcom/hiflying/smartlink/OnSmartLinkListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$1;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iget-object v1, v0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mOnSmartLinkListener:Lcom/hiflying/smartlink/OnSmartLinkListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hiflying/smartlink/SmartLinkedModule;

    invoke-interface {v1, v0}, Lcom/hiflying/smartlink/OnSmartLinkListener;->onLinked(Lcom/hiflying/smartlink/SmartLinkedModule;)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$1;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iget-object v0, v0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mOnSmartLinkListener:Lcom/hiflying/smartlink/OnSmartLinkListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$1;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    invoke-static {v0}, Lcom/hiflying/smartlink/AbstractSmartLinker;->access$0(Lcom/hiflying/smartlink/AbstractSmartLinker;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$1;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iget-object v0, v0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mOnSmartLinkListener:Lcom/hiflying/smartlink/OnSmartLinkListener;

    invoke-interface {v0}, Lcom/hiflying/smartlink/OnSmartLinkListener;->onTimeOut()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$1;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iget-object v0, v0, Lcom/hiflying/smartlink/AbstractSmartLinker;->mOnSmartLinkListener:Lcom/hiflying/smartlink/OnSmartLinkListener;

    invoke-interface {v0}, Lcom/hiflying/smartlink/OnSmartLinkListener;->onCompleted()V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
